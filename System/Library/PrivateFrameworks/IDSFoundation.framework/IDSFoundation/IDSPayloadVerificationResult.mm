@interface IDSPayloadVerificationResult
- (IDSPayloadVerificationResult)initWithCoder:(id)coder;
- (IDSPayloadVerificationResult)initWithURI:(id)i verified:(BOOL)verified error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPayloadVerificationResult

- (IDSPayloadVerificationResult)initWithURI:(id)i verified:(BOOL)verified error:(id)error
{
  iCopy = i;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = IDSPayloadVerificationResult;
  v11 = [(IDSPayloadVerificationResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uri, i);
    v12->_verified = verified;
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSPayloadVerificationResult *)self uri];
  if ([(IDSPayloadVerificationResult *)self verified])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  error = [(IDSPayloadVerificationResult *)self error];
  v8 = [v3 stringWithFormat:@"<%@ : %p URI: %@, verified: %@, error: %@>", v4, self, v5, v6, error];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IDSPayloadVerificationResult *)self uri];
  [coderCopy encodeObject:v5 forKey:@"uri"];

  [coderCopy encodeBool:-[IDSPayloadVerificationResult verified](self forKey:{"verified"), @"verified"}];
  error = [(IDSPayloadVerificationResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (IDSPayloadVerificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [coderCopy decodeBoolForKey:@"verified"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v8 = [(IDSPayloadVerificationResult *)self initWithURI:v5 verified:v6 error:v7];
  return v8;
}

@end