@interface PKDiscoveryService
+ (PKDiscoveryService)sharedInstance;
- (PKDiscoveryService)init;
- (id)errorHandlerForMethod:(SEL)a3 completion:(id)a4;
- (id)observers;
- (int64_t)welcomeCardCount;
- (void)addObserver:(id)a3;
- (void)beginReporingDiscoveryAnalytics;
- (void)completedCTAForItem:(id)a3;
- (void)completedDiscoveryItemCTAWithCompletion:(id)a3;
- (void)deleteRuleWithIdentifier:(id)a3 completion:(id)a4;
- (void)dialogRequestsChangedForPlacement:(id)a3;
- (void)dialogRequestsForPlacement:(id)a3 completion:(id)a4;
- (void)discoveryArticleLayoutForItemWithIdentifier:(id)a3 completion:(id)a4;
- (void)discoveryArticleLayoutsUpdated:(id)a3;
- (void)discoveryArticleLayoutsWithCompletion:(id)a3;
- (void)discoveryEngagementMessagesForPassUniqueIdentifier:(id)a3 active:(unint64_t)a4 completion:(id)a5;
- (void)discoveryEngagementMessagesUpdated;
- (void)discoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 isScrollable:(BOOL)a5;
- (void)discoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 wasScrolledToTheBottom:(BOOL)a5;
- (void)discoveryItemWithIdentifier:(id)a3 launchedWithReferralSource:(unint64_t)a4;
- (void)discoveryItemsWithCompletion:(id)a3;
- (void)dismissDialogRequestWithIdentifier:(id)a3 forPlacement:(id)a4 completion:(id)a5;
- (void)dismissedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 cardSize:(int64_t)a5;
- (void)dismissedDiscoveryItems:(id)a3;
- (void)displayedDiscoveryEngagementMessageWithIdentifier:(id)a3;
- (void)displayedDiscoveryItemWithIdentifier:(id)a3 isWelcomeCard:(BOOL)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 callToAction:(int64_t)a7 cardSize:(int64_t)a8;
- (void)endReporingDiscoveryAnalytics;
- (void)evaluateRulesWithIdentifiers:(id)a3 completion:(id)a4;
- (void)expandedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 cardSize:(int64_t)a7;
- (void)fetchUserProperties:(id)a3 withParameters:(id)a4 completion:(id)a5;
- (void)fireEngagementEventNamed:(id)a3 completion:(id)a4;
- (void)insertDiscoveryEngagementMessages:(id)a3 completion:(id)a4;
- (void)insertDiscoveryItems:(id)a3 discoveryArticleLayouts:(id)a4 completion:(id)a5;
- (void)insertRule:(id)a3 completion:(id)a4;
- (void)manifestAllowsMiniCardsWithCompletion:(id)a3;
- (void)processDiscoveryItemsAndMessagesWithCompletion:(id)a3;
- (void)removeDiscoveryMessageWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeDiscoveryUserNotificationsWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removedAllDiscoveryItems;
- (void)rulesWithCompletion:(id)a3;
- (void)tappedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 cardSize:(int64_t)a5;
- (void)updateDiscoveryEngagementMessageWithIdentifier:(id)a3 forAction:(int64_t)a4 completion:(id)a5;
- (void)updateDiscoveryItemWithIdentifier:(id)a3 forAction:(int64_t)a4 completion:(id)a5;
- (void)updateDiscoveryManifestWithCompletion:(id)a3;
@end

@implementation PKDiscoveryService

+ (PKDiscoveryService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKDiscoveryService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_286 != -1)
  {
    dispatch_once(&_MergedGlobals_286, block);
  }

  v2 = qword_1ED6D22D0;

  return v2;
}

