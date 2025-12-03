@interface ASKStorefrontChangeHandlerToken
- (ASKStorefrontChangeHandlerToken)initWithHandler:(id)handler;
@end

@implementation ASKStorefrontChangeHandlerToken

- (ASKStorefrontChangeHandlerToken)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = ASKStorefrontChangeHandlerToken;
  v5 = [(ASKStorefrontChangeHandlerToken *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end