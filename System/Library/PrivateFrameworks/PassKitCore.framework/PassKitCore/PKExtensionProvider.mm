@interface PKExtensionProvider
+ (id)providerForExtensionPoint:(id)point;
- (PKExtensionProvider)initWithExtensionPoint:(id)point;
- (id)_extensionMatchingEntitlementAttribute;
- (id)_extensionsForContainingApplicationIdentifiers:(id)identifiers;
- (void)_beginMatchingExtensionsWithCompletion:(id)completion;
- (void)_endMatchingExtensions;
- (void)_finishedMatchingExtensions:(id)extensions withError:(id)error;
- (void)_invokeAndClearBeginMatchingCompletionsWithError:(id)error;
- (void)beginExtensionRequestWithExtension:(id)extension inputItems:(id)items completion:(id)completion;
- (void)dealloc;
- (void)extensionWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)extensionsWithContainingApplicationIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation PKExtensionProvider

+ (id)providerForExtensionPoint:(id)point
{
  pointCopy = point;
  os_unfair_lock_lock(&_MergedGlobals_247);
  v4 = [qword_1ED6D1F00 objectForKey:pointCopy];
  if (!v4)
  {
    v4 = [[PKExtensionProvider alloc] initWithExtensionPoint:pointCopy];
    v5 = qword_1ED6D1F00;
    if (!qword_1ED6D1F00)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = qword_1ED6D1F00;
      qword_1ED6D1F00 = v6;

      v5 = qword_1ED6D1F00;
    }

    [v5 setObject:v4 forKey:pointCopy];
  }

  os_unfair_lock_unlock(&_MergedGlobals_247);

  return v4;
}

- (PKExtensionProvider)initWithExtensionPoint:(id)point
{
  pointCopy = point;
  v15.receiver = self;
  v15.super_class = PKExtensionProvider;
  v6 = [(PKExtensionProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionPoint, point);
    v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
    passKitExtensions = v7->_passKitExtensions;
    v7->_passKitExtensions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    beginMatchingCompletions = v7->_beginMatchingCompletions;
    v7->_beginMatchingCompletions = v10;

    v12 = dispatch_queue_create("com.apple.PassKit.extension-queue", 0);
    extensionQueue = v7->_extensionQueue;
    v7->_extensionQueue = v12;
  }

  return v7;
}

- (void)dealloc
{
  [(PKExtensionProvider *)self _endMatchingExtensions];
  v3.receiver = self;
  v3.super_class = PKExtensionProvider;
  [(PKExtensionProvider *)&v3 dealloc];
}

- (void)extensionWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Getting extension with bundle identifier: %@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79DC0A0;
    v9 = identifierCopy;
    v17 = v9;
    v18 = completionCopy;
    v10 = _Block_copy(aBlock);
    extensionQueue = self->_extensionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke_35;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v14 = v9;
    v15 = v10;
    v12 = v10;
    dispatch_async(extensionQueue, block);
  }
}

void __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Finished getting extension with bundle identifier: %@, matched extension: %@, error: %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke_35(id *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__57;
  v13 = __Block_byref_object_dispose__57;
  v14 = [*(a1[4] + 3) objectForKey:a1[5]];
  if (v10[5])
  {
    (*(a1[6] + 2))();
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    v2 = a1[4];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke_36;
    v3[3] = &unk_1E79DC0C8;
    objc_copyWeak(&v7, &location);
    v5 = a1[6];
    v6 = &v9;
    v4 = a1[5];
    [v2 _beginMatchingExtensionsWithCompletion:v3];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v9, 8);
}

void __64__PKExtensionProvider_extensionWithBundleIdentifier_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && !v7)
  {
    v4 = [WeakRetained[3] objectForKey:*(a1 + 32)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:0];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)extensionsWithContainingApplicationIdentifiers:(id)identifiers completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = identifiersCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Getting extensions with containing application identifiers: %@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke;
    aBlock[3] = &unk_1E79C4BD0;
    v9 = identifiersCopy;
    v17 = v9;
    v18 = completionCopy;
    v10 = _Block_copy(aBlock);
    extensionQueue = self->_extensionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke_41;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v14 = v9;
    v15 = v10;
    v12 = v10;
    dispatch_async(extensionQueue, block);
  }
}