- (PKDiscoveryService)init
{
  if (!PKSecureElementIsAvailable())
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_1AD337000, v12, OS_LOG_TYPE_ERROR, "Discovery Service isn't supported on this device.", v14, 2u);
    }

    v3 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = PKDiscoveryService;
  v3 = [(PKDiscoveryService *)&v15 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.passkit.pkdiscoveryservice.reply", 0);
    v5 = *(v3 + 2);
    *(v3 + 2) = v4;

    v6 = [PKXPCService alloc];
    v7 = PDDiscoveryServiceInterface();
    v8 = PKDiscoveryServiceInterface();
    v9 = [(PKXPCService *)v6 initWithMachServiceName:@"com.apple.passd.discovery" remoteObjectInterface:v7 exportedObjectInterface:v8 exportedObject:v3];
    v10 = *(v3 + 1);
    *(v3 + 1) = v9;

    *(v3 + 8) = 0;
    v11 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    self = *(v3 + 3);
    *(v3 + 3) = v11;
LABEL_7:
  }

  return v3;
}

void __36__PKDiscoveryService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D22D0;
  qword_1ED6D22D0 = v1;
}

- (void)beginReporingDiscoveryAnalytics
{
  v3 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v4 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v3];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKDiscoveryService_beginReporingDiscoveryAnalytics__block_invoke;
  v5[3] = &unk_1E79C7D08;
  v5[4] = self;
  [v4 beginReportingDiscoveryAnalyticsCompletion:v5];
}

void __53__PKDiscoveryService_beginReporingDiscoveryAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKDiscoveryService_beginReporingDiscoveryAnalytics__block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __53__PKDiscoveryService_beginReporingDiscoveryAnalytics__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in beginReporingDiscoveryAnalytics: %@", &v3, 0xCu);
    }
  }
}

- (void)discoveryEngagementMessagesUpdated
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PKDiscoveryService *)self observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 discoveryServiceDidReceiveUpdatedDiscoveryEngagementMessages:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)observers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v4 = [v3 copy];

  return v4;
}

- (id)errorHandlerForMethod:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKDiscoveryService_errorHandlerForMethod_completion___block_invoke;
  aBlock[3] = &unk_1E79C8E18;
  v12 = v6;
  v13 = a3;
  aBlock[4] = self;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

void __55__PKDiscoveryService_errorHandlerForMethod_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKDiscoveryService %@];", &buf, 0xCu);
  }

  v6 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PKDiscoveryService_errorHandlerForMethod_completion___block_invoke_34;
  v11[3] = &unk_1E79C44F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v3;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v16 = __dispatch_async_ar_block_invoke_24;
  v17 = &unk_1E79C4428;
  v18 = v9;
  v10 = v3;
  dispatch_async(v6, &buf);
}

uint64_t __55__PKDiscoveryService_errorHandlerForMethod_completion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)discoveryArticleLayoutsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = v7;
    [v9 discoveryArticleLayoutsWithCompletion:v10];
  }
}

uint64_t __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __60__PKDiscoveryService_discoveryArticleLayoutsWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)discoveryArticleLayoutForItemWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79E4880;
    v13[4] = self;
    v14 = v9;
    [v12 discoveryArticleLayoutForItemWithIdentifier:v10 completion:v13];
  }
}

uint64_t __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __77__PKDiscoveryService_discoveryArticleLayoutForItemWithIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateDiscoveryManifestWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4C70;
    v10[4] = self;
    v11 = v7;
    [v9 updateDiscoveryManifestWithCompletion:v10];
  }
}

uint64_t __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __60__PKDiscoveryService_updateDiscoveryManifestWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)manifestAllowsMiniCardsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKDiscoveryService_manifestAllowsMiniCardsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKDiscoveryService_manifestAllowsMiniCardsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79E48A8;
    v11 = v7;
    [v9 manifestAllowsMiniCardsWithCompletion:v10];
  }
}

uint64_t __60__PKDiscoveryService_manifestAllowsMiniCardsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)updateDiscoveryItemWithIdentifier:(id)a3 forAction:(int64_t)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke;
    v17[3] = &unk_1E79C4450;
    v11 = v9;
    v18 = v11;
    v12 = a3;
    v13 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v17];
    v14 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke_2;
    v15[3] = &unk_1E79C4C70;
    v15[4] = self;
    v16 = v11;
    [v14 updateDiscoveryItemWithIdentifier:v12 forAction:a4 completion:v15];
  }
}

