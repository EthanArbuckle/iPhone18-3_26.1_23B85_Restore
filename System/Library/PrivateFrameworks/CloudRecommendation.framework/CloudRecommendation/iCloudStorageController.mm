@interface iCloudStorageController
- (iCloudStorageController)initWithAccount:(id)account;
- (void)fetchStorageSummary:(id)summary;
@end

@implementation iCloudStorageController

- (iCloudStorageController)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = iCloudStorageController;
  v6 = [(iCloudStorageController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (void)fetchStorageSummary:(id)summary
{
  summaryCopy = summary;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getICQCloudStorageDataControllerClass_softClass;
  v22 = getICQCloudStorageDataControllerClass_softClass;
  if (!getICQCloudStorageDataControllerClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getICQCloudStorageDataControllerClass_block_invoke;
    v18[3] = &unk_278DE0310;
    v18[4] = &v19;
    __getICQCloudStorageDataControllerClass_block_invoke(v18);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v17 = [[v5 alloc] initWithAccount:self->_account];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__iCloudStorageController_fetchStorageSummary___block_invoke;
  v9[3] = &unk_278DE0480;
  v9[4] = self;
  v8 = summaryCopy;
  v10 = v8;
  v11 = &v12;
  [v7 fetchStorageSummaryWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

@end