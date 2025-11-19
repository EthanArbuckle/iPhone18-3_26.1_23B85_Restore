@interface NTKFaceSupportNotificationPresentationEventRecorder
+ (id)eventRecorder;
+ (id)sharedRecorder;
- (id)_init;
- (id)_validateIdentifier:(id)a3;
- (void)_queue_beginPresentationForIdentifier:(id)a3 pushDate:(id)a4 completion:(id)a5;
- (void)_queue_endPresentationForIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 errorCode:(int64_t)a6 optOutStatus:(int64_t)a7 completion:(id)a8;
- (void)beginPresentationForIdentifier:(id)a3 pushDate:(id)a4 completion:(id)a5;
- (void)endPresentationForIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 errorCode:(int64_t)a6 optOutStatus:(int64_t)a7 completion:(id)a8;
@end

@implementation NTKFaceSupportNotificationPresentationEventRecorder

+ (id)sharedRecorder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NTKFaceSupportNotificationPresentationEventRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRecorder_onceToken_0 != -1)
  {
    dispatch_once(&sharedRecorder_onceToken_0, block);
  }

  v2 = sharedRecorder_recorder_0;

  return v2;
}

void __69__NTKFaceSupportNotificationPresentationEventRecorder_sharedRecorder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) eventRecorder];
  v2 = sharedRecorder_recorder_0;
  sharedRecorder_recorder_0 = v1;
}

- (void)beginPresentationForIdentifier:(id)a3 pushDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 copy];

    v12 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __106__NTKFaceSupportNotificationPresentationEventRecorder_beginPresentationForIdentifier_pushDate_completion___block_invoke;
    v13[3] = &unk_2787808C8;
    v13[4] = self;
    v8 = v11;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_async(v12, v13);
  }
}

- (void)endPresentationForIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 errorCode:(int64_t)a6 optOutStatus:(int64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a8;
  if (v15)
  {
    v16 = [v14 copy];

    v17 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__NTKFaceSupportNotificationPresentationEventRecorder_endPresentationForIdentifier_status_artworkUsed_errorCode_optOutStatus_completion___block_invoke;
    block[3] = &unk_278786A00;
    block[4] = self;
    v14 = v16;
    v19 = v14;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v20 = v15;
    dispatch_async(v17, block);
  }
}

+ (id)eventRecorder
{
  v2 = [[a1 alloc] _init];

  return v2;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = NTKFaceSupportNotificationPresentationEventRecorder;
  v2 = [(NTKFaceSupportNotificationPresentationEventRecorder *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lookup = v2->_lookup;
    v2->_lookup = v3;

    v5 = dispatch_queue_create("com.apple.nanotimekit.facesupport.recorders.presentation", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_queue_beginPresentationForIdentifier:(id)a3 pushDate:(id)a4 completion:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
  dispatch_assert_queue_V2(v10);
  v11 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self _validateIdentifier:v17];
  if (v11)
  {
    v9[2](v9, v11);
  }

  else
  {
    [v8 timeIntervalSinceNow];
    if (v12 <= 0.0)
    {
      v13 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self lookup];
      v14 = [v13 objectForKey:v17];
      if (v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:300 userInfo:0];
        v9[2](v9, v15);
      }

      else
      {
        v15 = [[NTKFaceSupportPartialNotificationPresentationEvent alloc] initWithIdentifier:v17 pushDate:v8];
        if (v15)
        {
          [v13 setObject:v15 forKey:v17];
          v9[2](v9, 0);
        }

        else
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:400 userInfo:0];
          v9[2](v9, v16);
        }
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:600 userInfo:0];
      v9[2](v9, v13);
    }
  }
}

- (void)_queue_endPresentationForIdentifier:(id)a3 status:(int64_t)a4 artworkUsed:(int64_t)a5 errorCode:(int64_t)a6 optOutStatus:(int64_t)a7 completion:(id)a8
{
  v22 = a3;
  v14 = a8;
  v15 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
  dispatch_assert_queue_V2(v15);
  v16 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self _validateIdentifier:v22];
  if (v16)
  {
    v14[2](v14, 0, v16);
  }

  else
  {
    v17 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self lookup];
    v18 = [v17 objectForKey:v22];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 presentationEventWithStatus:a4 artworkUsed:a5 errorCode:a6 optOutStatus:a7];
      if (v20)
      {
        [v17 removeObjectForKey:v22];
        (v14)[2](v14, v20, 0);
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:500 userInfo:0];
        v14[2](v14, 0, v21);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:200 userInfo:0];
      v14[2](v14, 0, v20);
    }
  }
}

- (id)_validateIdentifier:(id)a3
{
  if ([a3 length])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:100 userInfo:0];
  }

  return v3;
}

@end