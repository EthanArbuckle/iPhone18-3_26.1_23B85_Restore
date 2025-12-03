@interface ECDKIMVerificationContext
- (ECDKIMVerificationContext)initWithVerifiableMessage:(id)message dkimSignatureHeaders:(id)headers;
- (ECRawMessageHeaders)headers;
- (NSData)bodyData;
- (void)removeDKIMSignatureHeaders:(id)headers;
@end

@implementation ECDKIMVerificationContext

- (ECDKIMVerificationContext)initWithVerifiableMessage:(id)message dkimSignatureHeaders:(id)headers
{
  messageCopy = message;
  headersCopy = headers;
  v14.receiver = self;
  v14.super_class = ECDKIMVerificationContext;
  v9 = [(ECDKIMVerificationContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_verifiableMessage, message);
    v11 = [headersCopy copy];
    dkimSignatureHeaders = v10->_dkimSignatureHeaders;
    v10->_dkimSignatureHeaders = v11;
  }

  return v10;
}

- (ECRawMessageHeaders)headers
{
  verifiableMessage = [(ECDKIMVerificationContext *)self verifiableMessage];
  headers = [verifiableMessage headers];

  return headers;
}

- (NSData)bodyData
{
  verifiableMessage = [(ECDKIMVerificationContext *)self verifiableMessage];
  bodyData = [verifiableMessage bodyData];

  return bodyData;
}

- (void)removeDKIMSignatureHeaders:(id)headers
{
  headersCopy = headers;
  if ([headersCopy count])
  {
    v4 = [(NSArray *)self->_dkimSignatureHeaders mutableCopy];
    [v4 removeObjectsInArray:headersCopy];
    [(ECDKIMVerificationContext *)self setDkimSignatureHeaders:v4];
  }
}

@end