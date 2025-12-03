@interface EMFocusController
+ (id)predicateForFocus:(id)focus usingAccountRepository:(id)repository;
+ (id)updatedPredicateForFocus:(id)focus currentPredicate:(id)predicate usingAccountRepository:(id)repository;
- (EMFocusController)init;
- (id)_currentFocusedAccountIdentifiers;
- (id)_stateCaptureInformation;
- (id)addObserver:(id)observer currentFocus:(id *)focus;
- (void)_focusModeChanged;
- (void)_registerStateCapture;
- (void)dealloc;
- (void)getCurrentFocus:(id)focus;
@end

@implementation EMFocusController

- (id)_currentFocusedAccountIdentifiers
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults stringArrayForKey:@"FocusedAccountIdentifiers"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EMFocusController)init
{
  v16.receiver = self;
  v16.super_class = EMFocusController;
  v2 = [(EMFocusController *)&v16 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mail.CurrentFocusObservation"];
    observationScheduler = v2->_observationScheduler;
    v2->_observationScheduler = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __25__EMFocusController_init__block_invoke;
    v13[3] = &unk_1E826CF58;
    objc_copyWeak(&v14, &location);
    v8 = [em_userDefaults ef_observeKeyPath:@"FocusedAccountIdentifiers" options:1 autoCancelToken:1 usingBlock:v13];
    observationToken = v2->_observationToken;
    v2->_observationToken = v8;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __25__EMFocusController_init__block_invoke_2;
    v11[3] = &unk_1E826CF80;
    objc_copyWeak(&v12, &location);
    [(EMFocusController *)v2 getCurrentFocus:v11];
    [(EMFocusController *)v2 _registerStateCapture];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__EMFocusController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 10);
    objc_storeStrong(&v5[8], a2);
    os_unfair_lock_unlock(v5 + 10);
  }
}

- (void)_registerStateCapture
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v6, &location);
  v4 = EFLogRegisterStateCaptureBlock();
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void ___ef_log_EMFocusController_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMFocusController");
  v1 = _ef_log_EMFocusController_log;
  _ef_log_EMFocusController_log = v0;
}

void __25__EMFocusController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _focusModeChanged];
  }
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = 0;

  v4.receiver = self;
  v4.super_class = EMFocusController;
  [(EMFocusController *)&v4 dealloc];
}

- (void)getCurrentFocus:(id)focus
{
  focusCopy = focus;
  if (!focusCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMFocusController.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  _currentFocusedAccountIdentifiers = [(EMFocusController *)self _currentFocusedAccountIdentifiers];
  if (_currentFocusedAccountIdentifiers)
  {
    v6 = [[EMFocus alloc] initWithFocusedAccountIdentifiers:_currentFocusedAccountIdentifiers];
  }

  else
  {
    v6 = 0;
  }

  focusCopy[2](focusCopy, v6);
}

- (void)_focusModeChanged
{
  v3 = _ef_log_EMFocusController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Focus mode changed", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EMFocusController__focusModeChanged__block_invoke;
  v4[3] = &unk_1E826CF80;
  objc_copyWeak(&v5, buf);
  [(EMFocusController *)self getCurrentFocus:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __38__EMFocusController__focusModeChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__EMFocusController__focusModeChanged__block_invoke_2;
    v7[3] = &unk_1E826C148;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 performBlock:v7];
  }
}

void __38__EMFocusController__focusModeChanged__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  os_unfair_lock_lock(v3 + 10);
  objc_storeStrong(*v2 + 4, v2[1]);
  v4 = [*(*v2 + 1) allObjects];
  os_unfair_lock_unlock(v3 + 10);
  v5 = _ef_log_EMFocusController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) ef_publicDescription];
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Current focus: %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) currentFocusChanged:{*(a1 + 40), v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addObserver:(id)observer currentFocus:(id *)focus
{
  objc_initWeak(&location, observer);
  v6 = objc_alloc_init(MEMORY[0x1E699B798]);
  objc_initWeak(&from, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__EMFocusController_addObserver_currentFocus___block_invoke;
  v13 = &unk_1E826CFA8;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  [v6 addCancelationBlock:&v10];
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  v8 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v8, v10, v11, v12, v13];

  os_unfair_lock_unlock(&self->_lock);
  if (focus)
  {
    objc_storeStrong(focus, self->_currentFocus);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void __46__EMFocusController_addObserver_currentFocus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 10);
    v3 = *&v5[2]._os_unfair_lock_opaque;
    v4 = objc_loadWeakRetained((a1 + 40));
    [v3 removeObject:v4];

    os_unfair_lock_unlock(v5 + 10);
    WeakRetained = v5;
  }
}

+ (id)updatedPredicateForFocus:(id)focus currentPredicate:(id)predicate usingAccountRepository:(id)repository
{
  predicateCopy = predicate;
  v9 = [self predicateForFocus:focus usingAccountRepository:repository];
  v10 = [MEMORY[0x1E696AE18] ef_andCompoundPredicateForOptionalPredicate:v9 second:predicateCopy];

  return v10;
}

+ (id)predicateForFocus:(id)focus usingAccountRepository:(id)repository
{
  focusCopy = focus;
  repositoryCopy = repository;
  if (focusCopy)
  {
    focusedAccountIdentifiers = [focusCopy focusedAccountIdentifiers];
    if ([focusedAccountIdentifiers count])
    {
      receivingAccounts = [repositoryCopy receivingAccounts];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __62__EMFocusController_predicateForFocus_usingAccountRepository___block_invoke;
      v12[3] = &unk_1E826CFD0;
      v13 = focusedAccountIdentifiers;
      v9 = [receivingAccounts ef_compactMap:v12];

      ef_matchNothingPredicate = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v9];
    }

    else
    {
      ef_matchNothingPredicate = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
    }
  }

  else
  {
    ef_matchNothingPredicate = 0;
  }

  return ef_matchNothingPredicate;
}

id __62__EMFocusController_predicateForFocus_usingAccountRepository___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  v6 = [v5 representedObjectID];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = [EMMessageListItemPredicates predicateForAccount:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stateCaptureInformation
{
  v11[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v10 = @"Focused Account Identifiers";
  _currentFocusedAccountIdentifiers = [(EMFocusController *)self _currentFocusedAccountIdentifiers];
  allObjects = [_currentFocusedAccountIdentifiers allObjects];
  v5 = allObjects;
  v6 = MEMORY[0x1E695E0F0];
  if (allObjects)
  {
    v6 = allObjects;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__EMFocusController__registerStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateCaptureInformation];

  return v2;
}

@end