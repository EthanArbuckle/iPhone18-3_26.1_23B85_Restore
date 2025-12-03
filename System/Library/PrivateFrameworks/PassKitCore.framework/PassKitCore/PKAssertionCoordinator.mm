@interface PKAssertionCoordinator
+ (id)sharedInstance;
- (id)initSharedInstance;
- (void)_removeAssertionWithIdentifier:(id)identifier;
- (void)acquireAssertionOfType:(unint64_t)type withReason:(id)reason completion:(id)completion;
- (void)assertion:(id)assertion shouldInvalidateWhenBackgrounded:(BOOL)backgrounded;
- (void)dealloc;
- (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion;
- (void)invalidateAssertion:(id)assertion completion:(id)completion;
- (void)isAssertionValid:(id)valid completion:(id)completion;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)remoteServiceDidSuspend:(id)suspend;
@end

@implementation PKAssertionCoordinator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PKAssertionCoordinator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_261 != -1)
  {
    dispatch_once(&_MergedGlobals_261, block);
  }

  v2 = qword_1ED6D2040;

  return v2;
}

void __40__PKAssertionCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initSharedInstance];
  v2 = qword_1ED6D2040;
  qword_1ED6D2040 = v1;
}

- (id)initSharedInstance
{
  v2 = [(PKAssertionCoordinator *)self init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.PassKitCore.assertioncoordinator", v3);
    coordinatorSerialQueue = v2->_coordinatorSerialQueue;
    v2->_coordinatorSerialQueue = v4;

    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    acquiredAssertions = v2->_acquiredAssertions;
    v2->_acquiredAssertions = pk_weakObjectsHashTableUsingPointerPersonality;

    v8 = [PKXPCService alloc];
    v9 = PDAssertionCoordinatorInterface();
    v10 = [(PKXPCService *)v8 initWithMachServiceName:@"com.apple.passd.assertions" remoteObjectInterface:v9 exportedObjectInterface:0 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v10;

    [(PKXPCService *)v2->_remoteService setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(PKXPCService *)self->_remoteService setDelegate:0];
  v3.receiver = self;
  v3.super_class = PKAssertionCoordinator;
  [(PKAssertionCoordinator *)&v3 dealloc];
}

- (void)acquireAssertionOfType:(unint64_t)type withReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKXPCService *)self->_remoteService isSuspended])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_7;
      block[3] = &unk_1E79C4428;
      v16 = completionCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v10 = v16;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke;
      v22[3] = &unk_1E79C4428;
      v13 = completionCopy;
      v23 = v13;
      v14 = [(PKAssertionCoordinator *)self _remoteObjectProxyWithFailureHandler:v22];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_3;
      v17[3] = &unk_1E79DEE38;
      typeCopy = type;
      v17[4] = self;
      v18 = uUIDString;
      v19 = reasonCopy;
      v20 = v13;
      v10 = uUIDString;
      [v14 acquireAssertionOfType:type withIdentifier:v10 reason:v19 handler:v17];
    }
  }
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.passkit.assertion" code:-3 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_4;
  block[3] = &unk_1E79D0428;
  v14 = a2;
  v13 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  dispatch_async(v3, block);
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [[PKAssertion alloc] initWithType:*(a1 + 64) identifier:*(a1 + 32) reason:*(a1 + 40)];
    [*(*(a1 + 48) + 8) addObject:v2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_5;
    block[3] = &unk_1E79C44A0;
    v3 = *(a1 + 56);
    v8 = v2;
    v9 = v3;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_6;
    v5[3] = &unk_1E79C4428;
    v6 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    v4 = v6;
  }
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.passkit.assertion" code:-1 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __71__PKAssertionCoordinator_acquireAssertionOfType_withReason_completion___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.passkit.assertion" code:-2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)invalidateAssertion:(id)assertion completion:(id)completion
{
  assertionCopy = assertion;
  completionCopy = completion;
  identifier = [assertionCopy identifier];
  if ([(PKXPCService *)self->_remoteService connectionEstablished])
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke;
    v25[3] = &unk_1E79C4428;
    v9 = completionCopy;
    v26 = v9;
    v10 = [(PKAssertionCoordinator *)self _remoteObjectProxyWithFailureHandler:v25];
    type = [assertionCopy type];
    identifier2 = [assertionCopy identifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_3;
    v22[3] = &unk_1E79C4D60;
    v22[4] = self;
    v23 = identifier;
    v24 = v9;
    v13 = v9;
    v14 = identifier;
    [v10 invalidateAssertionOfType:type withIdentifier:identifier2 handler:v22];

    v15 = v26;
  }

  else
  {
    coordinatorSerialQueue = self->_coordinatorSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_6;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v20 = identifier;
    v21 = completionCopy;
    v17 = completionCopy;
    v18 = identifier;
    dispatch_async(coordinatorSerialQueue, block);

    v15 = v20;
  }
}

void __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_4;
  block[3] = &unk_1E79C4D60;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _removeAssertionWithIdentifier:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_5;
    block[3] = &unk_1E79C4428;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _removeAssertionWithIdentifier:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKAssertionCoordinator_invalidateAssertion_completion___block_invoke_7;
    block[3] = &unk_1E79C4428;
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)assertion:(id)assertion shouldInvalidateWhenBackgrounded:(BOOL)backgrounded
{
  backgroundedCopy = backgrounded;
  assertionCopy = assertion;
  _remoteObjectProxy = [(PKAssertionCoordinator *)self _remoteObjectProxy];
  type = [assertionCopy type];
  identifier = [assertionCopy identifier];

  [_remoteObjectProxy assertionOfType:type withIdentifier:identifier shouldInvalidateWhenBackgrounded:backgroundedCopy];
}

- (void)isAssertionValid:(id)valid completion:(id)completion
{
  completionCopy = completion;
  validCopy = valid;
  _remoteObjectProxy = [(PKAssertionCoordinator *)self _remoteObjectProxy];
  type = [validCopy type];
  identifier = [validCopy identifier];

  [_remoteObjectProxy assertionOfType:type withIdentifier:identifier isValid:completionCopy];
}

- (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  _remoteObjectProxy = [(PKAssertionCoordinator *)self _remoteObjectProxy];
  [_remoteObjectProxy hasValidAssertionOfType:type completion:completionCopy];
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKAssertionCoordinator_remoteService_didInterruptConnection___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_16;
  block[3] = &unk_1E79C4428;
  v8 = v5;
  dispatch_async(coordinatorSerialQueue, block);
}

void __63__PKAssertionCoordinator_remoteService_didInterruptConnection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = [v2 copy];

  [*(*(a1 + 32) + 8) removeAllObjects];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_186];
}

- (void)remoteServiceDidSuspend:(id)suspend
{
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PKAssertionCoordinator_remoteServiceDidSuspend___block_invoke;
  v5[3] = &unk_1E79C4E28;
  v5[4] = self;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_16;
  block[3] = &unk_1E79C4428;
  v7 = v4;
  dispatch_async(coordinatorSerialQueue, block);
}

void __50__PKAssertionCoordinator_remoteServiceDidSuspend___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = [v2 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 invalidateWhenBackgrounded])
        {
          [*(*(a1 + 32) + 8) removeObject:v9];
          [v9 markAsInvalidatedAndNotify];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_removeAssertionWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_coordinatorSerialQueue);
  v5 = objc_autoreleasePoolPush();
  allObjects = [(NSHashTable *)self->_acquiredAssertions allObjects];
  v7 = [allObjects copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [identifier isEqualToString:identifierCopy];

        if (v15)
        {
          [(NSHashTable *)self->_acquiredAssertions removeObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v5);
}

@end