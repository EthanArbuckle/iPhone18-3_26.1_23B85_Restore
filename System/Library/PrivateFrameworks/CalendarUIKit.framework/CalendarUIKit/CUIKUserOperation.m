@interface CUIKUserOperation
+ (id)operationForContext:(id)a3;
+ (id)operationWithObjects:(id)a3 span:(int64_t)a4;
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (BOOL)executeWithUndoDelegate:(id)a3;
- (CUIKUserOperation)initWithObjects:(id)a3 span:(int64_t)a4 createdAsInverseOfAnotherOperation:(BOOL)a5;
- (Class)_inverseOperationClass;
- (EKEventStore)eventStore;
- (NSString)actionName;
- (id)_actionName;
- (id)_inverseOperation;
- (id)inverseOperation;
- (int64_t)_spanFromSpan:(int64_t)a3 objects:(id)a4;
- (void)_precomputeActionName;
- (void)_precomputeInverseOperation;
@end

@implementation CUIKUserOperation

+ (id)operationForContext:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 objectsBeingEdited];
  v7 = [v4 _currentSpan];

  v8 = [v5 initWithObjects:v6 span:v7 createdAsInverseOfAnotherOperation:0];

  return v8;
}

+ (id)operationWithObjects:(id)a3 span:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithObjects:v6 span:a4 createdAsInverseOfAnotherOperation:1];

  return v7;
}

- (CUIKUserOperation)initWithObjects:(id)a3 span:(int64_t)a4 createdAsInverseOfAnotherOperation:(BOOL)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = CUIKUserOperation;
  v10 = [(CUIKUserOperation *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objects, a3);
    v11->_span = [(CUIKUserOperation *)v11 _spanFromSpan:a4 objects:v9];
    v12 = [v9 copy];
    originalObjects = v11->_originalObjects;
    v11->_originalObjects = v12;

    v14 = [v9 firstObject];
    v15 = [v14 eventStore];
    objc_storeWeak(&v11->_eventStore, v15);

    v11->_createdAsInverseOfAnotherOperation = a5;
  }

  return v11;
}

- (int64_t)_spanFromSpan:(int64_t)a3 objects:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CUIKUserOperation *)self objects:1];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      v4 = 1;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v10 isFirstOccurrenceIncludingSlices])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v4 = 4;
    }
  }

  return v4;
}

- (NSString)actionName
{
  v3 = [(CUIKUserOperation *)self precomputedActionName];

  if (v3)
  {
    [(CUIKUserOperation *)self precomputedActionName];
  }

  else
  {
    [(CUIKUserOperation *)self _actionName];
  }
  v4 = ;

  return v4;
}

- (void)_precomputeActionName
{
  v3 = [(CUIKUserOperation *)self _actionName];
  [(CUIKUserOperation *)self setPrecomputedActionName:v3];
}

- (BOOL)executeWithUndoDelegate:(id)a3
{
  v7 = 0;
  v4 = [(CUIKUserOperation *)self _executeWithUndoDelegate:a3 error:&v7];
  v5 = v7;
  [(CUIKUserOperation *)self setError:v5];

  return v4;
}

- (void)_precomputeInverseOperation
{
  v3 = [(CUIKUserOperation *)self _inverseOperation];
  [(CUIKUserOperation *)self setPrecomputedInverseOperation:v3];

  [(CUIKUserOperation *)self setInverseOperationPrecomputed:1];
}

- (id)inverseOperation
{
  if ([(CUIKUserOperation *)self inverseOperationPrecomputed])
  {
    [(CUIKUserOperation *)self precomputedInverseOperation];
  }

  else
  {
    [(CUIKUserOperation *)self _inverseOperation];
  }
  v3 = ;

  return v3;
}

- (id)_inverseOperation
{
  v3 = [(CUIKUserOperation *)self _inverseOperationClass];
  if (v3)
  {
    v4 = [(CUIKUserOperation *)self _objectsForInverse];
    if ([v4 count])
    {
      v3 = [(objc_class *)v3 operationWithObjects:v4 span:[(CUIKUserOperation *)self _inverseOperationSpan]];
      v5 = [(CUIKUserOperation *)self originalObjects];
      [(objc_class *)v3 setOriginalObjects:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

- (id)_actionName
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (Class)_inverseOperationClass
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

@end