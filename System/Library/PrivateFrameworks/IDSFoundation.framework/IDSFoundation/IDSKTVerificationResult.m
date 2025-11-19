@interface IDSKTVerificationResult
- (IDSKTVerificationResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSKTVerificationResult

- (IDSKTVerificationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = IDSKTVerificationResult;
  v5 = [(IDSKTVerificationResult *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URI"];
    uri = v5->_uri;
    v5->_uri = v6;

    v5->_optedIn = [v4 decodeBoolForKey:@"OptedIn"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"VerifiedPushTokens"];
    verifiedPushTokens = v5->_verifiedPushTokens;
    v5->_verifiedPushTokens = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"UnverifiedPushTokens"];
    unverifiedPushTokens = v5->_unverifiedPushTokens;
    v5->_unverifiedPushTokens = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"EndpointTransparencyStates"];
    endpointTransparencyStates = v5->_endpointTransparencyStates;
    v5->_endpointTransparencyStates = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSKTVerificationResult *)self uri];
  [v4 encodeObject:v5 forKey:@"URI"];

  [v4 encodeBool:-[IDSKTVerificationResult optedIn](self forKey:{"optedIn"), @"OptedIn"}];
  v6 = [(IDSKTVerificationResult *)self verifiedPushTokens];
  [v4 encodeObject:v6 forKey:@"VerifiedPushTokens"];

  v7 = [(IDSKTVerificationResult *)self unverifiedPushTokens];
  [v4 encodeObject:v7 forKey:@"UnverifiedPushTokens"];

  v8 = [(IDSKTVerificationResult *)self endpointTransparencyStates];
  [v4 encodeObject:v8 forKey:@"EndpointTransparencyStates"];
}

@end