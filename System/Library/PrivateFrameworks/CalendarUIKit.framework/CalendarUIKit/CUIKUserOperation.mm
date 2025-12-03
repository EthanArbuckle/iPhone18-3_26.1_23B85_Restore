@interface CUIKUserOperation
+ (id)operationForContext:(id)context;
+ (id)operationWithObjects:(id)objects span:(int64_t)span;
- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error;
- (BOOL)executeWithUndoDelegate:(id)delegate;
- (CUIKUserOperation)initWithObjects:(id)objects span:(int64_t)span createdAsInverseOfAnotherOperation:(BOOL)operation;
- (Class)_inverseOperationClass;
- (EKEventStore)eventStore;
- (NSString)actionName;
- (id)_actionName;
- (id)_inverseOperation;
- (id)inverseOperation;
- (int64_t)_spanFromSpan:(int64_t)span objects:(id)objects;
- (void)_precomputeActionName;
- (void)_precomputeInverseOperation;
@end

@implementation CUIKUserOperation

+ (id)operationForContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  objectsBeingEdited = [contextCopy objectsBeingEdited];
  _currentSpan = [contextCopy _currentSpan];

  v8 = [v5 initWithObjects:objectsBeingEdited span:_currentSpan createdAsInverseOfAnotherOperation:0];

  return v8;
}

+ (id)operationWithObjects:(id)objects span:(int64_t)span
{
  objectsCopy = objects;
  v7 = [[self alloc] initWithObjects:objectsCopy span:span createdAsInverseOfAnotherOperation:1];

  return v7;
}

- (CUIKUserOperation)initWithObjects:(id)objects span:(int64_t)span createdAsInverseOfAnotherOperation:(BOOL)operation
{
  objectsCopy = objects;
  v17.receiver = self;
  v17.super_class = CUIKUserOperation;
  v10 = [(CUIKUserOperation *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objects, objects);
    v11->_span = [(CUIKUserOperation *)v11 _spanFromSpan:span objects:objectsCopy];
    v12 = [objectsCopy copy];
    originalObjects = v11->_originalObjects;
    v11->_originalObjects = v12;

    firstObject = [objectsCopy firstObject];
    eventStore = [firstObject eventStore];
    objc_storeWeak(&v11->_eventStore, eventStore);

    v11->_createdAsInverseOfAnotherOperation = operation;
  }

  return v11;
}

- (int64_t)_spanFromSpan:(int64_t)span objects:(id)objects
{
  spanCopy = span;
  v17 = *MEMORY[0x1E69E9840];
  if (span == 1)
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
      spanCopy = 1;
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
      spanCopy = 4;
    }
  }

  return spanCopy;
}

- (NSString)actionName
{
  precomputedActionName = [(CUIKUserOperation *)self precomputedActionName];

  if (precomputedActionName)
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
  _actionName = [(CUIKUserOperation *)self _actionName];
  [(CUIKUserOperation *)self setPrecomputedActionName:_actionName];
}

- (BOOL)executeWithUndoDelegate:(id)delegate
{
  v7 = 0;
  v4 = [(CUIKUserOperation *)self _executeWithUndoDelegate:delegate error:&v7];
  v5 = v7;
  [(CUIKUserOperation *)self setError:v5];

  return v4;
}

- (void)_precomputeInverseOperation
{
  _inverseOperation = [(CUIKUserOperation *)self _inverseOperation];
  [(CUIKUserOperation *)self setPrecomputedInverseOperation:_inverseOperation];

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
  _inverseOperationClass = [(CUIKUserOperation *)self _inverseOperationClass];
  if (_inverseOperationClass)
  {
    _objectsForInverse = [(CUIKUserOperation *)self _objectsForInverse];
    if ([_objectsForInverse count])
    {
      _inverseOperationClass = [(objc_class *)_inverseOperationClass operationWithObjects:_objectsForInverse span:[(CUIKUserOperation *)self _inverseOperationSpan]];
      originalObjects = [(CUIKUserOperation *)self originalObjects];
      [(objc_class *)_inverseOperationClass setOriginalObjects:originalObjects];
    }

    else
    {
      _inverseOperationClass = 0;
    }
  }

  return _inverseOperationClass;
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

- (BOOL)_executeWithUndoDelegate:(id)delegate error:(id *)error
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