@interface OrgApacheLuceneDocumentDocumentStoredFieldVisitor
- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array;
- (void)dealloc;
- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withDouble:(double)double;
- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withFloat:(float)float;
- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int;
- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withLong:(int64_t)long;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneDocumentDocumentStoredFieldVisitor

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array
{
  doc = self->doc_;
  if (!doc || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(*(info + 1), array);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v5];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentTextField__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003DF18();
  }

  v7 = new_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(OrgApacheLuceneDocumentTextField_TYPE_STORED_);
  if (!info || (v8 = v7, -[OrgApacheLuceneDocumentFieldType setStoreTermVectorsWithBoolean:](v7, "setStoreTermVectorsWithBoolean:", [info hasVectors]), -[OrgApacheLuceneDocumentFieldType setOmitNormsWithBoolean:](v8, "setOmitNormsWithBoolean:", objc_msgSend(info, "omitsNorms")), -[OrgApacheLuceneDocumentFieldType setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:](v8, "setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:", objc_msgSend(info, "getIndexOptions")), (doc = self->doc_) == 0) || !ref)
  {
    JreThrowNullPointerException();
  }

  v10 = *(info + 1);
  v11 = *(ref + 1);
  v12 = *(ref + 4);
  v13 = *(ref + 5);
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  v14 = new_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(v10, [NSString stringWithBytes:v11 offset:v12 length:v13 charset:OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_], v8);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v14];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(array, 0, *(array + 2));

  [(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *)self stringFieldWithOrgApacheLuceneIndexFieldInfo:info withOrgApacheLuceneUtilBytesRef:v6];
}

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int
{
  doc = self->doc_;
  if (!doc || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = new_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(*(info + 1), int);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v5];
}

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withLong:(int64_t)long
{
  doc = self->doc_;
  if (!doc || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = new_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(*(info + 1), long);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v5];
}

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withFloat:(float)float
{
  doc = self->doc_;
  if (!doc || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = new_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(*(info + 1), float);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v5];
}

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withDouble:(double)double
{
  doc = self->doc_;
  if (!doc || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = new_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(*(info + 1), double);

  [(OrgApacheLuceneDocumentDocument *)doc addWithOrgApacheLuceneIndexIndexableField:v5];
}

- (id)needsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fieldsToAdd = self->fieldsToAdd_;
  if (fieldsToAdd)
  {
    if (!info)
    {
      JreThrowNullPointerException();
    }

    if (![(JavaUtilSet *)fieldsToAdd containsWithId:*(info + 1)])
    {
      v4 = &qword_100557808;
      if (atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire))
      {
        return *v4;
      }

LABEL_7:
      objc_opt_class();
      return *v4;
    }
  }

  v4 = &OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_7;
  }

  return *v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentDocumentStoredFieldVisitor;
  [(OrgApacheLuceneIndexStoredFieldVisitor *)&v3 dealloc];
}

@end