@interface MX_TelephonyClient
- (BOOL)getIsInHomeCountry;
- (MX_TelephonyClient)init;
- (id)copyCountryNameFromOperatorCountryBundle;
- (id)copyIsoCountryCodeForMCC;
- (void)dealloc;
@end

@implementation MX_TelephonyClient

- (MX_TelephonyClient)init
{
  v8.receiver = self;
  v8.super_class = MX_TelephonyClient;
  v2 = [(MX_TelephonyClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->mAccessQueue = dispatch_queue_create("com.apple.coremedia.telephonyclient", v3);
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__2;
    v4 = getCoreTelephonyClientClass_softClass;
    v14 = __Block_byref_object_dispose__2;
    v15 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getCoreTelephonyClientClass_block_invoke;
      v9[3] = &unk_1E7AE73A0;
      v9[4] = &v10;
      __getCoreTelephonyClientClass_block_invoke(v9);
      v4 = v11[5];
    }

    _Block_object_dispose(&v10, 8);
    v2->mClient = [[v4 alloc] initWithQueue:v2->mAccessQueue];
    mAccessQueue = v2->mAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__MX_TelephonyClient_init__block_invoke;
    v7[3] = &unk_1E7AE7CE0;
    v7[4] = v2;
    dispatch_async(mAccessQueue, v7);
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  mAccessQueue = self->mAccessQueue;
  if (mAccessQueue)
  {
    dispatch_release(mAccessQueue);
  }

  v5.receiver = self;
  v5.super_class = MX_TelephonyClient;
  [(MX_TelephonyClient *)&v5 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (id)copyIsoCountryCodeForMCC
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MX_TelephonyClient_copyIsoCountryCodeForMCC__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_async_and_wait(mAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)getIsInHomeCountry
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MX_TelephonyClient_getIsInHomeCountry__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_async_and_wait(mAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyCountryNameFromOperatorCountryBundle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MX_TelephonyClient_copyCountryNameFromOperatorCountryBundle__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_async_and_wait(mAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end