uint64_t __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __77__PKDiscoveryService_updateDiscoveryItemWithIdentifier_forAction_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)discoveryItemsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = v7;
    [v9 discoveryItemsWithCompletion:v10];
  }
}

uint64_t __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __51__PKDiscoveryService_discoveryItemsWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)insertDiscoveryItems:(id)a3 discoveryArticleLayouts:(id)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PKDiscoveryService_insertDiscoveryItems_discoveryArticleLayouts_completion___block_invoke;
    v18[3] = &unk_1E79C4450;
    v11 = v9;
    v19 = v11;
    v12 = a4;
    v13 = a3;
    v14 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v18];
    v15 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v14];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__PKDiscoveryService_insertDiscoveryItems_discoveryArticleLayouts_completion___block_invoke_2;
    v16[3] = &unk_1E79C4C70;
    v16[4] = self;
    v17 = v11;
    [v15 insertDiscoveryItems:v13 discoveryArticleLayouts:v12 completion:v16];
  }
}

void __78__PKDiscoveryService_insertDiscoveryItems_discoveryArticleLayouts_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PKDiscoveryService_insertDiscoveryItems_discoveryArticleLayouts_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)displayedDiscoveryEngagementMessageWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v7 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v6];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKDiscoveryService_displayedDiscoveryEngagementMessageWithIdentifier___block_invoke;
  v8[3] = &unk_1E79C7D08;
  v8[4] = self;
  [v7 displayedDiscoveryEngagementMessageWithIdentifier:v5 completion:v8];
}

void __72__PKDiscoveryService_displayedDiscoveryEngagementMessageWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKDiscoveryService_displayedDiscoveryEngagementMessageWithIdentifier___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __72__PKDiscoveryService_displayedDiscoveryEngagementMessageWithIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in displayedDiscoveryEngagementMessageWithIdentifier: %@", &v3, 0xCu);
    }
  }
}

- (void)displayedDiscoveryItemWithIdentifier:(id)a3 isWelcomeCard:(BOOL)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 callToAction:(int64_t)a7 cardSize:(int64_t)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = a3;
  v16 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v17 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v16];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __142__PKDiscoveryService_displayedDiscoveryItemWithIdentifier_isWelcomeCard_afterSwipingToCard_multipleStoryCardsAvailable_callToAction_cardSize___block_invoke;
  v18[3] = &unk_1E79C7D08;
  v18[4] = self;
  [v17 displayedDiscoveryItemWithIdentifier:v15 isWelcomeCard:v12 afterSwipingToCard:v11 multipleStoryCardsAvailable:v10 callToAction:a7 cardSize:a8 completion:v18];
}

void __142__PKDiscoveryService_displayedDiscoveryItemWithIdentifier_isWelcomeCard_afterSwipingToCard_multipleStoryCardsAvailable_callToAction_cardSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __142__PKDiscoveryService_displayedDiscoveryItemWithIdentifier_isWelcomeCard_afterSwipingToCard_multipleStoryCardsAvailable_callToAction_cardSize___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __142__PKDiscoveryService_displayedDiscoveryItemWithIdentifier_isWelcomeCard_afterSwipingToCard_multipleStoryCardsAvailable_callToAction_cardSize___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in displayedDiscoveryEngagementMessageWithIdentifier: %@", &v3, 0xCu);
    }
  }
}

- (void)expandedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 afterSwipingToCard:(BOOL)a5 multipleStoryCardsAvailable:(BOOL)a6 cardSize:(int64_t)a7
{
  v8 = a6;
  v9 = a5;
  v13 = a3;
  v14 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v15 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v14];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __127__PKDiscoveryService_expandedDiscoveryItemWithIdentifier_callToAction_afterSwipingToCard_multipleStoryCardsAvailable_cardSize___block_invoke;
  v16[3] = &unk_1E79C7D08;
  v16[4] = self;
  [v15 expandedDiscoveryItemWithIdentifier:v13 callToAction:a4 afterSwipingToCard:v9 multipleStoryCardsAvailable:v8 cardSize:a7 completion:v16];
}

