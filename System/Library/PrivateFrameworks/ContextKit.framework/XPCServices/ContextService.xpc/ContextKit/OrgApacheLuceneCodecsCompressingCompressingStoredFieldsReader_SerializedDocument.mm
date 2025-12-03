@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument
- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument

- (OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument)initWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->in_, input);
  self->length_ = int;
  self->numStoredFields_ = withInt;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_SerializedDocument *)&v3 dealloc];
}

@end