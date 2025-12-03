@interface HDInsertAttachmentReferenceOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertAttachmentReferenceOperation)initWithCoder:(id)coder;
- (HDInsertAttachmentReferenceOperation)initWithReference:(id)reference;
@end

@implementation HDInsertAttachmentReferenceOperation

- (HDInsertAttachmentReferenceOperation)initWithReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = HDInsertAttachmentReferenceOperation;
  v5 = [(HDInsertAttachmentReferenceOperation *)&v9 init];
  if (v5)
  {
    v6 = [referenceCopy copy];
    reference = v5->_reference;
    v5->_reference = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v5 = [HDAttachmentReferenceEntity _insertReference:self->_reference databaseTransaction:transaction error:error];
  v6 = v5 != 0;

  return v6;
}

- (HDInsertAttachmentReferenceOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachment_reference"];

  v6 = [(HDInsertAttachmentReferenceOperation *)self initWithReference:v5];
  return v6;
}

@end