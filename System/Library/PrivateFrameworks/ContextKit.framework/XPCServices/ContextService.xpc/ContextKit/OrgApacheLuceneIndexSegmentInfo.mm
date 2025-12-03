@interface OrgApacheLuceneIndexSegmentInfo
- (BOOL)isEqual:(id)equal;
- (id)files;
- (id)getAttributeWithNSString:(id)string;
- (id)getId;
- (id)namedForThisSegmentWithNSString:(id)string;
- (id)putAttributeWithNSString:(id)string withNSString:(id)sString;
- (int)maxDoc;
- (unint64_t)hash;
- (void)addFileWithNSString:(id)string;
- (void)addFilesWithJavaUtilCollection:(id)collection;
- (void)dealloc;
- (void)setCodecWithOrgApacheLuceneCodecsCodec:(id)codec;
- (void)setDiagnosticsWithJavaUtilMap:(id)map;
- (void)setFilesWithJavaUtilCollection:(id)collection;
@end

@implementation OrgApacheLuceneIndexSegmentInfo

- (void)setDiagnosticsWithJavaUtilMap:(id)map
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(map);

  JreStrongAssign(&self->diagnostics_, v4);
}

- (void)setCodecWithOrgApacheLuceneCodecsCodec:(id)codec
{
  if (!codec)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"codec must be non-null");
    objc_exception_throw(v5);
  }

  p_codec = &self->codec_;

  JreStrongAssign(p_codec, codec);
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (*(equal + 2) != self->dir_)
  {
    return 0;
  }

  v6 = *(equal + 1);
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

- (void)setFilesWithJavaUtilCollection:(id)collection
{
  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(&self->setFiles_, v5);

  [(OrgApacheLuceneIndexSegmentInfo *)self addFilesWithJavaUtilCollection:collection];
}

- (void)addFilesWithJavaUtilCollection:(id)collection
{
  sub_100093DF8(collection);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (!collection)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = [collection countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(collection);
        }

        setFiles = self->setFiles_;
        if (!setFiles)
        {
          goto LABEL_11;
        }

        [(JavaUtilSet *)setFiles addWithId:[(OrgApacheLuceneIndexSegmentInfo *)self namedForThisSegmentWithNSString:*(*(&v10 + 1) + 8 * i), v10]];
      }

      v6 = [collection countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addFileWithNSString:(id)string
{
  v5 = JavaUtilCollections_singletonWithId_(string);
  sub_100093DF8(v5);
  setFiles = self->setFiles_;
  if (!setFiles)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgApacheLuceneIndexSegmentInfo *)self namedForThisSegmentWithNSString:string];

  [(JavaUtilSet *)setFiles addWithId:v7];
}

- (id)namedForThisSegmentWithNSString:(id)string
{
  name = self->name_;
  OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(string);
  return JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, name);
}

- (id)getAttributeWithNSString:(id)string
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes getWithId:string];
}

- (id)putAttributeWithNSString:(id)string withNSString:(id)sString
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes putWithId:string withId:sString];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentInfo;
  [(OrgApacheLuceneIndexSegmentInfo *)&v3 dealloc];
}

@end