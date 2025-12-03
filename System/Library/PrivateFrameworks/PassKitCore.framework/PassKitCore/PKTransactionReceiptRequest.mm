@interface PKTransactionReceiptRequest
- (PKTransactionReceiptRequest)initWithReceiptProviderURL:(id)l authorizationToken:(id)token signature:(id)signature receiptIdentifier:(id)identifier;
- (id)_urlRequest;
@end

@implementation PKTransactionReceiptRequest

- (PKTransactionReceiptRequest)initWithReceiptProviderURL:(id)l authorizationToken:(id)token signature:(id)signature receiptIdentifier:(id)identifier
{
  lCopy = l;
  tokenCopy = token;
  signatureCopy = signature;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = PKTransactionReceiptRequest;
  v15 = [(PKOverlayableWebServiceRequest *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_receiptProviderURL, l);
    v17 = [tokenCopy copy];
    authorizationToken = v16->_authorizationToken;
    v16->_authorizationToken = v17;

    v19 = [signatureCopy copy];
    signature = v16->_signature;
    v16->_signature = v19;

    v21 = [identifierCopy copy];
    receiptIdentifier = v16->_receiptIdentifier;
    v16->_receiptIdentifier = v21;
  }

  return v16;
}

- (id)_urlRequest
{
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:self->_receiptProviderURL resolvingAgainstBaseURL:0];
  queryItems = [v3 queryItems];
  v5 = [queryItems mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = v7;

  if (self->_authorizationToken)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"authorizationToken" value:self->_authorizationToken];
    [v8 addObject:v9];
  }

  if (self->_receiptIdentifier)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"receiptIdentifier" value:self->_receiptIdentifier];
    [v8 addObject:v10];
  }

  signature = self->_signature;
  if (signature)
  {
    uRLBase64EncodedString = [(NSData *)signature URLBase64EncodedString];
    v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"signature" value:uRLBase64EncodedString];
    [v8 addObject:v13];
  }

  [v3 setQueryItems:v8];
  v14 = [v3 URL];
  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithURL:v14];
  [v15 setHTTPMethod:@"GET"];
  [v15 setValue:self->_conversationIdentifier forHTTPHeaderField:@"x-conversation-id"];
  v16 = [v15 copy];

  return v16;
}

@end