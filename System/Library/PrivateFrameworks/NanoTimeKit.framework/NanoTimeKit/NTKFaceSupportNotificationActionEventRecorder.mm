@interface NTKFaceSupportNotificationActionEventRecorder
- (NSString)filePath;
- (NTKFaceSupportNotificationActionEventRecorder)initWithFilePath:(id)path;
- (id)_validateIdentifier:(id)identifier;
- (void)_queue_beginPresentationForIdentifier:(id)identifier completion:(id)completion;
- (void)_queue_endPresentationForIdentifier:(id)identifier withAction:(int64_t)action completion:(id)completion;
- (void)beginPresentationForIdentifier:(id)identifier completion:(id)completion;
- (void)endPresentationForIdentifier:(id)identifier withAction:(int64_t)action completion:(id)completion;
@end

@implementation NTKFaceSupportNotificationActionEventRecorder

- (NTKFaceSupportNotificationActionEventRecorder)initWithFilePath:(id)path
{
  pathCopy = path;
  v5 = [[NTKFaceSupportDateDatabase alloc] initWithFileAtPath:pathCopy];

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)filePath
{
  database = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
  filePath = [database filePath];

  return filePath;
}

- (void)beginPresentationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [identifierCopy copy];

    queue = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__NTKFaceSupportNotificationActionEventRecorder_beginPresentationForIdentifier_completion___block_invoke;
    block[3] = &unk_27877DC88;
    block[4] = self;
    identifierCopy = v8;
    v11 = identifierCopy;
    v12 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)endPresentationForIdentifier:(id)identifier withAction:(int64_t)action completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = [identifierCopy copy];

    queue = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__NTKFaceSupportNotificationActionEventRecorder_endPresentationForIdentifier_withAction_completion___block_invoke;
    v12[3] = &unk_27877FF10;
    v12[4] = self;
    identifierCopy = v10;
    v13 = identifierCopy;
    actionCopy = action;
    v14 = completionCopy;
    dispatch_async(queue, v12);
  }
}

- (void)_queue_beginPresentationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v8 = [(NTKFaceSupportNotificationActionEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    database = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
    [database recordDate:date bundleIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)_queue_endPresentationForIdentifier:(id)identifier withAction:(int64_t)action completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(NTKFaceSupportNotificationActionEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v11 = [(NTKFaceSupportNotificationActionEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v11)
  {
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    database = [(NTKFaceSupportNotificationActionEventRecorder *)self database];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __107__NTKFaceSupportNotificationActionEventRecorder__queue_endPresentationForIdentifier_withAction_completion___block_invoke;
    v14[3] = &unk_2787888E8;
    v17 = completionCopy;
    actionCopy = action;
    v15 = identifierCopy;
    v16 = database;
    v13 = database;
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

- (id)_validateIdentifier:(id)identifier
{
  if ([identifier length])
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