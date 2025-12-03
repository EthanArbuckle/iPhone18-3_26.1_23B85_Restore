@interface WFCoercionContext
- (WFCoercionContext)initWithRequestedType:(id)type options:(id)options;
@end

@implementation WFCoercionContext

- (WFCoercionContext)initWithRequestedType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  v10 = optionsCopy;
  if (typeCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoercionContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"requestedType"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoercionContext.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoercionContext;
  v11 = [(WFCoercionContext *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestedType, type);
    objc_storeStrong(&v12->_options, options);
    v13 = v12;
  }

  return v12;
}

@end