void __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Finished getting extensions with containing application identifiers: %@, matched extensions: %@, error: %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke_41(id *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__57;
  v13 = __Block_byref_object_dispose__57;
  v14 = [a1[4] _extensionsForContainingApplicationIdentifiers:a1[5]];
  if ([v10[5] count])
  {
    (*(a1[6] + 2))();
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    v2 = a1[4];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke_2;
    v3[3] = &unk_1E79DC0C8;
    objc_copyWeak(&v7, &location);
    v5 = a1[6];
    v6 = &v9;
    v4 = a1[5];
    [v2 _beginMatchingExtensionsWithCompletion:v3];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v9, 8);
}

void __81__PKExtensionProvider_extensionsWithContainingApplicationIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && !v7)
  {
    v4 = [WeakRetained _extensionsForContainingApplicationIdentifiers:*(a1 + 32)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:0];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)beginExtensionRequestWithExtension:(id)extension inputItems:(id)items completion:(id)completion
{
  extensionCopy = extension;
  itemsCopy = items;
  completionCopy = completion;
  extension = [extensionCopy extension];
  if (extension)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__PKExtensionProvider_beginExtensionRequestWithExtension_inputItems_completion___block_invoke;
    v12[3] = &unk_1E79D19E8;
    v14 = completionCopy;
    v13 = extensionCopy;
    [extension beginExtensionRequestWithInputItems:itemsCopy completion:v12];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:0];
    (*(completionCopy + 2))(completionCopy, extensionCopy, 0, v11);
  }
}

uint64_t __80__PKExtensionProvider_beginExtensionRequestWithExtension_inputItems_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2, a3);
  }

  return result;
}

- (void)_finishedMatchingExtensions:(id)extensions withError:(id)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  errorCopy = error;
  self->_isBeginningMatching = 0;
  extensionMatchTimer = self->_extensionMatchTimer;
  if (extensionMatchTimer)
  {
    dispatch_source_cancel(extensionMatchTimer);
    v9 = self->_extensionMatchTimer;
    self->_extensionMatchTimer = 0;
  }

  if (errorCopy)
  {
    [(PKExtensionProvider *)self _invokeAndClearBeginMatchingCompletionsWithError:errorCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__PKExtensionProvider__finishedMatchingExtensions_withError___block_invoke;
    v20[3] = &unk_1E79DC0F0;
    v21 = dictionary;
    selfCopy = self;
    v11 = dictionary;
    [extensionsCopy enumerateObjectsUsingBlock:v20];
    passKitExtensions = self->_passKitExtensions;
    if (v11)
    {
      v13 = passKitExtensions == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = passKitExtensions == v11;
    }

    else
    {
      v14 = [(NSDictionary *)passKitExtensions isEqual:v11];
    }

    v15 = [(NSDictionary *)v11 copy];
    v16 = self->_passKitExtensions;
    self->_passKitExtensions = v15;

    [(PKExtensionProvider *)self _invokeAndClearBeginMatchingCompletionsWithError:0];
    if (v14)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v23 = @"PKExtensionAvailableExtensions";
      allValues = [(NSDictionary *)self->_passKitExtensions allValues];
      v24[0] = allValues;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [defaultCenter postNotificationName:@"PKExtensionAvailableExtensionsChangedNotification" object:0 userInfo:v19];
    }
  }
}

void __61__PKExtensionProvider__finishedMatchingExtensions_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 identifier];
  v4 = *(a1 + 32);
  v5 = [[PKExtension alloc] initWithIdentifier:v6 extension:v3 provider:*(a1 + 40)];

  [v4 setObject:v5 forKey:v6];
}