void __127__PKDiscoveryService_expandedDiscoveryItemWithIdentifier_callToAction_afterSwipingToCard_multipleStoryCardsAvailable_cardSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __127__PKDiscoveryService_expandedDiscoveryItemWithIdentifier_callToAction_afterSwipingToCard_multipleStoryCardsAvailable_cardSize___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __127__PKDiscoveryService_expandedDiscoveryItemWithIdentifier_callToAction_afterSwipingToCard_multipleStoryCardsAvailable_cardSize___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in expandedDiscoveryItemWithIdentifier: %@", &v3, 0xCu);
    }
  }
}

- (void)dismissedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 cardSize:(int64_t)a5
{
  v9 = a3;
  v10 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v11 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PKDiscoveryService_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke;
  v12[3] = &unk_1E79C7D08;
  v12[4] = self;
  [v11 dismissedDiscoveryItemWithIdentifier:v9 callToAction:a4 cardSize:a5 completion:v12];
}

void __81__PKDiscoveryService_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKDiscoveryService_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __81__PKDiscoveryService_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in dismissedDiscoveryItemWithIdentifier: %@", &v3, 0xCu);
    }
  }
}

- (void)removedAllDiscoveryItems
{
  v3 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v4 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v3];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PKDiscoveryService_removedAllDiscoveryItems__block_invoke;
  v5[3] = &unk_1E79C7D08;
  v5[4] = self;
  [v4 removedAllDiscoveryItemsWithCompletion:v5];
}

void __46__PKDiscoveryService_removedAllDiscoveryItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PKDiscoveryService_removedAllDiscoveryItems__block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __46__PKDiscoveryService_removedAllDiscoveryItems__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in removedAllDiscoveryItems: %@", &v3, 0xCu);
    }
  }
}

- (void)tappedDiscoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 cardSize:(int64_t)a5
{
  v9 = a3;
  v10 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v11 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKDiscoveryService_tappedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke;
  v12[3] = &unk_1E79C7D08;
  v12[4] = self;
  [v11 tappedDiscoveryItemCTA:a4 itemIdentifier:v9 cardSize:a5 completion:v12];
}

void __78__PKDiscoveryService_tappedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKDiscoveryService_tappedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __78__PKDiscoveryService_tappedDiscoveryItemWithIdentifier_callToAction_cardSize___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in tappedDiscoveryItemCTA: %@", &v3, 0xCu);
    }
  }
}

- (void)completedDiscoveryItemCTAWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v7 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v6];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PKDiscoveryService_completedDiscoveryItemCTAWithCompletion___block_invoke;
  v9[3] = &unk_1E79C4C70;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 completedDiscoveryItemCTAWithCompletion:v9];
}

void __62__PKDiscoveryService_completedDiscoveryItemCTAWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PKDiscoveryService_completedDiscoveryItemCTAWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79CB3F8;
  v9 = v3;
  v5 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v13 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __62__PKDiscoveryService_completedDiscoveryItemCTAWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error in completedDiscoveryItemCTA: %@", &v5, 0xCu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)discoveryItemWithIdentifier:(id)a3 launchedWithReferralSource:(unint64_t)a4
{
  v7 = a3;
  v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKDiscoveryService_discoveryItemWithIdentifier_launchedWithReferralSource___block_invoke;
  v10[3] = &unk_1E79C7D08;
  v10[4] = self;
  [v9 discoveryItemWithIdentifier:v7 launchedWithReferralSource:a4 completion:v10];
}

