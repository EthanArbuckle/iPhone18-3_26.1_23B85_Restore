@interface COOnDemandIDSNodeCreationRequest
- (COOnDemandIDSNodeCreationRequest)initWithMessage:(id)a3 idsIdentifier:(id)a4 uriToken:(id)a5 requestIdentifier:(id)a6 responseIdentifier:(id)a7;
@end

@implementation COOnDemandIDSNodeCreationRequest

- (COOnDemandIDSNodeCreationRequest)initWithMessage:(id)a3 idsIdentifier:(id)a4 uriToken:(id)a5 requestIdentifier:(id)a6 responseIdentifier:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = COOnDemandIDSNodeCreationRequest;
  v17 = [(COOnDemandIDSNodeCreationRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_message, a3);
    objc_storeStrong(&v18->_idsIdentifier, a4);
    objc_storeStrong(&v18->_fromURIToken, a5);
    objc_storeStrong(&v18->_requestIdentifier, a6);
    objc_storeStrong(&v18->_responseIdentifier, a7);
  }

  return v18;
}

@end