- (void)_beginMatchingExtensionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    beginMatchingCompletions = self->_beginMatchingCompletions;
    v7 = _Block_copy(completionCopy);
    [(NSMutableArray *)beginMatchingCompletions addObject:v7];
  }

  if (self->_matchingContext)
  {
    if (!self->_isBeginningMatching)
    {
      [(PKExtensionProvider *)self _invokeAndClearBeginMatchingCompletionsWithError:0];
    }
  }

  else
  {
    self->_isBeginningMatching = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:self->_extensionPoint forKey:*MEMORY[0x1E696A2F8]];
    _extensionMatchingEntitlementAttribute = [(PKExtensionProvider *)self _extensionMatchingEntitlementAttribute];
    if (_extensionMatchingEntitlementAttribute)
    {
      [v8 setObject:MEMORY[0x1E695E118] forKey:_extensionMatchingEntitlementAttribute];
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E696ABD0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PKExtensionProvider__beginMatchingExtensionsWithCompletion___block_invoke;
    v19[3] = &unk_1E79C9550;
    objc_copyWeak(&v20, &location);
    v11 = [v10 beginMatchingExtensionsWithAttributes:v8 completion:v19];
    matchingContext = self->_matchingContext;
    self->_matchingContext = v11;

    if (self->_matchingContext)
    {
      v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_extensionQueue);
      extensionMatchTimer = self->_extensionMatchTimer;
      self->_extensionMatchTimer = v13;

      v15 = self->_extensionMatchTimer;
      v16 = dispatch_time(0, 3000000000);
      dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v17 = self->_extensionMatchTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __62__PKExtensionProvider__beginMatchingExtensionsWithCompletion___block_invoke_3;
      handler[3] = &unk_1E79C4E28;
      handler[4] = self;
      dispatch_source_set_event_handler(v17, handler);
      dispatch_resume(self->_extensionMatchTimer);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __62__PKExtensionProvider__beginMatchingExtensionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PKExtensionProvider__beginMatchingExtensionsWithCompletion___block_invoke_2;
    block[3] = &unk_1E79C4E00;
    block[4] = WeakRetained;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __62__PKExtensionProvider__beginMatchingExtensionsWithCompletion___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A278];
  v6[0] = @"Extension matching timed out";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:v3];
  [v1 _finishedMatchingExtensions:0 withError:v4];
}

- (void)_endMatchingExtensions
{
  if (self->_matchingContext)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }

  extensionMatchTimer = self->_extensionMatchTimer;
  if (extensionMatchTimer)
  {
    dispatch_source_cancel(extensionMatchTimer);
    v5 = self->_extensionMatchTimer;
    self->_extensionMatchTimer = 0;
  }
}

- (void)_invokeAndClearBeginMatchingCompletionsWithError:(id)error
{
  errorCopy = error;
  beginMatchingCompletions = self->_beginMatchingCompletions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKExtensionProvider__invokeAndClearBeginMatchingCompletionsWithError___block_invoke;
  v7[3] = &unk_1E79DC118;
  v8 = errorCopy;
  v6 = errorCopy;
  [(NSMutableArray *)beginMatchingCompletions enumerateObjectsUsingBlock:v7];
  [(NSMutableArray *)self->_beginMatchingCompletions removeAllObjects];
}

- (id)_extensionsForContainingApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  allValues = [(NSDictionary *)self->_passKitExtensions allValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKExtensionProvider__extensionsForContainingApplicationIdentifiers___block_invoke;
  v9[3] = &unk_1E79DC140;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [allValues pk_objectsPassingTest:v9];

  return v7;
}

uint64_t __70__PKExtensionProvider__extensionsForContainingApplicationIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PKExtensionProvider__extensionsForContainingApplicationIdentifiers___block_invoke_2;
  v8[3] = &unk_1E79CA4C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 pk_containsObjectPassingTest:v8];

  return v6;
}

uint64_t __70__PKExtensionProvider__extensionsForContainingApplicationIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containingApplicationIdentifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
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

- (id)_extensionMatchingEntitlementAttribute
{
  v2 = self->_extensionPoint;
  if (v2 == @"com.apple.PassKit.payment-information-event")
  {
    return @"ENTITLEMENT:com.apple.developer.payment-information-event-eligible";
  }

  v3 = v2;
  if (v2 && (v4 = [(__CFString *)v2 isEqualToString:@"com.apple.PassKit.payment-information-event"], v3, v4))
  {
    return @"ENTITLEMENT:com.apple.developer.payment-information-event-eligible";
  }

  else
  {
    return 0;
  }
}

@end