@interface CRAddressHandler
+ (id)addressHandlerWithPrincipalClass:(Class)class;
- (CRAddressHandler)initWithAddressHandler:(id)handler;
- (CRAddressHandler)initWithPrincipalClass:(Class)class;
- (id)description;
- (void)dealloc;
@end

@implementation CRAddressHandler

+ (id)addressHandlerWithPrincipalClass:(Class)class
{
  v3 = [[self alloc] initWithPrincipalClass:class];

  return v3;
}

- (CRAddressHandler)initWithPrincipalClass:(Class)class
{
  classCopy = class;
  if (class)
  {
    if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___CRAddressHandler])
    {
      v5 = objc_alloc_init(classCopy);
      classCopy = [(CRAddressHandler *)self initWithAddressHandler:v5];
      self = v5;
    }

    else
    {
      classCopy = 0;
    }
  }

  return classCopy;
}

- (CRAddressHandler)initWithAddressHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = CRAddressHandler;
  v4 = [(CRAddressHandler *)&v6 init];
  if (v4)
  {
    v4->_handler = handler;
    v4->_identity = [CRAddressHandlerIdentity identityForAddressHandler:handler];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRAddressHandler;
  [(CRAddressHandler *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  handler = self->_handler;
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@:%p; %@ kinds={%@}>", v3, self, objc_opt_class(), [objc_msgSend(-[CRAddressHandler supportedAddressKinds](self "supportedAddressKinds")]);
}

@end