@interface EMSecurityInformation
- (BOOL)isSigned;
- (EMSecurityInformation)initWithCoder:(id)a3;
- (EMSecurityInformation)initWithSigners:(id)a3 isEncrypted:(BOOL)a4 hasEncryptedDescendantPart:(BOOL)a5 smimeError:(id)a6;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMSecurityInformation

- (EMSecurityInformation)initWithSigners:(id)a3 isEncrypted:(BOOL)a4 hasEncryptedDescendantPart:(BOOL)a5 smimeError:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = EMSecurityInformation;
  v13 = [(EMSecurityInformation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_signers, a3);
    v14->_isEncrypted = a4;
    v14->_hasEncryptedDescendantPart = a5;
    objc_storeStrong(&v14->_smimeError, a6);
  }

  return v14;
}

- (BOOL)isSigned
{
  v2 = [(EMSecurityInformation *)self signers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  v2 = [(EMSecurityInformation *)self signers];
  v3 = [v2 firstObject];

  [v3 reevaluateTrustWithNetworkAccessAllowed];
}

- (EMSecurityInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_signers"];

  v9 = [v4 decodeBoolForKey:@"EFPropertyKey_isEncrypted"];
  v10 = [v4 decodeBoolForKey:@"EFPropertyKey_hasEncryptedDescendantPart"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_smimeError"];
  v12 = [(EMSecurityInformation *)self initWithSigners:v8 isEncrypted:v9 hasEncryptedDescendantPart:v10 smimeError:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMSecurityInformation *)self signers];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_signers"];

  [v6 encodeBool:-[EMSecurityInformation isEncrypted](self forKey:{"isEncrypted"), @"EFPropertyKey_isEncrypted"}];
  [v6 encodeBool:-[EMSecurityInformation hasEncryptedDescendantPart](self forKey:{"hasEncryptedDescendantPart"), @"EFPropertyKey_hasEncryptedDescendantPart"}];
  v5 = [(EMSecurityInformation *)self smimeError];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_smimeError"];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(EMSecurityInformation *)self isEncrypted];
  v4 = NSStringFromBOOL();
  v5 = [(EMSecurityInformation *)self signers];
  v6 = [v5 count];
  v7 = [(EMSecurityInformation *)self smimeError];
  v8 = NSStringFromBOOL();
  v9 = [v3 stringWithFormat:@"Encrypted: %@, Signers %lu, hasSMIMEError: %@", v4, v6, v8];

  return v9;
}

@end