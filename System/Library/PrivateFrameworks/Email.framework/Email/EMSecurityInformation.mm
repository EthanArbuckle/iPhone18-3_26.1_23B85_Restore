@interface EMSecurityInformation
- (BOOL)isSigned;
- (EMSecurityInformation)initWithCoder:(id)coder;
- (EMSecurityInformation)initWithSigners:(id)signers isEncrypted:(BOOL)encrypted hasEncryptedDescendantPart:(BOOL)part smimeError:(id)error;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMSecurityInformation

- (EMSecurityInformation)initWithSigners:(id)signers isEncrypted:(BOOL)encrypted hasEncryptedDescendantPart:(BOOL)part smimeError:(id)error
{
  signersCopy = signers;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = EMSecurityInformation;
  v13 = [(EMSecurityInformation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_signers, signers);
    v14->_isEncrypted = encrypted;
    v14->_hasEncryptedDescendantPart = part;
    objc_storeStrong(&v14->_smimeError, error);
  }

  return v14;
}

- (BOOL)isSigned
{
  signers = [(EMSecurityInformation *)self signers];
  v3 = [signers count] != 0;

  return v3;
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  signers = [(EMSecurityInformation *)self signers];
  firstObject = [signers firstObject];

  [firstObject reevaluateTrustWithNetworkAccessAllowed];
}

- (EMSecurityInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_signers"];

  v9 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v10 = [coderCopy decodeBoolForKey:@"EFPropertyKey_hasEncryptedDescendantPart"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_smimeError"];
  v12 = [(EMSecurityInformation *)self initWithSigners:v8 isEncrypted:v9 hasEncryptedDescendantPart:v10 smimeError:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signers = [(EMSecurityInformation *)self signers];
  [coderCopy encodeObject:signers forKey:@"EFPropertyKey_signers"];

  [coderCopy encodeBool:-[EMSecurityInformation isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  [coderCopy encodeBool:-[EMSecurityInformation hasEncryptedDescendantPart](self forKey:{"hasEncryptedDescendantPart"), @"EFPropertyKey_hasEncryptedDescendantPart"}];
  smimeError = [(EMSecurityInformation *)self smimeError];
  [coderCopy encodeObject:smimeError forKey:@"EFPropertyKey_smimeError"];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(EMSecurityInformation *)self isEncrypted];
  v4 = NSStringFromBOOL();
  signers = [(EMSecurityInformation *)self signers];
  v6 = [signers count];
  smimeError = [(EMSecurityInformation *)self smimeError];
  v8 = NSStringFromBOOL();
  v9 = [v3 stringWithFormat:@"Encrypted: %@, Signers %lu, hasSMIMEError: %@", v4, v6, v8];

  return v9;
}

@end