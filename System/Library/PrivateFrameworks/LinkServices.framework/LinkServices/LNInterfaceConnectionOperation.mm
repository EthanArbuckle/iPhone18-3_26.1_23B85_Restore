@interface LNInterfaceConnectionOperation
- (LNInterfaceConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity;
@end

@implementation LNInterfaceConnectionOperation

- (LNInterfaceConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  identifierCopy = identifier;
  interfaceCopy = interface;
  queueCopy = queue;
  activityCopy = activity;
  if (identifierCopy)
  {
    if (interfaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNInterfaceConnectionOperation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (interfaceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNInterfaceConnectionOperation.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNInterfaceConnectionOperation;
  v17 = [(LNConnectionOperation *)&v23 initWithIdentifier:identifierCopy priority:priority queue:queueCopy activity:activityCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_connectionInterface, interface);
    v19 = v18;
  }

  return v18;
}

@end