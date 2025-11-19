@interface OrgApacheLuceneIndexMergePolicy
- (BOOL)isMergedWithOrgApacheLuceneIndexSegmentInfos:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneIndexIndexWriter:(id)a5;
- (BOOL)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneIndexIndexWriter:(id)a5;
- (OrgApacheLuceneIndexMergePolicy)init;
- (OrgApacheLuceneIndexMergePolicy)initWithDouble:(double)a3 withLong:(int64_t)a4;
- (int64_t)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withOrgApacheLuceneIndexIndexWriter:(id)a4;
- (void)setMaxCFSSegmentSizeMBWithDouble:(double)a3;
- (void)setNoCFSRatioWithDouble:(double)a3;
@end

@implementation OrgApacheLuceneIndexMergePolicy

- (OrgApacheLuceneIndexMergePolicy)init
{
  self->noCFSRatio_ = 1.0;
  self->maxCFSSegmentSize_ = 0x7FFFFFFFFFFFFFFFLL;
  return self;
}

- (OrgApacheLuceneIndexMergePolicy)initWithDouble:(double)a3 withLong:(int64_t)a4
{
  self->noCFSRatio_ = a3;
  self->maxCFSSegmentSize_ = a4;
  return self;
}

- (BOOL)useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneIndexIndexWriter:(id)a5
{
  if (self->noCFSRatio_ == 0.0)
  {
    return 0;
  }

  v8 = [(OrgApacheLuceneIndexMergePolicy *)self sizeWithOrgApacheLuceneIndexSegmentCommitInfo:a4 withOrgApacheLuceneIndexIndexWriter:a5];
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
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v10 = v8;
  v11 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        v13 += [(OrgApacheLuceneIndexMergePolicy *)self sizeWithOrgApacheLuceneIndexSegmentCommitInfo:*(*(&v17 + 1) + 8 * i) withOrgApacheLuceneIndexIndexWriter:a5, v17];
      }

      v12 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (int64_t)sizeWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withOrgApacheLuceneIndexIndexWriter:(id)a4
{
  if (!a3 || (v6 = [a3 sizeInBytes], !a4) || (v7 = v6, v8 = objc_msgSend(a4, "numDeletedDocsWithOrgApacheLuceneIndexSegmentCommitInfo:", a3), (v9 = *(a3 + 1)) == 0))
  {
    JreThrowNullPointerException();
  }

  if ([v9 maxDoc] < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = (v8 / [*(a3 + 1) maxDoc]);
  }

  if ([*(a3 + 1) maxDoc] >= 1)
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

- (BOOL)isMergedWithOrgApacheLuceneIndexSegmentInfos:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneIndexIndexWriter:(id)a5
{
  if (!a5)
  {
    goto LABEL_8;
  }

  if ([a5 numDeletedDocsWithOrgApacheLuceneIndexSegmentCommitInfo:a4] > 0)
  {
    return 0;
  }

  if (!a4 || (v9 = *(a4 + 1)) == 0)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v10 = *(v9 + 16);
  if (v10 != [a5 getDirectory])
  {
    return 0;
  }

  v12 = [(OrgApacheLuceneIndexMergePolicy *)self useCompoundFileWithOrgApacheLuceneIndexSegmentInfos:a3 withOrgApacheLuceneIndexSegmentCommitInfo:a4 withOrgApacheLuceneIndexIndexWriter:a5];
  return v12 ^ [*(a4 + 1) getUseCompoundFile] ^ 1;
}

- (void)setNoCFSRatioWithDouble:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    v10 = JreStrcat("$D", a2, v3, v4, v5, v6, v7, v8, @"noCFSRatio must be 0.0 to 1.0 inclusive; got ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  self->noCFSRatio_ = a3;
}

- (void)setMaxCFSSegmentSizeMBWithDouble:(double)a3
{
  if (a3 < 0.0)
  {
    v11 = JreStrcat("$DC", a2, v3, v4, v5, v6, v7, v8, @"maxCFSSegmentSizeMB must be >=0 (got ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  v9 = a3 * 1048576.0;
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