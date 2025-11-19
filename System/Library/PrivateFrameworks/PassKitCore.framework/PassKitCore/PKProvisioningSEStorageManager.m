@interface PKProvisioningSEStorageManager
- (PKProvisioningSEStorageManager)init;
- (PKProvisioningSEStorageManager)initWithWebService:(id)a3;
- (void)reclaimUnusedSEMemoryWithCompletion:(id)a3;
@end

@implementation PKProvisioningSEStorageManager

- (PKProvisioningSEStorageManager)init
{
  v3 = +[PKPaymentWebService sharedService];
  v4 = [(PKProvisioningSEStorageManager *)self initWithWebService:v3];

  return v4;
}

- (PKProvisioningSEStorageManager)initWithWebService:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = PKProvisioningSEStorageManager;
    v5 = [(PKProvisioningSEStorageManager *)&v10 init];
    if (v5)
    {
      v6 = [[_PKProvisioningSEStorageManager alloc] initWithWebService:v4];
      manager = v5->_manager;
      v5->_manager = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reclaimUnusedSEMemoryWithCompletion:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKProvisioningSEStorageManager_reclaimUnusedSEMemoryWithCompletion___block_invoke;
  v7[3] = &unk_1E79CC7E8;
  v8 = v4;
  v6 = v4;
  [(_PKProvisioningSEStorageManager *)manager reclaimUnusedSEMemoryWithCompletion:v7];
}

void __70__PKProvisioningSEStorageManager_reclaimUnusedSEMemoryWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!v6 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[PKProvisioningSEStorageSnapshot alloc] initWithSnapshot:v6];
    (*(*(a1 + 32) + 16))();
  }
}

@end