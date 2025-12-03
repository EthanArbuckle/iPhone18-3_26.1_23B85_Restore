@interface IDSKTVerificationResult
- (IDSKTVerificationResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSKTVerificationResult

- (IDSKTVerificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = IDSKTVerificationResult;
  v5 = [(IDSKTVerificationResult *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URI"];
    uri = v5->_uri;
    v5->_uri = v6;

    v5->_optedIn = [coderCopy decodeBoolForKey:@"OptedIn"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"VerifiedPushTokens"];
    verifiedPushTokens = v5->_verifiedPushTokens;
    v5->_verifiedPushTokens = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"UnverifiedPushTokens"];
    unverifiedPushTokens = v5->_unverifiedPushTokens;
    v5->_unverifiedPushTokens = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"EndpointTransparencyStates"];
    endpointTransparencyStates = v5->_endpointTransparencyStates;
    v5->_endpointTransparencyStates = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IDSKTVerificationResult *)self uri];
  [coderCopy encodeObject:v5 forKey:@"URI"];

  [coderCopy encodeBool:-[IDSKTVerificationResult optedIn](self forKey:{"optedIn"), @"OptedIn"}];
  verifiedPushTokens = [(IDSKTVerificationResult *)self verifiedPushTokens];
  [coderCopy encodeObject:verifiedPushTokens forKey:@"VerifiedPushTokens"];

  unverifiedPushTokens = [(IDSKTVerificationResult *)self unverifiedPushTokens];
  [coderCopy encodeObject:unverifiedPushTokens forKey:@"UnverifiedPushTokens"];

  endpointTransparencyStates = [(IDSKTVerificationResult *)self endpointTransparencyStates];
  [coderCopy encodeObject:endpointTransparencyStates forKey:@"EndpointTransparencyStates"];
}

@end