void __77__PKDiscoveryService_discoveryItemWithIdentifier_launchedWithReferralSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKDiscoveryService_discoveryItemWithIdentifier_launchedWithReferralSource___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __77__PKDiscoveryService_discoveryItemWithIdentifier_launchedWithReferralSource___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in displayedDiscoveryEngagementMessageWithIdentifier: %@", &v3, 0xCu);
    }
  }
}

- (void)discoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 isScrollable:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v11 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_isScrollable___block_invoke;
  v12[3] = &unk_1E79C7D08;
  v12[4] = self;
  [v11 discoveryItemWithIdentifier:v9 callToAction:a4 isScrollable:v5 completion:v12];
}

void __76__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_isScrollable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_isScrollable___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __76__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_isScrollable___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in discoveryItemWithIdentifier:callToAction:isScrollable %@", &v3, 0xCu);
    }
  }
}

- (void)discoveryItemWithIdentifier:(id)a3 callToAction:(int64_t)a4 wasScrolledToTheBottom:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v11 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v10];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_wasScrolledToTheBottom___block_invoke;
  v12[3] = &unk_1E79C7D08;
  v12[4] = self;
  [v11 discoveryItemWithIdentifier:v9 callToAction:a4 wasScrolledToTheBottom:v5 completion:v12];
}

void __86__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_wasScrolledToTheBottom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_wasScrolledToTheBottom___block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __86__PKDiscoveryService_discoveryItemWithIdentifier_callToAction_wasScrolledToTheBottom___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in discoveryItemWithIdentifier:callToAction:wasScrolledToTheBottom: %@", &v3, 0xCu);
    }
  }
}

- (void)endReporingDiscoveryAnalytics
{
  v3 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:0];
  v4 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v3];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PKDiscoveryService_endReporingDiscoveryAnalytics__block_invoke;
  v5[3] = &unk_1E79C7D08;
  v5[4] = self;
  [v4 endReportingDiscoveryAnalyticsCompletion:v5];
}

void __51__PKDiscoveryService_endReporingDiscoveryAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKDiscoveryService_endReporingDiscoveryAnalytics__block_invoke_2;
  v8[3] = &unk_1E79C4DD8;
  v9 = v3;
  v10 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __51__PKDiscoveryService_endReporingDiscoveryAnalytics__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Error in beginReporingDiscoveryAnalytics: %@", &v3, 0xCu);
    }
  }
}

- (int64_t)welcomeCardCount
{
  v2 = +[PKPassLibrary sharedInstance];
  if (PKSecureElementIsAvailable())
  {
    v3 = +[PKPaymentWebService sharedService];
    if ([PKPaymentRegistrationUtilities _isPaymentSetupSupportedForWebService:v3])
    {
      v4 = +[PKSecureElement isInFailForward];

      if (!v4)
      {
        v5 = [v2 hasPassesOfType:1] ^ 1;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v5 = 0;
LABEL_7:
  v6 = 0;
  if (([v2 hasPassesOfType:0] & 1) == 0)
  {
    v6 = !PKBarcodePassWelcomeCardDismissed();
  }

  return v6 + v5;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)discoveryArticleLayoutsUpdated:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PKDiscoveryService *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 discoveryService:self receivedUpdatedDiscoveryArticleLayouts:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)completedCTAForItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PKDiscoveryService *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 discoveryService:self completedCTAForItem:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dialogRequestsChangedForPlacement:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PKDiscoveryService *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 discoveryService:self dialogRequestsChangedForPlacement:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)processDiscoveryItemsAndMessagesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PKDiscoveryService_processDiscoveryItemsAndMessagesWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKDiscoveryService_processDiscoveryItemsAndMessagesWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4C70;
    v10[4] = self;
    v11 = v7;
    [v9 processDiscoveryItemsAndMessagesWithCompletion:v10];
  }
}

