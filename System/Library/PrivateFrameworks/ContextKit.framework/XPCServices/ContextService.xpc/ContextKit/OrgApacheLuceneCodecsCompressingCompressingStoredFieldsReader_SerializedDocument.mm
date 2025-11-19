@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument
- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)initWithOrgApacheLuceneStoreDataInput:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)initWithOrgApacheLuceneStoreDataInput:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->in_, a3);
  self->length_ = a4;
  self->numStoredFields_ = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument *)&v3 dealloc];
}

@end