@interface ECDKIMVerificationContext
- (ECDKIMVerificationContext)initWithVerifiableMessage:(id)a3 dkimSignatureHeaders:(id)a4;
- (ECRawMessageHeaders)headers;
- (NSData)bodyData;
- (void)removeDKIMSignatureHeaders:(id)a3;
@end

@implementation ECDKIMVerificationContext

- (ECDKIMVerificationContext)initWithVerifiableMessage:(id)a3 dkimSignatureHeaders:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ECDKIMVerificationContext;
  v9 = [(ECDKIMVerificationContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_verifiableMessage, a3);
    v11 = [v8 copy];
    dkimSignatureHeaders = v10->_dkimSignatureHeaders;
    v10->_dkimSignatureHeaders = v11;
  }

  return v10;
}

- (ECRawMessageHeaders)headers
{
  v2 = [(ECDKIMVerificationContext *)self verifiableMessage];
  v3 = [v2 headers];

  return v3;
}

- (NSData)bodyData
{
  v2 = [(ECDKIMVerificationContext *)self verifiableMessage];
  v3 = [v2 bodyData];

  return v3;
}

- (void)removeDKIMSignatureHeaders:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(NSArray *)self->_dkimSignatureHeaders mutableCopy];
    [v4 removeObjectsInArray:v5];
    [(ECDKIMVerificationContext *)self setDkimSignatureHeaders:v4];
  }
}

@end