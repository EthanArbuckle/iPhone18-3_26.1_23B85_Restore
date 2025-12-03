@interface PKAccountExportedTransactionInfo
- (PKAccountExportedTransactionInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountExportedTransactionInfo

- (void)encodeWithCoder:(id)coder
{
  transactionData = self->_transactionData;
  coderCopy = coder;
  [coderCopy encodeObject:transactionData forKey:@"transactionData"];
  [coderCopy encodeObject:self->_transactionDataFilename forKey:@"transactionDataFilename"];
  [coderCopy encodeObject:self->_transactionDataHash forKey:@"transactionDataHash"];
  [coderCopy encodeObject:self->_statementMetadata forKey:@"statementMetadata"];
}

- (PKAccountExportedTransactionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAccountExportedTransactionInfo;
  v5 = [(PKAccountExportedTransactionInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDataFilename"];
    transactionDataFilename = v5->_transactionDataFilename;
    v5->_transactionDataFilename = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDataHash"];
    transactionDataHash = v5->_transactionDataHash;
    v5->_transactionDataHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statementMetadata"];
    statementMetadata = v5->_statementMetadata;
    v5->_statementMetadata = v12;
  }

  return v5;
}

@end