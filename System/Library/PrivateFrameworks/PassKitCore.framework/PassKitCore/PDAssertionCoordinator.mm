@interface PDAssertionCoordinator
+ (id)suppressionApplicationRegistry;
- (BOOL)hasAssertionsOfType:(unint64_t)type;
- (NSString)description;
- (PDAssertionCoordinator)initWithConnection:(id)connection;
- (PDAssertionCoordinatorDelegate)delegate;
- (id)assertionsOfType:(unint64_t)type;
- (void)_acquireAssertion:(id)assertion handler:(id)handler;
- (void)_acquireContactlessInterfaceSuppressionAssertion:(id)assertion handler:(id)handler;
- (void)_addRequestForAssertion:(id)assertion handler:(id)handler;
- (void)_cancelPendingAssertionRequest:(id)request;
- (void)_processPendingAssertionRequests;
- (void)_showAlertForContactlessInterfaceSuppression;
- (void)acquireAssertionOfType:(unint64_t)type withIdentifier:(id)identifier reason:(id)reason handler:(id)handler;
- (void)assertionOfType:(unint64_t)type withIdentifier:(id)identifier isValid:(id)valid;
- (void)assertionOfType:(unint64_t)type withIdentifier:(id)identifier shouldInvalidateWhenBackgrounded:(BOOL)backgrounded;
- (void)assertionRequestDidTimeout:(id)timeout;
- (void)cancelPendingAssertionRequests;
- (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion;
- (void)invalidateAllAssertions;
- (void)invalidateAssertionOfType:(unint64_t)type withIdentifier:(id)identifier handler:(id)handler;
- (void)invalidateAssertionsForBackgroundApplicationState;
- (void)processPendingAssertionRequests;
@end

@implementation PDAssertionCoordinator

+ (id)suppressionApplicationRegistry
{
  if (qword_1EB5B7EC0 != -1)
  {
    dispatch_once(&qword_1EB5B7EC0, &__block_literal_global_196);
  }

  v3 = _MergedGlobals_7_0;

  return v3;
}

void __56__PDAssertionCoordinator_suppressionApplicationRegistry__block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = PKHomeDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"SuppressionApplicationRegistry.archive"];
  v5 = [v0 fileURLWithPath:v2];

  v3 = [[PKApplicationRegistry alloc] initWithArchiveFileURL:v5];
  v4 = _MergedGlobals_7_0;
  _MergedGlobals_7_0 = v3;
}

- (PDAssertionCoordinator)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = PDAssertionCoordinator;
  v5 = [(PDXPCService *)&v17 initWithConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assertionsByType = v6->_assertionsByType;
    v6->_assertionsByType = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingAssertionRequests = v6->_pendingAssertionRequests;
    v6->_pendingAssertionRequests = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.passd.assertioncoordinator", v11);
    coordinatorSerialQueue = v6->_coordinatorSerialQueue;
    v6->_coordinatorSerialQueue = v12;

    v14 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    whitelist = v6->_whitelist;
    v6->_whitelist = v14;

    v6->_suppressionPermissionState = -1;
    v6->_isForegroundApplication = 1;
  }

  return v6;
}

- (void)acquireAssertionOfType:(unint64_t)type withIdentifier:(id)identifier reason:(id)reason handler:(id)handler
{
  identifierCopy = identifier;
  reasonCopy = reason;
  handlerCopy = handler;
  if (handlerCopy)
  {
    coordinatorSerialQueue = self->_coordinatorSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PDAssertionCoordinator_acquireAssertionOfType_withIdentifier_reason_handler___block_invoke;
    block[3] = &unk_1E79D1F80;
    typeCopy = type;
    v15 = identifierCopy;
    v16 = reasonCopy;
    selfCopy = self;
    v18 = handlerCopy;
    dispatch_async(coordinatorSerialQueue, block);
  }
}

void __79__PDAssertionCoordinator_acquireAssertionOfType_withIdentifier_reason_handler___block_invoke(uint64_t a1)
{
  v2 = [[PDAssertion alloc] initWithType:*(a1 + 64) identifier:*(a1 + 32) reason:*(a1 + 40)];
  [*(a1 + 48) _addRequestForAssertion:v2 handler:*(a1 + 56)];
  [*(a1 + 48) _processPendingAssertionRequests];
}

