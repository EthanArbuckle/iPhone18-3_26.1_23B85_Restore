@interface NPKPeerPaymentAccountManager
+ (id)sharedInstance;
- (NPKPeerPaymentAccountManager)initWithPeerPaymentService:(id)service;
- (void)_updateAccount;
@end

@implementation NPKPeerPaymentAccountManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NPKPeerPaymentAccountManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

void __46__NPKPeerPaymentAccountManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v2;
}

- (NPKPeerPaymentAccountManager)initWithPeerPaymentService:(id)service
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = NPKPeerPaymentAccountManager;
  v5 = [(NPKPeerPaymentAccountManager *)&v13 init];
  if (v5)
  {
    if (serviceCopy)
    {
      v6 = serviceCopy;
      peerPaymentService = v5->_peerPaymentService;
      v5->_peerPaymentService = v6;
    }

    else
    {
      peerPaymentService = [MEMORY[0x277D381B0] sharedService];
      peerPaymentService = [peerPaymentService peerPaymentService];
      v9 = v5->_peerPaymentService;
      v5->_peerPaymentService = peerPaymentService;
    }

    account = [(PKPeerPaymentService *)v5->_peerPaymentService account];
    [(NPKPeerPaymentAccountManager *)v5 setAccount:account];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleAccountChanged_ name:*MEMORY[0x277D38968] object:v5->_peerPaymentService];

    [(NPKPeerPaymentAccountManager *)v5 _updateAccount];
  }

  return v5;
}

- (void)_updateAccount
{
  peerPaymentService = [(NPKPeerPaymentAccountManager *)self peerPaymentService];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NPKPeerPaymentAccountManager__updateAccount__block_invoke;
  v4[3] = &unk_279947C58;
  v4[4] = self;
  [peerPaymentService accountWithCompletion:v4];
}

void __46__NPKPeerPaymentAccountManager__updateAccount__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAccount:a2];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NPKPeerPaymentAccountManagerAccountDidChangeNotification" object:*(a1 + 32)];
}

@end