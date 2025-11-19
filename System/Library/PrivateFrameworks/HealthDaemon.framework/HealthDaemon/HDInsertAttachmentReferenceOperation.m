@interface HDInsertAttachmentReferenceOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertAttachmentReferenceOperation)initWithCoder:(id)a3;
- (HDInsertAttachmentReferenceOperation)initWithReference:(id)a3;
@end

@implementation HDInsertAttachmentReferenceOperation

- (HDInsertAttachmentReferenceOperation)initWithReference:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDInsertAttachmentReferenceOperation;
  v5 = [(HDInsertAttachmentReferenceOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    reference = v5->_reference;
    v5->_reference = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v5 = [HDAttachmentReferenceEntity _insertReference:self->_reference databaseTransaction:a4 error:a5];
  v6 = v5 != 0;

  return v6;
}

- (HDInsertAttachmentReferenceOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachment_reference"];

  v6 = [(HDInsertAttachmentReferenceOperation *)self initWithReference:v5];
  return v6;
}

@end