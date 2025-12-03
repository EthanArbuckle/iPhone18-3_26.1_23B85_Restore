@interface OrgApacheLuceneIndexMergePolicy
- (BOOL)isMergedWithOrgApacheLuceneIndexSegmentInfos:(id)infos withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer;
- (BOOL)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(id)infos withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer;
- (OrgApacheLuceneIndexMergePolicy)init;
- (OrgApacheLuceneIndexMergePolicy)initWithDouble:(double)double withLong:(int64_t)long;
- (int64_t)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer;
- (void)setMaxCFSSegmentSizeMBWithDouble:(double)double;
- (void)setNoCFSRatioWithDouble:(double)double;
@end

@implementation OrgApacheLuceneIndexMergePolicy

- (OrgApacheLuceneIndexMergePolicy)init
{
  self->noCFSRatio_ = 1.0;
  self->maxCFSSegmentSize_ = 0x7FFFFFFFFFFFFFFFLL;
  return self;
}

- (OrgApacheLuceneIndexMergePolicy)initWithDouble:(double)double withLong:(int64_t)long
{
  self->noCFSRatio_ = double;
  self->maxCFSSegmentSize_ = long;
  return self;
}

- (BOOL)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(id)infos withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer
{
  if (self->noCFSRatio_ == 0.0)
  {
    return 0;
  }

  v8 = [(OrgApacheLuceneIndexMergePolicy *)self sizeWithOrgApacheLuceneIndexSegmentCommitInfo:info withOrgApacheLuceneIndexIndexWriter:writer];
  if (v8 > self->maxCFSSegmentSize_)
  {
    return 0;
  }

  if (self->noCFSRatio_ >= 1.0)
  {
    return 1;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (!infos)
  {
    JreThrowNullPointerException();
  }

  v10 = v8;
  v11 = [infos countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(infos);
        }

        v13 += [(OrgApacheLuceneIndexMergePolicy *)self sizeWithOrgApacheLuceneIndexSegmentCommitInfo:*(*(&v17 + 1) + 8 * i) withOrgApacheLuceneIndexIndexWriter:writer, v17];
      }

      v12 = [infos countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
    v16 = v13;
  }

  else
  {
    v16 = 0.0;
  }

  return self->noCFSRatio_ * v16 >= v10;
}

- (int64_t)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer
{
  if (!info || (v6 = [info sizeInBytes], !writer) || (v7 = v6, v8 = objc_msgSend(writer, "numDeletedDocsWithOrgApacheLuceneIndexSegmentCommitInfo:", info), (v9 = *(info + 1)) == 0))
  {
    JreThrowNullPointerException();
  }

  if ([v9 maxDoc] < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = (v8 / [*(info + 1) maxDoc]);
  }

  if ([*(info + 1) maxDoc] >= 1)
  {
    v11 = (1.0 - v10) * v7;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 < 0.0)
    {
      v12 = 0x8000000000000000;
    }

    if (v11 == 0x8000000000000000)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return v7;
}

- (BOOL)isMergedWithOrgApacheLuceneIndexSegmentInfos:(id)infos withOrgApacheLuceneIndexSegmentCommitInfo:(id)info withOrgApacheLuceneIndexIndexWriter:(id)writer
{
  if (!writer)
  {
    goto LABEL_8;
  }

  if ([writer numDeletedDocsWithOrgApacheLuceneIndexSegmentCommitInfo:info] > 0)
  {
    return 0;
  }

  if (!info || (v9 = *(info + 1)) == 0)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v10 = *(v9 + 16);
  if (v10 != [writer getDirectory])
  {
    return 0;
  }

  v12 = [(OrgApacheLuceneIndexMergePolicy *)self useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:infos withOrgApacheLuceneIndexSegmentCommitInfo:info withOrgApacheLuceneIndexIndexWriter:writer];
  return v12 ^ [*(info + 1) getUseCompoundFile] ^ 1;
}

- (void)setNoCFSRatioWithDouble:(double)double
{
  if (double < 0.0 || double > 1.0)
  {
    v10 = JreStrcat("$D", a2, v3, v4, v5, v6, v7, v8, @"noCFSRatio must be 0.0 to 1.0 inclusive; got ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  self->noCFSRatio_ = double;
}

- (void)setMaxCFSSegmentSizeMBWithDouble:(double)double
{
  if (double < 0.0)
  {
    v11 = JreStrcat("$DC", a2, v3, v4, v5, v6, v7, v8, @"maxCFSSegmentSizeMB must be >=0 (got ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  v9 = double * 1048576.0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 <= 9.22337204e18)
  {
    if (v9 < 0.0)
    {
      v10 = 0x8000000000000000;
    }

    if (v9 != 0x8000000000000000)
    {
      v10 = v9;
    }
  }

  self->maxCFSSegmentSize_ = v10;
}

@end