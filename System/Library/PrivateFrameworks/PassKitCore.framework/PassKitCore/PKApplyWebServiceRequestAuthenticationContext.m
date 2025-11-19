@interface PKApplyWebServiceRequestAuthenticationContext
- (PKApplyWebServiceRequestAuthenticationContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceRequestAuthenticationContext

- (PKApplyWebServiceRequestAuthenticationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKApplyWebServiceRequestAuthenticationContext;
  v5 = [(PKApplyWebServiceRequestAuthenticationContext *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signaturePayload"];
    signaturePayload = v5->_signaturePayload;
    v5->_signaturePayload = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationCrediential"];
    authenticationCrediential = v5->_authenticationCrediential;
    v5->_authenticationCrediential = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  certificates = self->_certificates;
  v5 = a3;
  [v5 encodeObject:certificates forKey:@"certificates"];
  [v5 encodeObject:self->_signaturePayload forKey:@"signaturePayload"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_authenticationCrediential forKey:@"authenticationCrediential"];
}

@end