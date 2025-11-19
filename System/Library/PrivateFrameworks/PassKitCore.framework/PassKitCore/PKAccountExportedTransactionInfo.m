@interface PKAccountExportedTransactionInfo
- (PKAccountExportedTransactionInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountExportedTransactionInfo

- (void)encodeWithCoder:(id)a3
{
  transactionData = self->_transactionData;
  v5 = a3;
  [v5 encodeObject:transactionData forKey:@"transactionData"];
  [v5 encodeObject:self->_transactionDataFilename forKey:@"transactionDataFilename"];
  [v5 encodeObject:self->_transactionDataHash forKey:@"transactionDataHash"];
  [v5 encodeObject:self->_statementMetadata forKey:@"statementMetadata"];
}

- (PKAccountExportedTransactionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountExportedTransactionInfo;
  v5 = [(PKAccountExportedTransactionInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDataFilename"];
    transactionDataFilename = v5->_transactionDataFilename;
    v5->_transactionDataFilename = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDataHash"];
    transactionDataHash = v5->_transactionDataHash;
    v5->_transactionDataHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementMetadata"];
    statementMetadata = v5->_statementMetadata;
    v5->_statementMetadata = v12;
  }

  return v5;
}

@end