@interface COOnDemandIDSNodeCreationRequest
- (COOnDemandIDSNodeCreationRequest)initWithMessage:(id)message idsIdentifier:(id)identifier uriToken:(id)token requestIdentifier:(id)requestIdentifier responseIdentifier:(id)responseIdentifier;
@end

@implementation COOnDemandIDSNodeCreationRequest

- (COOnDemandIDSNodeCreationRequest)initWithMessage:(id)message idsIdentifier:(id)identifier uriToken:(id)token requestIdentifier:(id)requestIdentifier responseIdentifier:(id)responseIdentifier
{
  messageCopy = message;
  identifierCopy = identifier;
  tokenCopy = token;
  requestIdentifierCopy = requestIdentifier;
  responseIdentifierCopy = responseIdentifier;
  v21.receiver = self;
  v21.super_class = COOnDemandIDSNodeCreationRequest;
  v17 = [(COOnDemandIDSNodeCreationRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_message, message);
    objc_storeStrong(&v18->_idsIdentifier, identifier);
    objc_storeStrong(&v18->_fromURIToken, token);
    objc_storeStrong(&v18->_requestIdentifier, requestIdentifier);
    objc_storeStrong(&v18->_responseIdentifier, responseIdentifier);
  }

  return v18;
}

@end