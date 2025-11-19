@interface OrgApacheLuceneIndexSegmentInfo
- (BOOL)isEqual:(id)a3;
- (id)files;
- (id)getAttributeWithNSString:(id)a3;
- (id)getId;
- (id)namedForThisSegmentWithNSString:(id)a3;
- (id)putAttributeWithNSString:(id)a3 withNSString:(id)a4;
- (int)maxDoc;
- (unint64_t)hash;
- (void)addFileWithNSString:(id)a3;
- (void)addFilesWithJavaUtilCollection:(id)a3;
- (void)dealloc;
- (void)setCodecWithOrgApacheLuceneCodecsCodec:(id)a3;
- (void)setDiagnosticsWithJavaUtilMap:(id)a3;
- (void)setFilesWithJavaUtilCollection:(id)a3;
@end

@implementation OrgApacheLuceneIndexSegmentInfo

- (void)setDiagnosticsWithJavaUtilMap:(id)a3
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);

  JreStrongAssign(&self->diagnostics_, v4);
}

- (void)setCodecWithOrgApacheLuceneCodecsCodec:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"codec must be non-null");
    objc_exception_throw(v5);
  }

  p_codec = &self->codec_;

  JreStrongAssign(p_codec, a3);
}

- (int)maxDoc
{
  result = self->maxDoc_;
  if (result == -1)
  {
    v3 = new_JavaLangIllegalStateException_initWithNSString_(@"maxDoc isn't set yet");
    objc_exception_throw(v3);
  }

  return result;
}

- (id)files
{
  setFiles = self->setFiles_;
  if (!setFiles)
  {
    v5 = new_JavaLangIllegalStateException_initWithNSString_(@"files were not computed yet");
    objc_exception_throw(v5);
  }

  return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(setFiles);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (*(a3 + 2) != self->dir_)
  {
    return 0;
  }

  v6 = *(a3 + 1);
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  name = self->name_;

  return [v6 isEqual:name];
}

- (unint64_t)hash
{
  dir = self->dir_;
  if (!dir || (v4 = [(OrgApacheLuceneStoreDirectory *)dir hash], (name = self->name_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([(NSString *)name hash]+ v4);
}

- (id)getId
{
  result = self->id__;
  if (result)
  {
    return [result clone];
  }

  return result;
}

- (void)setFilesWithJavaUtilCollection:(id)a3
{
  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(&self->setFiles_, v5);

  [(OrgApacheLuceneIndexSegmentInfo *)self addFilesWithJavaUtilCollection:a3];
}

- (void)addFilesWithJavaUtilCollection:(id)a3
{
  sub_100093DF8(a3);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (!a3)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        setFiles = self->setFiles_;
        if (!setFiles)
        {
          goto LABEL_11;
        }

        [(JavaUtilSet *)setFiles addWithId:[(OrgApacheLuceneIndexSegmentInfo *)self namedForThisSegmentWithNSString:*(*(&v10 + 1) + 8 * i), v10]];
      }

      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addFileWithNSString:(id)a3
{
  v5 = JavaUtilCollections_singletonWithId_(a3);
  sub_100093DF8(v5);
  setFiles = self->setFiles_;
  if (!setFiles)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgApacheLuceneIndexSegmentInfo *)self namedForThisSegmentWithNSString:a3];

  [(JavaUtilSet *)setFiles addWithId:v7];
}

- (id)namedForThisSegmentWithNSString:(id)a3
{
  name = self->name_;
  OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(a3);
  return JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, name);
}

- (id)getAttributeWithNSString:(id)a3
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes getWithId:a3];
}

- (id)putAttributeWithNSString:(id)a3 withNSString:(id)a4
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes putWithId:a3 withId:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentInfo;
  [(OrgApacheLuceneIndexSegmentInfo *)&v3 dealloc];
}

@end