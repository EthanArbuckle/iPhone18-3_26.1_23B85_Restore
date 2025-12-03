@interface OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor
- (id)fieldType;
- (id)name;
- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array;
- (void)dealloc;
- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withDouble:(double)double;
- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withFloat:(float)float;
- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int;
- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withLong:(int64_t)long;
- (void)resetWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array;
@end

@implementation OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(array);
  JreStrongAssignAndConsume(&self->binaryValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  JreStrongAssign(&self->stringValue_, [NSString stringWithBytes:array charset:OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_]);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  v6 = JavaLangInteger_valueOfWithInt_(int);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withLong:(int64_t)long
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  v6 = JavaLangLong_valueOfWithLong_(long);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withFloat:(float)float
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  v6 = JavaLangFloat_valueOfWithFloat_(float);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withDouble:(double)double
{
  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self resetWithOrgApacheLuceneIndexFieldInfo:info];
  v6 = JavaLangDouble_valueOfWithDouble_(double);
  JreStrongAssign(&self->numericValue_, v6);

  [(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *)self write];
}

- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info
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

- (void)resetWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  remapper = self->remapper_;
  if (remapper)
  {
    if (!info)
    {
      JreThrowNullPointerException();
    }

    infoCopy = [(OrgApacheLuceneIndexFieldInfos *)remapper fieldInfoWithNSString:*(info + 1)];
    p_currentField = &self->currentField_;
  }

  else
  {
    p_currentField = &self->currentField_;
    infoCopy = info;
  }

  JreStrongAssign(p_currentField, infoCopy);
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