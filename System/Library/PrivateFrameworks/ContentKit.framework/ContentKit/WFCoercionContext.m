@interface WFCoercionContext
- (WFCoercionContext)initWithRequestedType:(id)a3 options:(id)a4;
@end

@implementation WFCoercionContext

- (WFCoercionContext)initWithRequestedType:(id)a3 options:(id)a4
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
    [v15 handleFailureInMethod:a2 object:self file:@"WFCoercionContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"requestedType"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFCoercionContext.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoercionContext;
  v11 = [(WFCoercionContext *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestedType, a3);
    objc_storeStrong(&v12->_options, a4);
    v13 = v12;
  }

  return v12;
}

@end