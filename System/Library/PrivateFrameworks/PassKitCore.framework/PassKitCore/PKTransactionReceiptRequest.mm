@interface PKTransactionReceiptRequest
- (PKTransactionReceiptRequest)initWithReceiptProviderURL:(id)a3 authorizationToken:(id)a4 signature:(id)a5 receiptIdentifier:(id)a6;
- (id)_urlRequest;
@end

@implementation PKTransactionReceiptRequest

- (PKTransactionReceiptRequest)initWithReceiptProviderURL:(id)a3 authorizationToken:(id)a4 signature:(id)a5 receiptIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = PKTransactionReceiptRequest;
  v15 = [(PKOverlayableWebServiceRequest *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_receiptProviderURL, a3);
    v17 = [v12 copy];
    authorizationToken = v16->_authorizationToken;
    v16->_authorizationToken = v17;

    v19 = [v13 copy];
    signature = v16->_signature;
    v16->_signature = v19;

    v21 = [v14 copy];
    receiptIdentifier = v16->_receiptIdentifier;
    v16->_receiptIdentifier = v21;
  }

  return v16;
}

- (id)_urlRequest
{
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:self->_receiptProviderURL resolvingAgainstBaseURL:0];
  v4 = [v3 queryItems];
  v5 = [v4 mutableCopy];
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
    v12 = [(NSData *)signature URLBase64EncodedString];
    v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"signature" value:v12];
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