@interface HKConceptQuery
+ (void)configureClientInterface:(id)interface;
- (HKConceptQuery)initWithConceptSelection:(id)selection resultsHandler:(id)handler;
- (id)unitTesting_handlerWithConcept;
- (void)_enumerateConceptsWithHandler:(id)handler handler:(id)a4;
- (void)client_deliverConcepts:(id)concepts queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKConceptQuery

- (HKConceptQuery)initWithConceptSelection:(id)selection resultsHandler:(id)handler
{
  selectionCopy = selection;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HKConceptQuery;
  v9 = [(HKQuery *)&v14 _initWithObjectType:0 predicate:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 19, selection);
    v11 = [handlerCopy copy];
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (id)unitTesting_handlerWithConcept
{
  v2 = MEMORY[0x1E12DD030](self->_handler, a2);

  return v2;
}

- (void)client_deliverConcepts:(id)concepts queryUUID:(id)d
{
  conceptsCopy = concepts;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HKConceptQuery_client_deliverConcepts_queryUUID___block_invoke;
  block[3] = &unk_1E86C1F70;
  block[4] = self;
  v12 = dCopy;
  v13 = conceptsCopy;
  v9 = conceptsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __51__HKConceptQuery_client_deliverConcepts_queryUUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E12DD030](*(*(a1 + 32) + 160));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__HKConceptQuery_client_deliverConcepts_queryUUID___block_invoke_2;
    v5[3] = &unk_1E86C1F48;
    v5[4] = v3;
    v6 = *(a1 + 48);
    v7 = v2;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:1 block:v5];
  }
}

- (void)_enumerateConceptsWithHandler:(id)handler handler:(id)a4
{
  handlerCopy = handler;
  v7 = a4;
  v8 = [handlerCopy count];
  if (v8)
  {
    v9 = v8;
    deactivateCallCount = [(HKQuery *)self deactivateCallCount];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__HKConceptQuery__enumerateConceptsWithHandler_handler___block_invoke;
    v11[3] = &unk_1E86C1F98;
    v11[4] = self;
    v13 = deactivateCallCount;
    v14 = v9;
    v12 = v7;
    [handlerCopy enumerateObjectsUsingBlock:v11];
  }

  else
  {
    (*(v7 + 2))(v7, self, 0, 1, 0);
  }
}

void __56__HKConceptQuery__enumerateConceptsWithHandler_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) deactivateCallCount] <= *(a1 + 48))
  {
    v7 = *(a1 + 56) - 1 == a3;
    v8 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *a4 = 1;
  }
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKConceptQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setSelection:{self->_selection, v5.receiver, v5.super_class}];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKConceptQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverConcepts_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = MEMORY[0x1E12DD030](self->_handler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HKConceptQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E86C1FC0;
  v8 = errorCopy;
  v9 = v10;
  block[4] = self;
  v6 = errorCopy;
  dispatch_async(clientQueue, block);

  _Block_object_dispose(v10, 8);
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKConceptQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_handler)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696C7E0] format:{@"%@ handler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKConceptQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  handler = self->_handler;
  self->_handler = 0;
}

@end