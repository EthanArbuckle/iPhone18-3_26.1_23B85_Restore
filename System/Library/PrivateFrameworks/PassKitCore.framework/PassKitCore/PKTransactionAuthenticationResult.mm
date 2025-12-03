@interface PKTransactionAuthenticationResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionAuthenticationResult:(id)result;
- (PKTransactionAuthenticationResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionAuthenticationResult

- (void)encodeWithCoder:(id)coder
{
  encryptedPIN = self->_encryptedPIN;
  coderCopy = coder;
  [coderCopy encodeObject:encryptedPIN forKey:@"encryptedPIN"];
  [coderCopy encodeObject:self->_userConfirmation forKey:@"userConfirmation"];
  [coderCopy encodeObject:self->_transactionDetailsSignature forKey:@"transactionDetailsSignature"];
  [coderCopy encodeObject:self->_authenticationContext forKey:@"authenticationContext"];
  [coderCopy encodeObject:self->_transactionServiceIdentifier forKey:@"transactionServiceIdentifier"];
}

- (PKTransactionAuthenticationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKTransactionAuthenticationResult;
  v5 = [(PKTransactionAuthenticationResult *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedPIN"];
    encryptedPIN = v5->_encryptedPIN;
    v5->_encryptedPIN = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userConfirmation"];
    userConfirmation = v5->_userConfirmation;
    v5->_userConfirmation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDetailsSignature"];
    transactionDetailsSignature = v5->_transactionDetailsSignature;
    v5->_transactionDetailsSignature = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionServiceIdentifier"];
    transactionServiceIdentifier = v5->_transactionServiceIdentifier;
    v5->_transactionServiceIdentifier = v14;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_encryptedPIN];
  [v3 safelyAddObject:self->_userConfirmation];
  [v3 safelyAddObject:self->_transactionDetailsSignature];
  [v3 safelyAddObject:self->_authenticationContext];
  [v3 safelyAddObject:self->_transactionServiceIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionAuthenticationResult *)self isEqualToTransactionAuthenticationResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionAuthenticationResult:(id)result
{
  resultCopy = result;
  encryptedPIN = self->_encryptedPIN;
  v6 = resultCopy[2];
  if (encryptedPIN)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (encryptedPIN != v6)
    {
      goto LABEL_26;
    }
  }

  else if (([(NSData *)encryptedPIN isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

  userConfirmation = self->_userConfirmation;
  v9 = resultCopy[4];
  if (userConfirmation && v9)
  {
    if (([(NSData *)userConfirmation isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (userConfirmation != v9)
  {
    goto LABEL_26;
  }

  transactionDetailsSignature = self->_transactionDetailsSignature;
  v11 = resultCopy[3];
  if (transactionDetailsSignature && v11)
  {
    if (([(NSData *)transactionDetailsSignature isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (transactionDetailsSignature != v11)
  {
    goto LABEL_26;
  }

  authenticationContext = self->_authenticationContext;
  v13 = resultCopy[1];
  if (!authenticationContext || !v13)
  {
    if (authenticationContext == v13)
    {
      goto LABEL_22;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (![(PKTransactionAuthenticationContext *)authenticationContext isEqual:?])
  {
    goto LABEL_26;
  }

LABEL_22:
  transactionServiceIdentifier = self->_transactionServiceIdentifier;
  v15 = resultCopy[5];
  if (transactionServiceIdentifier && v15)
  {
    v16 = [(NSString *)transactionServiceIdentifier isEqual:?];
  }

  else
  {
    v16 = transactionServiceIdentifier == v15;
  }

LABEL_27:

  return v16;
}

@end