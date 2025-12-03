@interface MSTriageUndoAction
- (MSTriageUndoAction)initWithChangeActionFuture:(id)future messageRepository:(id)repository;
@end

@implementation MSTriageUndoAction

- (MSTriageUndoAction)initWithChangeActionFuture:(id)future messageRepository:(id)repository
{
  futureCopy = future;
  repositoryCopy = repository;
  v10 = repositoryCopy;
  if (futureCopy)
  {
    if (repositoryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSTriageUndoAction.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"changeActionFuture"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSTriageUndoAction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"messageRepository"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = MSTriageUndoAction;
  v11 = [(MSTriageUndoAction *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changeActionFuture, future);
    objc_storeStrong(&v12->_messageRepository, repository);
    v20 = 0;
    v13 = [futureCopy resultIfAvailable:&v20];
    v14 = v20;
    v15 = v14;
    if (v14)
    {
      ef_isTimeoutError = [v14 ef_isTimeoutError];
    }

    else
    {
      ef_isTimeoutError = 1;
    }

    v12->_isValid = ef_isTimeoutError;
  }

  return v12;
}

@end