void __69__PKDiscoveryService_processDiscoveryItemsAndMessagesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PKDiscoveryService_processDiscoveryItemsAndMessagesWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)discoveryEngagementMessagesForPassUniqueIdentifier:(id)a3 active:(unint64_t)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__PKDiscoveryService_discoveryEngagementMessagesForPassUniqueIdentifier_active_completion___block_invoke;
    v17[3] = &unk_1E79C4450;
    v11 = v9;
    v18 = v11;
    v12 = a3;
    v13 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v17];
    v14 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PKDiscoveryService_discoveryEngagementMessagesForPassUniqueIdentifier_active_completion___block_invoke_2;
    v15[3] = &unk_1E79C4BD0;
    v15[4] = self;
    v16 = v11;
    [v14 discoveryEngagementMessagesForPassUniqueIdentifier:v12 active:a4 completion:v15];
  }
}

void __91__PKDiscoveryService_discoveryEngagementMessagesForPassUniqueIdentifier_active_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PKDiscoveryService_discoveryEngagementMessagesForPassUniqueIdentifier_active_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)dialogRequestsForPlacement:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PKDiscoveryService_dialogRequestsForPlacement_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PKDiscoveryService_dialogRequestsForPlacement_completion___block_invoke_2;
    v13[3] = &unk_1E79C4BD0;
    v13[4] = self;
    v14 = v9;
    [v12 dialogRequestsForPlacement:v10 completion:v13];
  }
}

void __60__PKDiscoveryService_dialogRequestsForPlacement_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKDiscoveryService_dialogRequestsForPlacement_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)dismissDialogRequestWithIdentifier:(id)a3 forPlacement:(id)a4 completion:(id)a5
{
  v9 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke;
  v18[3] = &unk_1E79C4450;
  v10 = v9;
  v19 = v10;
  v11 = a4;
  v12 = a3;
  v13 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v18];
  v14 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke_2;
  v16[3] = &unk_1E79C4C70;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 dismissDialogRequestWithIdentifier:v12 forPlacement:v11 completion:v16];
}

uint64_t __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __81__PKDiscoveryService_dismissDialogRequestWithIdentifier_forPlacement_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)dismissedDiscoveryItems:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__PKDiscoveryService_dismissedDiscoveryItems___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PKDiscoveryService_dismissedDiscoveryItems___block_invoke_2;
    v10[3] = &unk_1E79C4BD0;
    v10[4] = self;
    v11 = v7;
    [v9 dismissedDiscoveryItems:v10];
  }
}

void __46__PKDiscoveryService_dismissedDiscoveryItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PKDiscoveryService_dismissedDiscoveryItems___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)updateDiscoveryEngagementMessageWithIdentifier:(id)a3 forAction:(int64_t)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__PKDiscoveryService_updateDiscoveryEngagementMessageWithIdentifier_forAction_completion___block_invoke;
    v17[3] = &unk_1E79C4450;
    v11 = v9;
    v18 = v11;
    v12 = a3;
    v13 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v17];
    v14 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v13];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PKDiscoveryService_updateDiscoveryEngagementMessageWithIdentifier_forAction_completion___block_invoke_2;
    v15[3] = &unk_1E79C4C70;
    v15[4] = self;
    v16 = v11;
    [v14 updateDiscoveryEngagementMessageWithIdentifier:v12 forAction:a4 completion:v15];
  }
}

void __90__PKDiscoveryService_updateDiscoveryEngagementMessageWithIdentifier_forAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__PKDiscoveryService_updateDiscoveryEngagementMessageWithIdentifier_forAction_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)insertDiscoveryEngagementMessages:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKDiscoveryService_insertDiscoveryEngagementMessages_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PKDiscoveryService_insertDiscoveryEngagementMessages_completion___block_invoke_2;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v14 = v9;
    [v12 insertDiscoveryEngagementMessages:v10 completion:v13];
  }
}

void __67__PKDiscoveryService_insertDiscoveryEngagementMessages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PKDiscoveryService_insertDiscoveryEngagementMessages_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)removeDiscoveryMessageWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PKDiscoveryService_removeDiscoveryMessageWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKDiscoveryService_removeDiscoveryMessageWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v14 = v9;
    [v12 removeDiscoveryMessageWithIdentifier:v10 completion:v13];
  }
}

