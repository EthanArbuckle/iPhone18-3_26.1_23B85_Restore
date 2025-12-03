@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundReader
- (id)description;
- (id)listAll;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (int64_t)fileLengthWithNSString:(id)string;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50CompoundReader

- (void)close
{
  handle = self->handle_;
  v2 = [IOSObjectArray arrayWithObjects:&handle count:1 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v2);
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreDirectory *)self ensureOpen:string];
  v6 = OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(string);
  entries = self->entries_;
  if (!entries)
  {
    goto LABEL_7;
  }

  v8 = [(JavaUtilMap *)entries getWithId:v6];
  if (!v8)
  {
    [(JavaUtilMap *)self->entries_ keySet];
    v20 = JreStrcat("$$$$$@C", v13, v14, v15, v16, v17, v18, v19, @"No sub-file with id ");
    v21 = new_JavaIoFileNotFoundException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  if (!self->handle_)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v9 = v8[1];
  v10 = v8[2];
  handle = self->handle_;

  return [(OrgApacheLuceneStoreIndexInput *)handle sliceWithNSString:string withLong:v9 withLong:v10];
}

- (id)listAll
{
  [(OrgApacheLuceneStoreDirectory *)self ensureOpen];
  entries = self->entries_;
  if (!entries || (v4 = -[JavaUtilMap keySet](entries, "keySet")) == 0 || (v5 = [v4 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", -[JavaUtilMap size](self->entries_, "size"), NSString_class_())}]) == 0)
  {
    JreThrowNullPointerException();
  }

  v13 = v5;
  if (v5[2] >= 1)
  {
    v14 = 0;
    do
    {
      v17 = *&v13[2 * v14 + 6];
      v15 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, self->segmentName_);
      IOSObjectArray_Set(v13, v14++, v15);
    }

    while (v14 < v13[2]);
  }

  return v13;
}

- (int64_t)fileLengthWithNSString:(id)string
{
  [(OrgApacheLuceneStoreDirectory *)self ensureOpen];
  entries = self->entries_;
  if (!entries)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilMap *)entries getWithId:OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(string)];
  if (!v6)
  {
    v8 = new_JavaIoFileNotFoundException_initWithNSString_(string);
    objc_exception_throw(v8);
  }

  return v6[2];
}

- (id)description
{
  directory = self->directory_;
  segmentName = self->segmentName_;
  return JreStrcat("$$$@C", a2, v2, v3, v4, v5, v6, v7, @"CompoundFileDirectory(segment=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50CompoundReader;
  [(OrgApacheLuceneCodecsLucene50Lucene50CompoundReader *)&v3 dealloc];
}

@end