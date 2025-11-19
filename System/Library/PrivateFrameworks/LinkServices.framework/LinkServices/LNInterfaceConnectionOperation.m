@interface LNInterfaceConnectionOperation
- (LNInterfaceConnectionOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7;
@end

@implementation LNInterfaceConnectionOperation

- (LNInterfaceConnectionOperation)initWithIdentifier:(id)a3 connectionInterface:(id)a4 priority:(int64_t)a5 queue:(id)a6 activity:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNInterfaceConnectionOperation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"LNInterfaceConnectionOperation.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNInterfaceConnectionOperation;
  v17 = [(LNConnectionOperation *)&v23 initWithIdentifier:v13 priority:a5 queue:v15 activity:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_connectionInterface, a4);
    v19 = v18;
  }

  return v18;
}

@end