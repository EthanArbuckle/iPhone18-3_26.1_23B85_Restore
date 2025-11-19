@interface ECDKIMVerifiableMessage
- (ECDKIMVerifiableMessage)initWithHeaders:(id)a3 bodyData:(id)a4;
@end

@implementation ECDKIMVerifiableMessage

- (ECDKIMVerifiableMessage)initWithHeaders:(id)a3 bodyData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ECDKIMVerifiableMessage;
  v9 = [(ECDKIMVerifiableMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headers, a3);
    v11 = [v8 copy];
    bodyData = v10->_bodyData;
    v10->_bodyData = v11;
  }

  return v10;
}

@end