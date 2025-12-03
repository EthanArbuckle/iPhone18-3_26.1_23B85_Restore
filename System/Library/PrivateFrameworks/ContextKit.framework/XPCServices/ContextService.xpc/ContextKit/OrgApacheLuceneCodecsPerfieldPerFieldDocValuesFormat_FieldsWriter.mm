@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter
- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable;
- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable;
- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable
{
  v6 = sub_10008E644(self, info);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v6 addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable];
}

- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable
{
  v6 = sub_10008E644(self, info);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v6 addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable];
}

- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  v8 = sub_10008E644(self, info);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v8 addSortedFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable withJavaLangIterable:langIterable];
}

- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  v8 = sub_10008E644(self, info);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v8 addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable withJavaLangIterable:langIterable];
}

- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable
{
  v10 = sub_10008E644(self, info);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v10 addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable withJavaLangIterable:langIterable withJavaLangIterable:javaLangIterable];
}

- (void)close
{
  formats = self->formats_;
  if (!formats)
  {
    JreThrowNullPointerException();
  }

  values = [(JavaUtilMap *)formats values];

  OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(values);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter;
  [(OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter *)&v3 dealloc];
}

@end