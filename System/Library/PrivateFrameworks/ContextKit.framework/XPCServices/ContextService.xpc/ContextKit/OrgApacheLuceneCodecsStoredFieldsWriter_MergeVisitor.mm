@interface OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor
- (id)fieldType;
- (id)name;
- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withByteArray:(id)a4;
- (void)dealloc;
- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withDouble:(double)a4;
- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withFloat:(float)a4;
- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withInt:(int)a4;
- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withLong:(int64_t)a4;
- (void)resetWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withByteArray:(id)a4;
@end

@implementation OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withByteArray:(id)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(a4);
  JreStrongAssignAndConsume(&self->binaryValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withByteArray:(id)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  JreStrongAssign(&self->stringValue_, [NSString stringWithBytes:a4 charset:OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_]);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withInt:(int)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  v6 = JavaLangInteger_valueOfWithInt_(a4);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withLong:(int64_t)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  v6 = JavaLangLong_valueOfWithLong_(a4);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withFloat:(float)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  v6 = JavaLangFloat_valueOfWithFloat_(a4);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withDouble:(double)a4
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:a3];
  v6 = JavaLangDouble_valueOfWithDouble_(a4);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000708E8();
  }

  return OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values_[0];
}

- (id)name
{
  currentField = self->currentField_;
  if (!currentField)
  {
    JreThrowNullPointerException();
  }

  return currentField->name_;
}

- (id)fieldType
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentStoredField__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000D4F14();
  }

  return OrgApacheLuceneDocumentStoredField_TYPE_;
}

- (void)resetWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  remapper = self->remapper_;
  if (remapper)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    v5 = [(OrgApacheLuceneIndexFieldInfos *)remapper fieldInfoWithNSString:*(a3 + 1)];
    p_currentField = &self->currentField_;
  }

  else
  {
    p_currentField = &self->currentField_;
    v5 = a3;
  }

  JreStrongAssign(p_currentField, v5);
  JreStrongAssign(&self->binaryValue_, 0);
  JreStrongAssign(&self->stringValue_, 0);

  JreStrongAssign(&self->numericValue_, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor;
  [(OrgApacheLuceneIndexStoredFieldVisitor *)&v3 dealloc];
}

@end