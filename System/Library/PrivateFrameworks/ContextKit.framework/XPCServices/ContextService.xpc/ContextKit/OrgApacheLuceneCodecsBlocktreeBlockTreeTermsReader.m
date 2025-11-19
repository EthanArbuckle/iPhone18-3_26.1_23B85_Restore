@interface OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader
+ (void)initialize;
- (id)brToStringWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)description;
- (id)getChildResources;
- (id)iterator;
- (id)termsWithNSString:(id)a3;
- (int)size;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader

- (void)close
{
  postingsReader = self->postingsReader_;
  v6[0] = self->termsIn_;
  v6[1] = postingsReader;
  v4 = [IOSObjectArray arrayWithObjects:v6 count:2 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v4);
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilTreeMap *)fields clear];
}

- (id)iterator
{
  fields = self->fields_;
  if (!fields || (v3 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([(JavaUtilTreeMap *)fields keySet])) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollections_UnmodifiableCollection *)v3 iterator];
}

- (id)termsWithNSString:(id)a3
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilTreeMap *)fields getWithId:a3];
}

- (int)size
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilTreeMap *)fields size];
}

- (id)brToStringWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    return @"null";
  }

  v3 = [a3 utf8ToString];
  return JreStrcat("$C@", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (int64_t)ramBytesUsed
{
  postingsReader = self->postingsReader_;
  if (!postingsReader || (v4 = [(OrgApacheLuceneCodecsPostingsReaderBase *)postingsReader ramBytesUsed], v14 = 0u, v15 = 0u, v16 = 0u, v17 = 0u, (fields = self->fields_) == 0) || (v6 = [(JavaUtilTreeMap *)fields values]) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_13;
        }

        v4 = &v4[[v12 ramBytesUsed]];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)getChildResources
{
  v3 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v3 addAllWithJavaUtilCollection:OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"field", self->fields_)];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"delegate", self->postingsReader_, v4, v5, v6, v7, v8, v9)];

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
}

- (void)checkIntegrity
{
  OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(self->termsIn_);
  postingsReader = self->postingsReader_;
  if (!postingsReader)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsPostingsReaderBase *)postingsReader checkIntegrity];
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader getClass](self "getClass")];
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilTreeMap *)fields size];
  postingsReader = self->postingsReader_;
  return JreStrcat("$$I$@C", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader;
  [(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    Singleton = OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
    JreStrongAssign(&OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_, Singleton);
    if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ getNoOutput]);
    atomic_store(1u, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized);
  }
}

@end