- (void)invalidateAssertionOfType:(unint64_t)type withIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PDAssertionCoordinator_invalidateAssertionOfType_withIdentifier_handler___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = identifierCopy;
  dispatch_async(coordinatorSerialQueue, v13);
}

void __75__PDAssertionCoordinator_invalidateAssertionOfType_withIdentifier_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(*(a1 + 32) + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__PDAssertionCoordinator_invalidateAssertionOfType_withIdentifier_handler___block_invoke_2;
    v18[3] = &unk_1E79DFD80;
    v19 = *(a1 + 40);
    v5 = [v4 indexesOfObjectsPassingTest:v18];
    v6 = [v4 objectsAtIndexes:v5];
    [v4 removeObjectsAtIndexes:v5];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [WeakRetained assertionCoordinator:*(a1 + 32) didInvalidateAssertion:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

uint64_t __75__PDAssertionCoordinator_invalidateAssertionOfType_withIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)assertionOfType:(unint64_t)type withIdentifier:(id)identifier shouldInvalidateWhenBackgrounded:(BOOL)backgrounded
{
  identifierCopy = identifier;
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PDAssertionCoordinator_assertionOfType_withIdentifier_shouldInvalidateWhenBackgrounded___block_invoke;
  v11[3] = &unk_1E79DBE18;
  v12 = identifierCopy;
  typeCopy = type;
  v11[4] = self;
  backgroundedCopy = backgrounded;
  v10 = identifierCopy;
  dispatch_async(coordinatorSerialQueue, v11);
}

void __90__PDAssertionCoordinator_assertionOfType_withIdentifier_shouldInvalidateWhenBackgrounded___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(*(a1 + 32) + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__PDAssertionCoordinator_assertionOfType_withIdentifier_shouldInvalidateWhenBackgrounded___block_invoke_2;
  v5[3] = &unk_1E79DFDA8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __90__PDAssertionCoordinator_assertionOfType_withIdentifier_shouldInvalidateWhenBackgrounded___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v12 = v6;
  v8 = [v6 identifier];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    if (v7 != v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = [v7 isEqual:v8];

  if (v11)
  {
LABEL_9:
    [v12 setInvalidateWhenBackgrounded:*(a1 + 40)];
    *a4 = 1;
  }

LABEL_10:
}

- (void)assertionOfType:(unint64_t)type withIdentifier:(id)identifier isValid:(id)valid
{
  identifierCopy = identifier;
  validCopy = valid;
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PDAssertionCoordinator_assertionOfType_withIdentifier_isValid___block_invoke;
  v13[3] = &unk_1E79C4D88;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = validCopy;
  typeCopy = type;
  v11 = validCopy;
  v12 = identifierCopy;
  dispatch_async(coordinatorSerialQueue, v13);
}

void __65__PDAssertionCoordinator_assertionOfType_withIdentifier_isValid___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v3 = *(*(a1 + 32) + 56);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PDAssertionCoordinator_assertionOfType_withIdentifier_isValid___block_invoke_2;
    v8[3] = &unk_1E79DFD80;
    v1 = &v9;
    v9 = *(a1 + 40);
    v6 = [v5 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  if (v5)
  {
  }
}

uint64_t __65__PDAssertionCoordinator_assertionOfType_withIdentifier_isValid___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)hasValidAssertionOfType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  delegate = [(PDAssertionCoordinator *)self delegate];
  v7 = [delegate assertionCoordinator:self assertionExistsOfType:type];

  completionCopy[2](completionCopy, v7);
}

- (void)_showAlertForContactlessInterfaceSuppression
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = PDLocalizedAppNameForBundleIDOrPID(self->_bundleIdentifier, [(PDXPCService *)self remoteProcessIdentifier]);
  v3 = PKLocalizedPaymentString(&cfstr_ContactlessInt.isa, &stru_1F2281668.isa, v2);
  v4 = *MEMORY[0x1E695EE58];
  v9[0] = v3;
  v5 = *MEMORY[0x1E695EE78];
  v8[0] = v4;
  v8[1] = v5;
  v6 = PKLocalizedPaymentString(&cfstr_ContactlessInt_0.isa, 0);
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  [PKUserNotificationAgent presentNotificationWithParameters:v7 responseHandler:0];
}

