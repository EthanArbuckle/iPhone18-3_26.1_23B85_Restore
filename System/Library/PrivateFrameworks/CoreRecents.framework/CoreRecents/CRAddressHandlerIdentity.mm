@interface CRAddressHandlerIdentity
+ (id)identityForAddressHandler:(id)handler;
- (id)initForAddressHandler:(id)handler;
- (void)dealloc;
@end

@implementation CRAddressHandlerIdentity

+ (id)identityForAddressHandler:(id)handler
{
  v3 = [[self alloc] initForAddressHandler:handler];

  return v3;
}

- (id)initForAddressHandler:(id)handler
{
  v7.receiver = self;
  v7.super_class = CRAddressHandlerIdentity;
  v4 = [(CRAddressHandlerIdentity *)&v7 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_className = NSStringFromClass(v5);
    v4->_supportedAddressKinds = [objc_msgSend(handler "supportedAddressKinds")];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRAddressHandlerIdentity;
  [(CRAddressHandlerIdentity *)&v3 dealloc];
}

@end