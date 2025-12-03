@interface NPKMockPeerPaymentAccountManager
+ (id)sharedInstance;
- (NPKMockPeerPaymentAccountManager)initWithPeerPaymentService:(id)service;
- (id)account;
- (void)_updateMockBalance;
- (void)dealloc;
@end

@implementation NPKMockPeerPaymentAccountManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NPKMockPeerPaymentAccountManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, block);
  }

  v2 = sharedInstance_sharedInstance_5;

  return v2;
}

void __50__NPKMockPeerPaymentAccountManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v2;
}

- (NPKMockPeerPaymentAccountManager)initWithPeerPaymentService:(id)service
{
  v17[5] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NPKMockPeerPaymentAccountManager;
  v3 = [(NPKPeerPaymentAccountManager *)&v15 initWithPeerPaymentService:service];
  v4 = v3;
  if (v3)
  {
    v3->_balanceOffset = 0;
    v5 = dispatch_queue_create("com.apple.mockPeerPaymentAccountManager", 0);
    accountQueue = v4->_accountQueue;
    v4->_accountQueue = v5;

    0x406900A3D70A3D71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", 0x406900A3D70A3D71];
    v8 = objc_alloc(MEMORY[0x277D38188]);
    v16[0] = @"currentBalance";
    v16[1] = @"currency";
    v17[0] = 0x406900A3D70A3D71;
    v17[1] = @"USD";
    v16[2] = @"minimumTransferAmounts";
    v16[3] = @"maximumTransferAmounts";
    v17[2] = &unk_286CE7860;
    v17[3] = &unk_286CE7888;
    v16[4] = @"state";
    v17[4] = @"active";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [v8 initWithDictionary:v9 lastUpdated:date];
    mockAccount = v4->_mockAccount;
    v4->_mockAccount = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NPKMockPeerPaymentAccountManager;
  [(NPKMockPeerPaymentAccountManager *)&v2 dealloc];
}

- (void)_updateMockBalance
{
  v15[4] = *MEMORY[0x277D85DE8];
  balanceOffset = self->_balanceOffset;
  v4 = (balanceOffset + 100) % 0x12C;
  self->_balanceOffset = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", balanceOffset + 200.02];
    v6 = objc_alloc(MEMORY[0x277D38188]);
    v14[0] = @"currentBalance";
    v14[1] = @"currency";
    v15[0] = v5;
    v15[1] = @"USD";
    v14[2] = @"minimumTransferAmounts";
    v14[3] = @"maximumTransferAmounts";
    v15[2] = &unk_286CE78B0;
    v15[3] = &unk_286CE78D8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [v6 initWithDictionary:v7 lastUpdated:date];
    mockAccount = self->_mockAccount;
    self->_mockAccount = v9;
  }

  else
  {
    v11 = self->_mockAccount;
    self->_mockAccount = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NPKPeerPaymentAccountManagerAccountDidChangeNotification" object:self];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)account
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NPKMockPeerPaymentAccountManager_account__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end