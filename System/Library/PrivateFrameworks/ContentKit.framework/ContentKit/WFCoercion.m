@interface WFCoercion
+ (id)coercionToClass:(Class)a3 handler:(id)a4;
+ (id)coercionToType:(id)a3 handler:(id)a4;
- (BOOL)canProduceType:(id)a3;
- (BOOL)canProduceType:(id)a3 withConcurrencyMode:(int64_t)a4;
- (WFCoercion)initWithType:(id)a3 handler:(id)a4;
- (id)description;
@end

@implementation WFCoercion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFCoercion *)self type];
  v7 = [v3 stringWithFormat:@"<%@: %p, type: %@>", v5, self, v6];

  return v7;
}

- (BOOL)canProduceType:(id)a3 withConcurrencyMode:(int64_t)a4
{
  if (![(WFCoercion *)self canProduceType:a3])
  {
    return 0;
  }

  v6 = [(WFCoercion *)self handler];
  v7 = [v6 concurrencyMode] == a4;

  return v7;
}

- (BOOL)canProduceType:(id)a3
{
  v4 = a3;
  v5 = [(WFCoercion *)self type];
  v6 = [v5 conformsToType:v4];

  return v6;
}

- (WFCoercion)initWithType:(id)a3 handler:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"type"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoercion;
  v11 = [(WFCoercion *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, a3);
    objc_storeStrong(&v12->_handler, a4);
    v13 = v12;
  }

  return v12;
}

+ (id)coercionToClass:(Class)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v8 = [WFObjectType typeWithClass:a3];
  v9 = [v7 initWithType:v8 handler:v6];

  return v9;
}

+ (id)coercionToType:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithType:v7 handler:v6];

  return v8;
}

@end