void __70__PKDiscoveryService_removeDiscoveryMessageWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKDiscoveryService_removeDiscoveryMessageWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)rulesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__PKDiscoveryService_rulesWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__PKDiscoveryService_rulesWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79D6028;
    v10[4] = self;
    v11 = v7;
    [v9 rulesWithCompletion:v10];
  }
}

void __42__PKDiscoveryService_rulesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__PKDiscoveryService_rulesWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = v5;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)insertRule:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__PKDiscoveryService_insertRule_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PKDiscoveryService_insertRule_completion___block_invoke_2;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v14 = v9;
    [v12 insertRule:v10 completion:v13];
  }
}

void __44__PKDiscoveryService_insertRule_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKDiscoveryService_insertRule_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)deleteRuleWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PKDiscoveryService_deleteRuleWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKDiscoveryService_deleteRuleWithIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v14 = v9;
    [v12 deleteRuleWithIdentifier:v10 completion:v13];
  }
}

void __58__PKDiscoveryService_deleteRuleWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKDiscoveryService_deleteRuleWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)evaluateRulesWithIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKDiscoveryService_evaluateRulesWithIdentifiers_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__PKDiscoveryService_evaluateRulesWithIdentifiers_completion___block_invoke_2;
    v13[3] = &unk_1E79C4518;
    v13[4] = self;
    v14 = v9;
    [v12 evaluateRulesWithIdentifiers:v10 completion:v13];
  }
}

void __62__PKDiscoveryService_evaluateRulesWithIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PKDiscoveryService_evaluateRulesWithIdentifiers_completion___block_invoke_3;
  v12[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = v5;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)removeDiscoveryUserNotificationsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PKDiscoveryService_removeDiscoveryUserNotificationsWithCompletion___block_invoke;
    v12[3] = &unk_1E79C4450;
    v7 = v5;
    v13 = v7;
    v8 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v12];
    v9 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKDiscoveryService_removeDiscoveryUserNotificationsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E79C4C70;
    v10[4] = self;
    v11 = v7;
    [v9 removeDiscoveryUserNotificationsWithCompletion:v10];
  }
}

void __69__PKDiscoveryService_removeDiscoveryUserNotificationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PKDiscoveryService_removeDiscoveryUserNotificationsWithCompletion___block_invoke_3;
  v8[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

- (void)fireEngagementEventNamed:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PKDiscoveryService_fireEngagementEventNamed_completion___block_invoke;
    v15[3] = &unk_1E79C4450;
    v9 = v7;
    v16 = v9;
    v10 = a3;
    v11 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v15];
    v12 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKDiscoveryService_fireEngagementEventNamed_completion___block_invoke_2;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v14 = v9;
    [v12 fireEngagementEventNamed:v10 completion:v13];
  }
}

void __58__PKDiscoveryService_fireEngagementEventNamed_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PKDiscoveryService_fireEngagementEventNamed_completion___block_invoke_3;
  v8[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

- (void)fetchUserProperties:(id)a3 withParameters:(id)a4 completion:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__PKDiscoveryService_fetchUserProperties_withParameters_completion___block_invoke;
    v18[3] = &unk_1E79C4450;
    v11 = v9;
    v19 = v11;
    v12 = a4;
    v13 = a3;
    v14 = [(PKDiscoveryService *)self errorHandlerForMethod:a2 completion:v18];
    v15 = [(PKDiscoveryService *)self _remoteObjectProxyWithErrorHandler:v14];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__PKDiscoveryService_fetchUserProperties_withParameters_completion___block_invoke_2;
    v16[3] = &unk_1E79C4518;
    v16[4] = self;
    v17 = v11;
    [v15 fetchUserProperties:v13 withParameters:v12 completion:v16];
  }
}

void __68__PKDiscoveryService_fetchUserProperties_withParameters_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKDiscoveryService_fetchUserProperties_withParameters_completion___block_invoke_3;
  v12[3] = &unk_1E79C44F0;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = v5;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_24;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

@end