@interface OrgApacheLuceneIndexFilterLeafReader
- (id)description;
- (id)fields;
- (id)getBinaryDocValuesWithNSString:(id)string;
- (id)getDocsWithFieldWithNSString:(id)string;
- (id)getFieldInfos;
- (id)getLiveDocs;
- (id)getNormValuesWithNSString:(id)string;
- (id)getNumericDocValuesWithNSString:(id)string;
- (id)getSortedDocValuesWithNSString:(id)string;
- (id)getSortedNumericDocValuesWithNSString:(id)string;
- (id)getSortedSetDocValuesWithNSString:(id)string;
- (int)maxDoc;
- (int)numDocs;
- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener;
- (void)checkIntegrity;
- (void)dealloc;
- (void)doClose;
- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener
{
  in = self->in_;
  getCoreCacheKey = [(OrgApacheLuceneIndexIndexReader *)self getCoreCacheKey];
  v7 = self->in_;
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = sub_100097D60(listener, getCoreCacheKey, [(OrgApacheLuceneIndexIndexReader *)v7 getCoreCacheKey]);

  [(OrgApacheLuceneIndexLeafReader *)in addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:v8];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener
{
  in = self->in_;
  getCoreCacheKey = [(OrgApacheLuceneIndexIndexReader *)self getCoreCacheKey];
  v7 = self->in_;
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = sub_100097D60(listener, getCoreCacheKey, [(OrgApacheLuceneIndexIndexReader *)v7 getCoreCacheKey]);

  [(OrgApacheLuceneIndexLeafReader *)in removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:v8];
}

- (id)getLiveDocs
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getLiveDocs];
}

- (id)getFieldInfos
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getFieldInfos];
}

- (int)numDocs
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in numDocs];
}

- (int)maxDoc
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in maxDoc];
}

- (void)doClose
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexIndexReader *)in close];
}

- (id)fields
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in fields];
}

- (id)description
{
  v3 = objc_autorelease(new_JavaLangStringBuilder_initWithNSString_(@"FilterLeafReader("));
  [(JavaLangStringBuilder *)v3 appendWithId:self->in_];
  [(JavaLangStringBuilder *)v3 appendWithChar:41];

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)getNumericDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getNumericDocValuesWithNSString:string];
}

- (id)getBinaryDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getBinaryDocValuesWithNSString:string];
}

- (id)getSortedDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getSortedDocValuesWithNSString:string];
}

- (id)getSortedNumericDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getSortedNumericDocValuesWithNSString:string];
}

- (id)getSortedSetDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getSortedSetDocValuesWithNSString:string];
}

- (id)getNormValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getNormValuesWithNSString:string];
}

- (id)getDocsWithFieldWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexLeafReader *)in getDocsWithFieldWithNSString:string];
}

- (void)checkIntegrity
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexLeafReader *)in checkIntegrity];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader;
  [(OrgApacheLuceneIndexLeafReader *)&v3 dealloc];
}

@end