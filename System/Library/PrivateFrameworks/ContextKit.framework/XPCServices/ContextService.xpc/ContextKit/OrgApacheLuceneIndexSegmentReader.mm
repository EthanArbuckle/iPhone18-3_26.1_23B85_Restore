@interface OrgApacheLuceneIndexSegmentReader
- (id)description;
- (id)directory;
- (id)getFieldsReader;
- (id)getNormsReader;
- (id)getPostingsReader;
- (id)getSegmentName;
- (id)getTermVectorsReader;
- (int)maxDoc;
- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3;
- (void)dealloc;
- (void)doClose;
- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3;
@end

@implementation OrgApacheLuceneIndexSegmentReader

- (void)doClose
{
  core = self->core_;
  if (!core)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexSegmentCoreReaders *)core decRef];
  v9.receiver = self;
  v9.super_class = OrgApacheLuceneIndexSegmentReader;
  [(OrgApacheLuceneIndexCodecReader *)&v9 doClose];
  docValuesProducer = self->docValuesProducer_;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    segDocValues = self->segDocValues_;
    if (segDocValues)
    {
      v6 = self->docValuesProducer_;
      objc_opt_class();
      if (v6)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        isa = v6[3].super.isa;
        goto LABEL_10;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!self->docValuesProducer_)
  {
    return;
  }

  segDocValues = self->segDocValues_;
  if (!segDocValues)
  {
    goto LABEL_13;
  }

  v8 = JavaLangLong_valueOfWithLong_(-1);
  isa = JavaUtilCollections_singletonListWithId_(v8);
LABEL_10:
  [(OrgApacheLuceneIndexSegmentDocValues *)segDocValues decRefWithJavaUtilList:isa];
}

- (int)maxDoc
{
  si = self->si_;
  if (!si || (info = si->info_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSegmentInfo *)info maxDoc];
}

- (id)getTermVectorsReader
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core || (termVectorsLocal = core->termVectorsLocal_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilCloseableThreadLocal *)termVectorsLocal get];
}

- (id)getFieldsReader
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core || (fieldsReaderLocal = core->fieldsReaderLocal_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilCloseableThreadLocal *)fieldsReaderLocal get];
}

- (id)getNormsReader
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core)
  {
    JreThrowNullPointerException();
  }

  return core->normsProducer_;
}

- (id)getPostingsReader
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core)
  {
    JreThrowNullPointerException();
  }

  return core->fields_;
}

- (id)description
{
  si = self->si_;
  if (!si || (info = si->info_) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneIndexSegmentInfo *)info maxDoc];
  numDocs = self->numDocs_;
  v7 = v5 - (numDocs + [(OrgApacheLuceneIndexSegmentCommitInfo *)self->si_ getDelCount]);

  return [(OrgApacheLuceneIndexSegmentCommitInfo *)si toStringWithInt:v7];
}

- (id)getSegmentName
{
  si = self->si_;
  if (!si || (info = si->info_) == 0)
  {
    JreThrowNullPointerException();
  }

  return info->name_;
}

- (id)directory
{
  si = self->si_;
  if (!si || (info = si->info_) == 0)
  {
    JreThrowNullPointerException();
  }

  return info->dir_;
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexSegmentCoreReaders *)core addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:a3];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  core = self->core_;
  if (!core)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexSegmentCoreReaders *)core removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentReader;
  [(OrgApacheLuceneIndexCodecReader *)&v3 dealloc];
}

@end