- (void)_acquireContactlessInterfaceSuppressionAssertion:(id)assertion handler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  handlerCopy = handler;
  v8 = handlerCopy;
  suppressionPermissionState = self->_suppressionPermissionState;
  if (suppressionPermissionState == 1)
  {
    [(PDAssertionCoordinator *)self _acquireAssertion:assertionCopy handler:handlerCopy];
  }

  else if (suppressionPermissionState)
  {
    if (suppressionPermissionState == -1)
    {
      v10 = +[PDAssertionCoordinator suppressionApplicationRegistry];
      if ([(PKEntitlementWhitelist *)self->_whitelist paymentAllAccess]|| [(PKEntitlementWhitelist *)self->_whitelist paymentPresentation]|| [(PKEntitlementWhitelist *)self->_whitelist passPresentationSuppression])
      {
        if ([v10 applicationIsRegisteredWithBundleIdentifier:self->_bundleIdentifier])
        {
LABEL_10:
          self->_suppressionPermissionState = 1;
          [(PDAssertionCoordinator *)self _acquireAssertion:assertionCopy handler:v8];
LABEL_17:

          goto LABEL_18;
        }

        if ([v10 registerApplicationWithBundleIdentifier:self->_bundleIdentifier])
        {
          [(PDAssertionCoordinator *)self _showAlertForContactlessInterfaceSuppression];
          goto LABEL_10;
        }
      }

      else
      {
        v11 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier = self->_bundleIdentifier;
          v13 = 138412546;
          v14 = bundleIdentifier;
          v15 = 1024;
          remoteProcessIdentifier = [(PDXPCService *)self remoteProcessIdentifier];
          _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Application (%@:%d) is missing entitlement for contactless interface suppression.", &v13, 0x12u);
        }
      }

      self->_suppressionPermissionState = 0;
      v8[2](v8, 0);
      goto LABEL_17;
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_18:
}

- (void)_acquireAssertion:(id)assertion handler:(id)handler
{
  assertionCopy = assertion;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained assertionCoordinator:self canAcquireAssertion:assertionCopy];

  if (v9)
  {
    type = [assertionCopy type];
    os_unfair_lock_lock(&self->_lock);
    assertionsByType = self->_assertionsByType;
    p_isa = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v13 = [(NSMutableDictionary *)assertionsByType objectForKeyedSubscript:p_isa];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      p_isa = &self->_assertionsByType->super.super.isa;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
      [p_isa setObject:v13 forKeyedSubscript:v14];
    }

    identifier = [assertionCopy identifier];
    v16 = identifier;
    if (v13)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52__PDAssertionCoordinator__acquireAssertion_handler___block_invoke;
      v19[3] = &unk_1E79DFD80;
      v17 = identifier;
      v20 = v17;
      if ([v13 indexOfObjectPassingTest:v19] != 0x7FFFFFFFFFFFFFFFLL)
      {
        os_unfair_lock_unlock(&self->_lock);

        v18 = 0;
LABEL_13:

        goto LABEL_14;
      }

      p_isa = &v20;
    }

    [v13 addObject:assertionCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (v13)
    {
    }

    else
    {
      v13 = v16;
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 assertionCoordinator:self didAcquireAssertion:assertionCopy];
    v18 = 1;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:
  handlerCopy[2](handlerCopy, v18);
}

uint64_t __52__PDAssertionCoordinator__acquireAssertion_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)_addRequestForAssertion:(id)assertion handler:(id)handler
{
  handlerCopy = handler;
  assertionCopy = assertion;
  v8 = [[PDAssertionRequest alloc] initWithAssertion:assertionCopy delegate:self resultHandler:handlerCopy];

  [(NSMutableArray *)self->_pendingAssertionRequests addObject:v8];
}

- (void)_cancelPendingAssertionRequest:(id)request
{
  requestCopy = request;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  pendingAssertionRequests = self->_pendingAssertionRequests;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __57__PDAssertionCoordinator__cancelPendingAssertionRequest___block_invoke;
  v10 = &unk_1E79DFDD0;
  v6 = requestCopy;
  v11 = v6;
  v12 = &v13;
  [(NSMutableArray *)pendingAssertionRequests enumerateObjectsUsingBlock:&v7];
  if (v14[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_pendingAssertionRequests removeObjectAtIndex:v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);
}

void __57__PDAssertionCoordinator__cancelPendingAssertionRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    v6 = [a2 resultHandler];
    if (v6)
    {
      v7 = v6;
      v6[2](v6, 0);
      v6 = v7;
    }

    *a4 = 1;
  }
}

