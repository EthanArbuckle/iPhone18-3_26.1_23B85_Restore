@interface CRAddressHandler
+ (id)addressHandlerWithPrincipalClass:(Class)a3;
- (CRAddressHandler)initWithAddressHandler:(id)a3;
- (CRAddressHandler)initWithPrincipalClass:(Class)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CRAddressHandler

+ (id)addressHandlerWithPrincipalClass:(Class)a3
{
  v3 = [[a1 alloc] initWithPrincipalClass:a3];

  return v3;
}

- (CRAddressHandler)initWithPrincipalClass:(Class)a3
{
  v3 = a3;
  if (a3)
  {
    if ([(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___CRAddressHandler])
    {
      v5 = objc_alloc_init(v3);
      v3 = [(CRAddressHandler *)self initWithAddressHandler:v5];
      self = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (CRAddressHandler)initWithAddressHandler:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRAddressHandler;
  v4 = [(CRAddressHandler *)&v6 init];
  if (v4)
  {
    v4->_handler = a3;
    v4->_identity = [CRAddressHandlerIdentity identityForAddressHandler:a3];
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