@interface PKPaymentDefaultDataProvider
+ (id)defaultDataProvider;
- (BOOL)supportsInAppPaymentsForPass:(id)a3;
- (BOOL)supportsTransactionsForPass:(id)a3;
- (PKPaymentDataProviderDelegate)delegate;
- (PKPaymentDefaultDataProvider)init;
- (PKPaymentDefaultDataProvider)initWithPaymentService:(id)a3 secureElement:(id)a4;
- (PKPaymentWebService)paymentWebService;
- (void)_accessDelegatesWithHandler:(id)a3;
- (void)addDelegate:(id)a3;
- (void)credential:(id)a3 forPaymentApplication:(id)a4 didUpdateRangingSuspensionReasons:(unint64_t)a5;
- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6;
- (void)dealloc;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)featureApplicationAdded:(id)a3;
- (void)featureApplicationChanged:(id)a3;
- (void)featureApplicationRemoved:(id)a3;
- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)a3 completion:(id)a4;
- (void)passUpgradeWithRequest:(id)a3 pass:(id)a4 visibleViewController:(id)a5 completion:(id)a6;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)paymentOfferConfirmationRecordChanged:(id)a3 forTransactionWithPaymentHash:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveMessage:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4;
@end

@implementation PKPaymentDefaultDataProvider

- (PKPaymentDefaultDataProvider)init
{
  v3 = +[PKSecureElement sharedSecureElement];
  v4 = [(PKPaymentDefaultDataProvider *)self initWithPaymentService:0 secureElement:v3];

  if (v4)
  {
    v5 = +[PKPaymentService paymentService];
    paymentService = v4->_paymentService;
    v4->_paymentService = v5;

    [(PKPaymentService *)v4->_paymentService registerObserver:v4];
  }

  return v4;
}

+ (id)defaultDataProvider
{
  os_unfair_lock_lock(&_MergedGlobals_238);
  WeakRetained = objc_loadWeakRetained(&qword_1ED6D1E28);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(PKPaymentDefaultDataProvider);
    objc_storeWeak(&qword_1ED6D1E28, WeakRetained);
  }

  os_unfair_lock_unlock(&_MergedGlobals_238);

  return WeakRetained;
}

- (PKPaymentDefaultDataProvider)initWithPaymentService:(id)a3 secureElement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PKPaymentDefaultDataProvider;
  v9 = [(PKPaymentDefaultDataProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_secureElement, a4);
    objc_storeStrong(&v10->_paymentService, a3);
    v11 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v10->_delegates;
    v10->_delegates = v11;

    v10->_delegateLock._os_unfair_lock_opaque = 0;
    v13 = dispatch_queue_create("com.apple.passkitcore.paymentdataprovider.replyQueue", 0);
    replyQueue = v10->_replyQueue;
    v10->_replyQueue = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKPaymentDefaultDataProvider;
  [(PKPaymentDefaultDataProvider *)&v3 dealloc];
}

- (PKPaymentWebService)paymentWebService
{
  paymentWebService = self->_paymentWebService;
  if (!paymentWebService)
  {
    v4 = +[PKPaymentWebService sharedService];
    v5 = self->_paymentWebService;
    self->_paymentWebService = v4;

    paymentWebService = self->_paymentWebService;
  }

  return paymentWebService;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(PKPaymentDefaultDataProvider *)self removeDelegate:WeakRetained];
    }

    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      [(PKPaymentDefaultDataProvider *)self addDelegate:?];
    }
  }
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates addObject:v5];
    os_unfair_lock_unlock(&self->_delegateLock);
    v4 = v5;
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates removeObject:v5];
    os_unfair_lock_unlock(&self->_delegateLock);
    v4 = v5;
  }
}

- (void)_accessDelegatesWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_delegateLock);
    v5 = [(NSHashTable *)self->_delegates allObjects];
    os_unfair_lock_unlock(&self->_delegateLock);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PKPaymentDefaultDataProvider__accessDelegatesWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(replyQueue, v8);
  }
}

void __60__PKPaymentDefaultDataProvider__accessDelegatesWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)passUpgradeWithRequest:(id)a3 pass:(id)a4 visibleViewController:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[PKPaymentWebService sharedService];
  v12 = [v11 targetDevice];
  [v12 noteProvisioningDidBegin];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentDefaultDataProvider_passUpgradeWithRequest_pass_visibleViewController_completion___block_invoke;
  v15[3] = &unk_1E79D9880;
  v16 = v12;
  v17 = v8;
  v13 = v12;
  v14 = v8;
  [v13 paymentWebService:v11 requestPassUpgrade:v10 pass:v9 completion:v15];
}

uint64_t __93__PKPaymentDefaultDataProvider_passUpgradeWithRequest_pass_visibleViewController_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 noteProvisioningDidEnd];
}

- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v7 count])
    {
      [(PKPaymentService *)self->_paymentService passUniqueIdentifiersForTransactionSourceIdentifiers:v7 completion:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (BOOL)supportsTransactionsForPass:(id)a3
{
  v4 = [a3 secureElementPass];
  if ([v4 isAccessPass])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
    v7 = [v6 secureElementIdentifiers];
    v5 = [v4 isPrecursorPass:v7] ^ 1;
  }

  return v5;
}

- (BOOL)supportsInAppPaymentsForPass:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = [v3 deviceInAppPaymentApplications];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPaymentDefaultDataProvider_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __80__PKPaymentDefaultDataProvider_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateDefaultPaymentPassWithUniqueIdentifier:*(a1 + 32)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v8[3] = &unk_1E79D98D0;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v8];
}

void __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didEnableMessageService:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __82__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceiveMessage:*(a1 + 40)];
  }
}

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKPaymentDefaultDataProvider_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
  v12[3] = &unk_1E79D9920;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v12];
}

void __83__PKPaymentDefaultDataProvider_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 passWithUniqueIdentifier:a1[4] didUpdateTiles:a1[5] forContext:a1[6]];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  v8[3] = &unk_1E79D98D0;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v8];
}

void __92__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didEnableTransactionService:*(a1 + 40)];
  }
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __82__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didReceiveTransaction:*(a1 + 40)];
  }
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __95__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didRemoveTransactionWithIdentifier:*(a1 + 40)];
  }
}

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__PKPaymentDefaultDataProvider_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __81__PKPaymentDefaultDataProvider_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemoveTransactionsWithSourceIdentifierMapping:*(a1 + 32)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __99__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 paymentPassWithUniqueIdentifier:*(a1 + 32) didUpdateWithTransitPassProperties:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) felicaProperties];
    [v5 paymentPassWithUniqueIdentifier:v3 didUpdateWithFelicaPassProperties:v4];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceiveBalanceUpdate:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __85__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceivePlanUpdate:*(a1 + 40)];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E79D9948;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v14];
}

void __114__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:a1[4] didUpdateBalanceReminder:a1[5] forBalanceWithIdentifier:a1[6]];
  }
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPaymentDefaultDataProvider_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __83__PKPaymentDefaultDataProvider_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sharesDidUpdateWithPaymentPassWithUniqueIdentifier:*(a1 + 32)];
  }
}

- (void)credential:(id)a3 forPaymentApplication:(id)a4 didUpdateRangingSuspensionReasons:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__PKPaymentDefaultDataProvider_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke;
  v12[3] = &unk_1E79D9920;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v12];
}

void __99__PKPaymentDefaultDataProvider_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 credential:a1[4] forPaymentApplication:a1[5] didUpdateRangingSuspensionReasons:a1[6]];
  }
}

- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __140__PKPaymentDefaultDataProvider_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke;
  v16[3] = &unk_1E79D9970;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a6;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v16];
}

void __140__PKPaymentDefaultDataProvider_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 credentialIdentifier:a1[4] paymentApplicationIdentifier:a1[5] secureElementIdentifier:a1[6] didUpdateRangingSuspensionReasons:a1[7]];
  }
}

- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentDefaultDataProvider_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __88__PKPaymentDefaultDataProvider_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transactionWithIdentifier:*(a1 + 32) didDownloadTransactionReceipt:*(a1 + 40)];
  }
}

- (void)featureApplicationAdded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKPaymentDefaultDataProvider_featureApplicationAdded___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __56__PKPaymentDefaultDataProvider_featureApplicationAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationAdded:*(a1 + 32)];
  }
}

- (void)featureApplicationChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentDefaultDataProvider_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __58__PKPaymentDefaultDataProvider_featureApplicationChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationChanged:*(a1 + 32)];
  }
}

- (void)featureApplicationRemoved:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentDefaultDataProvider_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __58__PKPaymentDefaultDataProvider_featureApplicationRemoved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureApplicationRemoved:*(a1 + 32)];
  }
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPaymentDefaultDataProvider_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = v4;
  v5 = v4;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v6];
}

void __55__PKPaymentDefaultDataProvider_didUpdateFamilyMembers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateFamilyMembers:*(a1 + 32)];
  }
}

- (void)paymentOfferConfirmationRecordChanged:(id)a3 forTransactionWithPaymentHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__PKPaymentDefaultDataProvider_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPaymentDefaultDataProvider *)self _accessDelegatesWithHandler:v10];
}

void __100__PKPaymentDefaultDataProvider_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentOfferConfirmationRecordUpdated:*(a1 + 32) forTransactionWithPaymentHash:*(a1 + 40)];
  }
}

- (PKPaymentDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end