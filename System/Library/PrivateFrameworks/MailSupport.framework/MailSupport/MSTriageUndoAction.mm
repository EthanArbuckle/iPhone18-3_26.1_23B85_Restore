@interface MSTriageUndoAction
- (MSTriageUndoAction)initWithChangeActionFuture:(id)a3 messageRepository:(id)a4;
@end

@implementation MSTriageUndoAction

- (MSTriageUndoAction)initWithChangeActionFuture:(id)a3 messageRepository:(id)a4
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
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MSTriageUndoAction.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"changeActionFuture"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"MSTriageUndoAction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"messageRepository"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = MSTriageUndoAction;
  v11 = [(MSTriageUndoAction *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changeActionFuture, a3);
    objc_storeStrong(&v12->_messageRepository, a4);
    v20 = 0;
    v13 = [v8 resultIfAvailable:&v20];
    v14 = v20;
    v15 = v14;
    if (v14)
    {
      v16 = [v14 ef_isTimeoutError];
    }

    else
    {
      v16 = 1;
    }

    v12->_isValid = v16;
  }

  return v12;
}

@end