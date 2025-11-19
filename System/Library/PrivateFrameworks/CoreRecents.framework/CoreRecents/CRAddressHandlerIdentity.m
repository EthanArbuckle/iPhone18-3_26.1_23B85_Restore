@interface CRAddressHandlerIdentity
+ (id)identityForAddressHandler:(id)a3;
- (id)initForAddressHandler:(id)a3;
- (void)dealloc;
@end

@implementation CRAddressHandlerIdentity

+ (id)identityForAddressHandler:(id)a3
{
  v3 = [[a1 alloc] initForAddressHandler:a3];

  return v3;
}

- (id)initForAddressHandler:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRAddressHandlerIdentity;
  v4 = [(CRAddressHandlerIdentity *)&v7 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_className = NSStringFromClass(v5);
    v4->_supportedAddressKinds = [objc_msgSend(a3 "supportedAddressKinds")];
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