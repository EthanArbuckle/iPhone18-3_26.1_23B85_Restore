@interface NTKFaceSupportNotificationActionEventRecorder
- (NSString)filePath;
- (NTKFaceSupportNotificationActionEventRecorder)initWithFilePath:(id)a3;
- (id)_validateIdentifier:(id)a3;
- (void)_queue_beginPresentationForIdentifier:(id)a3 completion:(id)a4;
- (void)_queue_endPresentationForIdentifier:(id)a3 withAction:(int64_t)a4 completion:(id)a5;
- (void)beginPresentationForIdentifier:(id)a3 completion:(id)a4;
- (void)endPresentationForIdentifier:(id)a3 withAction:(int64_t)a4 completion:(id)a5;
@end

@implementation NTKFaceSupportNotificationActionEventRecorder

- (NTKFaceSupportNotificationActionEventRecorder)initWithFilePath:(id)a3
{
  v4 = a3;
  v5 = [[NTKFaceSupportDateDatabase alloc] initWithFileAtPath:v4];

  if (v5)
  {
    v12.receiver = self;
    v12.super_class = NTKFaceSupportNotificationActionEventRecorder;
    v6 = [(NTKFaceSupportNotificationActionEventRecorder *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_database, v5);
      v8 = dispatch_queue_create("com.apple.nanotimekit.facesupport.recorders.action", 0);
      queue = v7->_queue;
      v7->_queue = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)filePath
{
  v2 = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
  v3 = [v2 filePath];

  return v3;
}

- (void)beginPresentationForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 copy];

    v9 = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__NTKFaceSupportNotificationActionEventRecorder_beginPresentationForIdentifier_completion___block_invoke;
    block[3] = &unk_27877DC88;
    block[4] = self;
    v6 = v8;
    v11 = v6;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)endPresentationForIdentifier:(id)a3 withAction:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [v8 copy];

    v11 = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__NTKFaceSupportNotificationActionEventRecorder_endPresentationForIdentifier_withAction_completion___block_invoke;
    v12[3] = &unk_27877FF10;
    v12[4] = self;
    v8 = v10;
    v13 = v8;
    v15 = a4;
    v14 = v9;
    dispatch_async(v11, v12);
  }
}

- (void)_queue_beginPresentationForIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
  dispatch_assert_queue_V2(v7);
  v8 = [(NTKFaceSupportNotificationActionEventRecorder *)self _validateIdentifier:v11];
  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
    [v10 recordDate:v9 bundleIdentifier:v11 completion:v6];
  }
}

- (void)_queue_endPresentationForIdentifier:(id)a3 withAction:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
  dispatch_assert_queue_V2(v10);
  v11 = [(NTKFaceSupportNotificationActionEventRecorder *)self _validateIdentifier:v8];
  if (v11)
  {
    v9[2](v9, 0, v11);
  }

  else
  {
    v12 = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __107__NTKFaceSupportNotificationActionEventRecorder__queue_endPresentationForIdentifier_withAction_completion___block_invoke;
    v14[3] = &unk_2787888E8;
    v17 = v9;
    v18 = a4;
    v15 = v8;
    v16 = v12;
    v13 = v12;
    [v13 retreiveDateForBundleIdentifier:v15 completion:v14];
  }
}

void __107__NTKFaceSupportNotificationActionEventRecorder__queue_endPresentationForIdentifier_withAction_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:v5];
    v8 = [[NTKFaceSupportNotificationActionEvent alloc] initWithBundleIdentifier:*(a1 + 32) action:*(a1 + 56) delayFromPresentation:v7];
    if (v8)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __107__NTKFaceSupportNotificationActionEventRecorder__queue_endPresentationForIdentifier_withAction_completion___block_invoke_2;
      v12[3] = &unk_2787888C0;
      v14 = *(a1 + 48);
      v13 = v8;
      [v9 deleteDateForBundleIdentifier:v10 completion:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationActionEventRecorderErrorDomain" code:500 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }
}

uint64_t __107__NTKFaceSupportNotificationActionEventRecorder__queue_endPresentationForIdentifier_withAction_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
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
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationActionEventRecorderErrorDomain" code:100 userInfo:0];
  }

  return v3;
}

@end