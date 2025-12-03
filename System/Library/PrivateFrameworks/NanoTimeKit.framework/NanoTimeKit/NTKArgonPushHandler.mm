@interface NTKArgonPushHandler
- (NTKArgonPushHandler)initWithCloudKitDatabase:(id)database;
- (void)handleNotificationUserInfo:(id)info completion:(id)completion;
- (void)registerToken:(id)token completion:(id)completion;
@end

@implementation NTKArgonPushHandler

- (NTKArgonPushHandler)initWithCloudKitDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = NTKArgonPushHandler;
  v6 = [(NTKArgonPushHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.nanotimekit.facesupport.push", v8);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v9;
  }

  return v7;
}

- (void)registerToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  v7 = [token copy];
  if (completionCopy)
  {
    callbackQueue = [(NTKArgonPushHandler *)self callbackQueue];
    database = [(NTKArgonPushHandler *)self database];
    if (database)
    {
      if (v7)
      {
        v10 = objc_alloc(MEMORY[0x277CBC578]);
        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"token", v7];
        v12 = [v10 initWithRecordType:@"Tokens" predicate:v11];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke_3;
        v13[3] = &unk_278782798;
        v13[4] = self;
        v16 = completionCopy;
        v14 = v7;
        v15 = database;
        [v15 performQuery:v12 inZoneWithID:0 completionHandler:v13];
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke_2;
        v17[3] = &unk_27877E960;
        v18 = completionCopy;
        dispatch_async(callbackQueue, v17);
        v12 = v18;
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke;
      block[3] = &unk_27877E960;
      v20 = completionCopy;
      dispatch_async(callbackQueue, block);
      v12 = v20;
    }
  }
}

void __48__NTKArgonPushHandler_registerToken_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKArgonPushHandlerErrorDomain" code:300 userInfo:&unk_284189BB0];
  (*(v1 + 16))(v1, 0, v2);
}

void __48__NTKArgonPushHandler_registerToken_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKArgonPushHandlerErrorDomain" code:301 userInfo:&unk_284189BD8];
  (*(v1 + 16))(v1, 0, v2);
}

void __48__NTKArgonPushHandler_registerToken_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] callbackQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke_4;
  v15[3] = &unk_278782770;
  v16 = v6;
  v8 = a1[7];
  v17 = v5;
  v9 = a1[5];
  v10 = a1[6];
  *&v11 = a1[4];
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void __48__NTKArgonPushHandler_registerToken_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);
  }

  else
  {
    if (![*(a1 + 40) count])
    {
      v3 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"Tokens"];
      [v3 setObject:*(a1 + 48) forKeyedSubscript:@"token"];
      [v3 setObject:@"TODO" forKeyedSubscript:@"build"];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke_5;
      v6[3] = &unk_278782748;
      v4 = *(a1 + 56);
      v5 = *(a1 + 72);
      v6[4] = *(a1 + 64);
      v7 = v5;
      [v4 saveRecord:v3 completionHandler:v6];

      return;
    }

    v2 = *(*(a1 + 72) + 16);
  }

  v2();
}

void __48__NTKArgonPushHandler_registerToken_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NTKArgonPushHandler_registerToken_completion___block_invoke_6;
  v7[3] = &unk_27877FF60;
  v8 = v4;
  v9 = *(a1 + 40);
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleNotificationUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  v7 = [info copy];
  callbackQueue = [(NTKArgonPushHandler *)self callbackQueue];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__NTKArgonPushHandler_handleNotificationUserInfo_completion___block_invoke;
  aBlock[3] = &unk_27877E960;
  v9 = completionCopy;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v7 objectForKey:@"kd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 copy];

    v13 = [v12 objectForKey:@"k"];
    v14 = [v12 objectForKey:@"i"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [[NTKArgonKeyDescriptor alloc] initWithKey:v13 fileName:v14];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__NTKArgonPushHandler_handleNotificationUserInfo_completion___block_invoke_2;
      block[3] = &unk_27877E570;
      v18 = v15;
      v19 = v9;
      v16 = v15;
      dispatch_async(callbackQueue, block);
    }

    else
    {
      dispatch_async(callbackQueue, v10);
    }

    v11 = v12;
  }

  else
  {
    dispatch_async(callbackQueue, v10);
  }
}

void __61__NTKArgonPushHandler_handleNotificationUserInfo_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKArgonPushHandlerErrorDomain" code:302 userInfo:&unk_284189C00];
  (*(v1 + 16))(v1, 0, v2);
}

@end