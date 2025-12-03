@interface PKApplyWebServiceRequestAuthenticationContext
- (PKApplyWebServiceRequestAuthenticationContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceRequestAuthenticationContext

- (PKApplyWebServiceRequestAuthenticationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKApplyWebServiceRequestAuthenticationContext;
  v5 = [(PKApplyWebServiceRequestAuthenticationContext *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signaturePayload"];
    signaturePayload = v5->_signaturePayload;
    v5->_signaturePayload = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationCrediential"];
    authenticationCrediential = v5->_authenticationCrediential;
    v5->_authenticationCrediential = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  certificates = self->_certificates;
  coderCopy = coder;
  [coderCopy encodeObject:certificates forKey:@"certificates"];
  [coderCopy encodeObject:self->_signaturePayload forKey:@"signaturePayload"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_authenticationCrediential forKey:@"authenticationCrediential"];
}

@end