@interface IDSPayloadVerificationResult
- (IDSPayloadVerificationResult)initWithCoder:(id)a3;
- (IDSPayloadVerificationResult)initWithURI:(id)a3 verified:(BOOL)a4 error:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPayloadVerificationResult

- (IDSPayloadVerificationResult)initWithURI:(id)a3 verified:(BOOL)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSPayloadVerificationResult;
  v11 = [(IDSPayloadVerificationResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uri, a3);
    v12->_verified = a4;
    objc_storeStrong(&v12->_error, a5);
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

  v7 = [(IDSPayloadVerificationResult *)self error];
  v8 = [v3 stringWithFormat:@"<%@ : %p URI: %@, verified: %@, error: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPayloadVerificationResult *)self uri];
  [v4 encodeObject:v5 forKey:@"uri"];

  [v4 encodeBool:-[IDSPayloadVerificationResult verified](self forKey:{"verified"), @"verified"}];
  v6 = [(IDSPayloadVerificationResult *)self error];
  [v4 encodeObject:v6 forKey:@"error"];
}

- (IDSPayloadVerificationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [v4 decodeBoolForKey:@"verified"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v8 = [(IDSPayloadVerificationResult *)self initWithURI:v5 verified:v6 error:v7];
  return v8;
}

@end