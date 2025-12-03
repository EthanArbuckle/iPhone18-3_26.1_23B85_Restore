@interface PKPaymentDefaultDataProvider
+ (id)defaultDataProvider;
- (BOOL)supportsInAppPaymentsForPass:(id)pass;
- (BOOL)supportsTransactionsForPass:(id)pass;
- (PKPaymentDataProviderDelegate)delegate;
- (PKPaymentDefaultDataProvider)init;
- (PKPaymentDefaultDataProvider)initWithPaymentService:(id)service secureElement:(id)element;
- (PKPaymentWebService)paymentWebService;
- (void)_accessDelegatesWithHandler:(id)handler;
- (void)addDelegate:(id)delegate;
- (void)credential:(id)credential forPaymentApplication:(id)application didUpdateRangingSuspensionReasons:(unint64_t)reasons;
- (void)credentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier didUpdateRangingSuspensionReasons:(unint64_t)reasons;
- (void)dealloc;
- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)didUpdateFamilyMembers:(id)members;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)passUpgradeWithRequest:(id)request pass:(id)pass visibleViewController:(id)controller completion:(id)completion;
- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context;
- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)removeDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt;
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

- (PKPaymentDefaultDataProvider)initWithPaymentService:(id)service secureElement:(id)element
{
  serviceCopy = service;
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = PKPaymentDefaultDataProvider;
  v9 = [(PKPaymentDefaultDataProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_secureElement, element);
    objc_storeStrong(&v10->_paymentService, service);
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v10->_delegates;
    v10->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v5 = delegateCopy;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates addObject:v5];
    os_unfair_lock_unlock(&self->_delegateLock);
    delegateCopy = v5;
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v5 = delegateCopy;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates removeObject:v5];
    os_unfair_lock_unlock(&self->_delegateLock);
    delegateCopy = v5;
  }
}

- (void)_accessDelegatesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_delegateLock);
    allObjects = [(NSHashTable *)self->_delegates allObjects];
    os_unfair_lock_unlock(&self->_delegateLock);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PKPaymentDefaultDataProvider__accessDelegatesWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
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

- (void)passUpgradeWithRequest:(id)request pass:(id)pass visibleViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  requestCopy = request;
  v11 = +[PKPaymentWebService sharedService];
  targetDevice = [v11 targetDevice];
  [targetDevice noteProvisioningDidBegin];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentDefaultDataProvider_passUpgradeWithRequest_pass_visibleViewController_completion___block_invoke;
  v15[3] = &unk_1E79D9880;
  v16 = targetDevice;
  v17 = completionCopy;
  v13 = targetDevice;
  v14 = completionCopy;
  [v13 paymentWebService:v11 requestPassUpgrade:requestCopy pass:passCopy completion:v15];
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

- (void)passUniqueIdentifiersForTransactionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([identifiersCopy count])
    {
      [(PKPaymentService *)self->_paymentService passUniqueIdentifiersForTransactionSourceIdentifiers:identifiersCopy completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (BOOL)supportsTransactionsForPass:(id)pass
{
  secureElementPass = [pass secureElementPass];
  if ([secureElementPass isAccessPass])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
    secureElementIdentifiers = [targetDevice secureElementIdentifiers];
    v5 = [secureElementPass isPrecursorPass:secureElementIdentifiers] ^ 1;
  }

  return v5;
}

- (BOOL)supportsInAppPaymentsForPass:(id)pass
{
  paymentPass = [pass paymentPass];
  deviceInAppPaymentApplications = [paymentPass deviceInAppPaymentApplications];
  v5 = [deviceInAppPaymentApplications count] != 0;

  return v5;
}

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPaymentDefaultDataProvider_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = identifierCopy;
  v5 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v8[3] = &unk_1E79D98D0;
  v9 = identifierCopy;
  serviceCopy = service;
  v7 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message
{
  identifierCopy = identifier;
  messageCopy = message;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = identifierCopy;
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

- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context
{
  identifierCopy = identifier;
  tilesCopy = tiles;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKPaymentDefaultDataProvider_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
  v12[3] = &unk_1E79D9920;
  v13 = identifierCopy;
  v14 = tilesCopy;
  contextCopy = context;
  v10 = tilesCopy;
  v11 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  v8[3] = &unk_1E79D98D0;
  v9 = identifierCopy;
  serviceCopy = service;
  v7 = identifierCopy;
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

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = transactionCopy;
  v8 = transactionCopy;
  v9 = identifierCopy;
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

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PKPaymentDefaultDataProvider_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = withIdentifierCopy;
  v8 = withIdentifierCopy;
  v9 = identifierCopy;
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

- (void)didRemoveTransactionsWithSourceIdentifierMapping:(id)mapping
{
  mappingCopy = mapping;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__PKPaymentDefaultDataProvider_didRemoveTransactionsWithSourceIdentifierMapping___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = mappingCopy;
  v5 = mappingCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  reminderCopy = reminder;
  withIdentifierCopy = withIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__PKPaymentDefaultDataProvider_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E79D9948;
  v15 = identifierCopy;
  v16 = reminderCopy;
  v17 = withIdentifierCopy;
  v11 = withIdentifierCopy;
  v12 = reminderCopy;
  v13 = identifierCopy;
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

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPaymentDefaultDataProvider_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = identifierCopy;
  v5 = identifierCopy;
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

- (void)credential:(id)credential forPaymentApplication:(id)application didUpdateRangingSuspensionReasons:(unint64_t)reasons
{
  credentialCopy = credential;
  applicationCopy = application;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__PKPaymentDefaultDataProvider_credential_forPaymentApplication_didUpdateRangingSuspensionReasons___block_invoke;
  v12[3] = &unk_1E79D9920;
  v13 = credentialCopy;
  v14 = applicationCopy;
  reasonsCopy = reasons;
  v10 = applicationCopy;
  v11 = credentialCopy;
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

- (void)credentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier didUpdateRangingSuspensionReasons:(unint64_t)reasons
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  elementIdentifierCopy = elementIdentifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __140__PKPaymentDefaultDataProvider_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke;
  v16[3] = &unk_1E79D9970;
  v17 = identifierCopy;
  v18 = applicationIdentifierCopy;
  v19 = elementIdentifierCopy;
  reasonsCopy = reasons;
  v13 = elementIdentifierCopy;
  v14 = applicationIdentifierCopy;
  v15 = identifierCopy;
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

- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt
{
  identifierCopy = identifier;
  receiptCopy = receipt;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PKPaymentDefaultDataProvider_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = identifierCopy;
  v12 = receiptCopy;
  v8 = receiptCopy;
  v9 = identifierCopy;
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

- (void)featureApplicationAdded:(id)added
{
  addedCopy = added;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKPaymentDefaultDataProvider_featureApplicationAdded___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = addedCopy;
  v5 = addedCopy;
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

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentDefaultDataProvider_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = changedCopy;
  v5 = changedCopy;
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

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKPaymentDefaultDataProvider_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = removedCopy;
  v5 = removedCopy;
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

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPaymentDefaultDataProvider_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E79D98A8;
  v7 = membersCopy;
  v5 = membersCopy;
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

- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash
{
  changedCopy = changed;
  hashCopy = hash;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__PKPaymentDefaultDataProvider_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke;
  v10[3] = &unk_1E79D98F8;
  v11 = changedCopy;
  v12 = hashCopy;
  v8 = hashCopy;
  v9 = changedCopy;
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