- (void)_processPendingAssertionRequests
{
  v3 = [(NSMutableArray *)self->_pendingAssertionRequests copy];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PDAssertionCoordinator__processPendingAssertionRequests__block_invoke;
  v4[3] = &unk_1E79DFDF8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __58__PDAssertionCoordinator__processPendingAssertionRequests__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 assertion];
  v4 = [v3 type];
  v5 = [v10 resultHandler];
  v6 = [*(*(a1 + 32) + 72) passPresentationSuppressionFromBackground];
  v7 = *(a1 + 32);
  if (v7[96] & 1) != 0 || (v4 ? (v8 = v4 == 5) : (v8 = 1), v8 ? (v9 = 0) : (v9 = 1), ((v9 | v6)))
  {
    if (v4 == 5)
    {
      [v7 _acquireContactlessInterfaceSuppressionAssertion:v3 handler:v5];
    }

    else
    {
      [v7 _acquireAssertion:v3 handler:v5];
    }

    [*(*(a1 + 32) + 88) removeObject:v10];
  }
}

- (void)assertionRequestDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PDAssertionCoordinator_assertionRequestDidTimeout___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v7[4] = self;
  v8 = timeoutCopy;
  v6 = timeoutCopy;
  dispatch_async(coordinatorSerialQueue, v7);
}

- (void)invalidateAllAssertions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_assertionsByType copy];
  [(NSMutableDictionary *)self->_assertionsByType removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PDAssertionCoordinator_invalidateAllAssertions__block_invoke;
  v4[3] = &unk_1E79DFA60;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __49__PDAssertionCoordinator_invalidateAllAssertions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PDAssertionCoordinator_invalidateAllAssertions__block_invoke_2;
  v4[3] = &unk_1E79DFE20;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void __49__PDAssertionCoordinator_invalidateAllAssertions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 104));
  [WeakRetained assertionCoordinator:*(a1 + 32) didInvalidateAssertion:v4];
}

- (void)invalidateAssertionsForBackgroundApplicationState
{
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PDAssertionCoordinator_invalidateAssertionsForBackgroundApplicationState__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(coordinatorSerialQueue, block);
}

void __75__PDAssertionCoordinator_invalidateAssertionsForBackgroundApplicationState__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock((*(a1 + 32) + 48));
  [*(*(a1 + 32) + 56) allKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v6];
        v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_73_0];
        if ([v8 count])
        {
          v9 = [v7 objectsAtIndexes:v8];
          [v17 addObjectsFromArray:v9];

          [v7 removeObjectsAtIndexes:v8];
        }

        if (![v7 count])
        {
          [*(*(a1 + 32) + 56) removeObjectForKey:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v17;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [WeakRetained assertionCoordinator:*(a1 + 32) didInvalidateAssertion:*(*(&v18 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }
}

- (id)assertionsOfType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  assertionsByType = self->_assertionsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v7 = [(NSMutableDictionary *)assertionsByType objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)hasAssertionsOfType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  assertionsByType = self->_assertionsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v7 = [(NSMutableDictionary *)assertionsByType objectForKeyedSubscript:v6];
  v8 = [v7 count] != 0;

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)processPendingAssertionRequests
{
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PDAssertionCoordinator_processPendingAssertionRequests__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(coordinatorSerialQueue, block);
}

- (void)cancelPendingAssertionRequests
{
  coordinatorSerialQueue = self->_coordinatorSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PDAssertionCoordinator_cancelPendingAssertionRequests__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(coordinatorSerialQueue, block);
}

void __56__PDAssertionCoordinator_cancelPendingAssertionRequests__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  [*(*(a1 + 32) + 88) removeAllObjects];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_75_0];
}

void __56__PDAssertionCoordinator_cancelPendingAssertionRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 resultHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    v2 = v3;
  }
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"bundle: %@, ", self->_bundleIdentifier];
  [v3 appendFormat:@"pid: %d, ", -[PDXPCService remoteProcessIdentifier](self, "remoteProcessIdentifier")];
  if (self->_isForegroundApplication)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@"isForegroundApplication: %@>", v4];
  v5 = [v3 copy];

  return v5;
}

- (PDAssertionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end