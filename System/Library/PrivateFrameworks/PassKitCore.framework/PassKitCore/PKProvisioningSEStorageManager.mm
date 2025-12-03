@interface PKProvisioningSEStorageManager
- (PKProvisioningSEStorageManager)init;
- (PKProvisioningSEStorageManager)initWithWebService:(id)service;
- (void)reclaimUnusedSEMemoryWithCompletion:(id)completion;
@end

@implementation PKProvisioningSEStorageManager

- (PKProvisioningSEStorageManager)init
{
  v3 = +[PKPaymentWebService sharedService];
  v4 = [(PKProvisioningSEStorageManager *)self initWithWebService:v3];

  return v4;
}

- (PKProvisioningSEStorageManager)initWithWebService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    v10.receiver = self;
    v10.super_class = PKProvisioningSEStorageManager;
    v5 = [(PKProvisioningSEStorageManager *)&v10 init];
    if (v5)
    {
      v6 = [[_PKProvisioningSEStorageManager alloc] initWithWebService:serviceCopy];
      manager = v5->_manager;
      v5->_manager = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)reclaimUnusedSEMemoryWithCompletion:(id)completion
{
  completionCopy = completion;
  manager = self->_manager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKProvisioningSEStorageManager_reclaimUnusedSEMemoryWithCompletion___block_invoke;
  v7[3] = &unk_1E79CC7E8;
  v8 = completionCopy;
  v6 = completionCopy;
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