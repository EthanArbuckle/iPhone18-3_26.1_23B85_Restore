@interface ECDKIMVerifiableMessage
- (ECDKIMVerifiableMessage)initWithHeaders:(id)headers bodyData:(id)data;
@end

@implementation ECDKIMVerifiableMessage

- (ECDKIMVerifiableMessage)initWithHeaders:(id)headers bodyData:(id)data
{
  headersCopy = headers;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ECDKIMVerifiableMessage;
  v9 = [(ECDKIMVerifiableMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headers, headers);
    v11 = [dataCopy copy];
    bodyData = v10->_bodyData;
    v10->_bodyData = v11;
  }

  return v10;
}

@end