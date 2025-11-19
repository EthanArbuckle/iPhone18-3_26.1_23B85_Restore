@interface FAAppleCashPresentationHandler
- (FAAppleCashPresentationHandler)initWithNavigationController:(id)a3;
- (id)peerPaymentPassForAccount:(id)a3 passLibraryDataProvider:(id)a4;
- (void)presentPaymentPassDetailViewController;
- (void)presentPeerPaymentControllerWithAttributes:(id)a3 completion:(id)a4;
- (void)presentPeerPaymentControllerWithFamilyCircle:(id)a3 member:(id)a4 attributes:(id)a5;
@end

@implementation FAAppleCashPresentationHandler

- (FAAppleCashPresentationHandler)initWithNavigationController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAAppleCashPresentationHandler;
  v6 = [(FAAppleCashPresentationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, a3);
  }

  return v7;
}

- (void)presentPeerPaymentControllerWithAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D08280]);
  [v8 setQualityOfService:33];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__FAAppleCashPresentationHandler_presentPeerPaymentControllerWithAttributes_completion___block_invoke;
  v11[3] = &unk_2782F3810;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)presentPeerPaymentControllerWithFamilyCircle:(id)a3 member:(id)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v14 = [v8 members];
  v15 = [v13 initWithFamilyMembers:v14];
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
  v18 = [[v16 alloc] initWithFAFamilyMember:v9 options:v10];
  [(FAAppleCashPresentationHandler *)self setContext:v18];

  v19 = [(FAAppleCashPresentationHandler *)self peerPaymentController];
  v20 = [(FAAppleCashPresentationHandler *)self context];
  v21 = [(FAAppleCashPresentationHandler *)self navigationController];
  [v19 presentAssociatedAccountsFlowWithPresentationContext:v20 fromNavigationController:v21];
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

  v6 = [MEMORY[0x277D381A0] sharedInstance];
  v7 = [v6 account];

  v8 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  v9 = [v8 passLibraryDataProvider];
  v25 = v7;
  v24 = [(FAAppleCashPresentationHandler *)self peerPaymentPassForAccount:v7 passLibraryDataProvider:v9];

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
  v13 = [MEMORY[0x277D38170] sharedService];
  v23 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  v14 = [v23 peerPaymentDataSource];
  v15 = [v14 peerPaymentWebService];
  v16 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  v17 = [v16 passLibraryDataProvider];
  v18 = [(FAAppleCashPresentationHandler *)self defaultBehavior];
  v19 = [v18 paymentDataProvider];
  v20 = [v12 initWithPass:v24 group:0 groupsController:0 webService:v13 peerPaymentWebService:v15 style:1 passLibraryDataProvider:v17 paymentServiceDataProvider:v19];
  [(FAAppleCashPresentationHandler *)self setPassDetailsViewController:v20];

  v21 = [(FAAppleCashPresentationHandler *)self navigationController];
  v22 = [(FAAppleCashPresentationHandler *)self passDetailsViewController];
  [v21 pushViewController:v22 animated:1];
}

- (id)peerPaymentPassForAccount:(id)a3 passLibraryDataProvider:(id)a4
{
  v5 = a4;
  v6 = [a3 associatedPassUniqueID];
  v7 = [v5 passWithUniqueID:v6];

  v8 = [v7 paymentPass];

  return v8;
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