@interface WFCoercion
+ (id)coercionToClass:(Class)class handler:(id)handler;
+ (id)coercionToType:(id)type handler:(id)handler;
- (BOOL)canProduceType:(id)type;
- (BOOL)canProduceType:(id)type withConcurrencyMode:(int64_t)mode;
- (WFCoercion)initWithType:(id)type handler:(id)handler;
- (id)description;
@end

@implementation WFCoercion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(WFCoercion *)self type];
  v7 = [v3 stringWithFormat:@"<%@: %p, type: %@>", v5, self, type];

  return v7;
}

- (BOOL)canProduceType:(id)type withConcurrencyMode:(int64_t)mode
{
  if (![(WFCoercion *)self canProduceType:type])
  {
    return 0;
  }

  handler = [(WFCoercion *)self handler];
  v7 = [handler concurrencyMode] == mode;

  return v7;
}

- (BOOL)canProduceType:(id)type
{
  typeCopy = type;
  type = [(WFCoercion *)self type];
  v6 = [type conformsToType:typeCopy];

  return v6;
}

- (WFCoercion)initWithType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (typeCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"type"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoercion;
  v11 = [(WFCoercion *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, type);
    objc_storeStrong(&v12->_handler, handler);
    v13 = v12;
  }

  return v12;
}

+ (id)coercionToClass:(Class)class handler:(id)handler
{
  handlerCopy = handler;
  v7 = [self alloc];
  v8 = [WFObjectType typeWithClass:class];
  v9 = [v7 initWithType:v8 handler:handlerCopy];

  return v9;
}

+ (id)coercionToType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  v8 = [[self alloc] initWithType:typeCopy handler:handlerCopy];

  return v8;
}

@end