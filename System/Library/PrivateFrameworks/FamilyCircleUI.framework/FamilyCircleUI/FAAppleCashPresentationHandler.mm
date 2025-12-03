@interface FAAppleCashPresentationHandler
- (FAAppleCashPresentationHandler)initWithNavigationController:(id)controller;
- (id)peerPaymentPassForAccount:(id)account passLibraryDataProvider:(id)provider;
- (void)presentPaymentPassDetailViewController;
- (void)presentPeerPaymentControllerWithAttributes:(id)attributes completion:(id)completion;
- (void)presentPeerPaymentControllerWithFamilyCircle:(id)circle member:(id)member attributes:(id)attributes;
@end

@implementation FAAppleCashPresentationHandler

- (FAAppleCashPresentationHandler)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = FAAppleCashPresentationHandler;
  v6 = [(FAAppleCashPresentationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, controller);
  }

  return v7;
}

- (void)presentPeerPaymentControllerWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277D08280]);
  [v8 setQualityOfService:33];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke;
  v11[3] = &unk_2782F3810;
  selfCopy = self;
  v14 = completionCopy;
  v12 = attributesCopy;
  v9 = attributesCopy;
  v10 = completionCopy;
  [v8 startRequestWithCompletionHandler:v11];
}

void __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_cold_1(v6, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_34;
    v11[3] = &unk_2782F3420;
    v12 = *(a1 + 32);
    v8 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_34(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"altdsid"];
  v4 = [*(v2 + 8) memberForAltDSID:v3];
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_34_cold_1(v4, v2, v5);
  }

  [*(a1 + 48) presentPeerPaymentControllerWithFamilyCircle:*(a1 + 40) member:v4 attributes:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

- (void)presentPeerPaymentControllerWithFamilyCircle:(id)circle member:(id)member attributes:(id)attributes
{
  circleCopy = circle;
  memberCopy = member;
  attributesCopy = attributes;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v11 = getPKPeerPaymentAssociatedAccountsControllerClass_softClass;
  v30 = getPKPeerPaymentAssociatedAccountsControllerClass_softClass;
  if (!getPKPeerPaymentAssociatedAccountsControllerClass_softClass)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke;
    v25 = &unk_2782F2988;
    v26 = &v27;
    __getPKPeerPaymentAssociatedAccountsControllerClass_block_invoke(&v22);
    v11 = v28[3];
  }

  v12 = v11;
  _Block_object_dispose(&v27, 8);
  v13 = [v11 alloc];
  members = [circleCopy members];
  v15 = [v13 initWithFamilyMembers:members];
  [(FAAppleCashPresentationHandler *)self setPeerPaymentController:v15];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v16 = getPKPeerPaymentAssociatedAccountPresentationContextClass_softClass;
  v30 = getPKPeerPaymentAssociatedAccountPresentationContextClass_softClass;
  if (!getPKPeerPaymentAssociatedAccountPresentationContextClass_softClass)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke;
    v25 = &unk_2782F2988;
    v26 = &v27;
    __getPKPeerPaymentAssociatedAccountPresentationContextClass_block_invoke(&v22);
    v16 = v28[3];
  }

  v17 = v16;
  _Block_object_dispose(&v27, 8);
  v18 = [[v16 alloc] initWithFAFamilyMember:memberCopy options:attributesCopy];
  [(FAAppleCashPresentationHandler *)self setContext:v18];

  peerPaymentController = [(FAAppleCashPresentationHandler *)self peerPaymentController];
  context = [(FAAppleCashPresentationHandler *)self context];
  navigationController = [(FAAppleCashPresentationHandler *)self navigationController];
  [peerPaymentController presentAssociatedAccountsFlowWithPresentationContext:context fromNavigationController:navigationController];
}

- (void)presentPaymentPassDetailViewController
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v3 = getPKPassbookSettingsDefaultBehaviorClass_softClass;
  v34 = getPKPassbookSettingsDefaultBehaviorClass_softClass;
  if (!getPKPassbookSettingsDefaultBehaviorClass_softClass)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getPKPassbookSettingsDefaultBehaviorClass_block_invoke;
    v29 = &unk_2782F2988;
    v30 = &v31;
    __getPKPassbookSettingsDefaultBehaviorClass_block_invoke(&v26);
    v3 = v32[3];
  }

  v4 = v3;
  _Block_object_dispose(&v31, 8);
  v5 = objc_alloc_init(v3);
  [(FAAppleCashPresentationHandler *)self setDefaultBehavior:v5];

  mEMORY[0x277D381A0] = [MEMORY[0x277D381A0] sharedInstance];
  account = [mEMORY[0x277D381A0] account];

  defaultBehavior = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  passLibraryDataProvider = [defaultBehavior passLibraryDataProvider];
  v25 = account;
  v24 = [(FAAppleCashPresentationHandler *)self peerPaymentPassForAccount:account passLibraryDataProvider:passLibraryDataProvider];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v10 = getPKPaymentPassDetailViewControllerClass_softClass;
  v34 = getPKPaymentPassDetailViewControllerClass_softClass;
  if (!getPKPaymentPassDetailViewControllerClass_softClass)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getPKPaymentPassDetailViewControllerClass_block_invoke;
    v29 = &unk_2782F2988;
    v30 = &v31;
    __getPKPaymentPassDetailViewControllerClass_block_invoke(&v26);
    v10 = v32[3];
  }

  v11 = v10;
  _Block_object_dispose(&v31, 8);
  v12 = [v10 alloc];
  mEMORY[0x277D38170] = [MEMORY[0x277D38170] sharedService];
  defaultBehavior2 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  peerPaymentDataSource = [defaultBehavior2 peerPaymentDataSource];
  peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
  defaultBehavior3 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  passLibraryDataProvider2 = [defaultBehavior3 passLibraryDataProvider];
  defaultBehavior4 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  paymentDataProvider = [defaultBehavior4 paymentDataProvider];
  v20 = [v12 initWithPass:v24 group:0 groupsController:0 webService:mEMORY[0x277D38170] peerPaymentWebService:peerPaymentWebService style:1 passLibraryDataProvider:passLibraryDataProvider2 paymentServiceDataProvider:paymentDataProvider];
  [(FAAppleCashPresentationHandler *)self setPassDetailsViewController:v20];

  navigationController = [(FAAppleCashPresentationHandler *)self navigationController];
  passDetailsViewController = [(FAAppleCashPresentationHandler *)self passDetailsViewController];
  [navigationController pushViewController:passDetailsViewController animated:1];
}

- (id)peerPaymentPassForAccount:(id)account passLibraryDataProvider:(id)provider
{
  providerCopy = provider;
  associatedPassUniqueID = [account associatedPassUniqueID];
  v7 = [providerCopy passWithUniqueID:associatedPassUniqueID];

  paymentPass = [v7 paymentPass];

  return paymentPass;
}

void __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[FAAppleCashPresentationHandler presentPeerPaymentControllerWithAttributes:completion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error %s - %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke_34_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_21BB35000, log, OS_LOG_TYPE_DEBUG, "Launching member %@ with attributes %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end