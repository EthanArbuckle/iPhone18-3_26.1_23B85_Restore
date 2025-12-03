@interface NTKFaceSupportNotificationPresentationEventRecorder
+ (id)eventRecorder;
+ (id)sharedRecorder;
- (id)_init;
- (id)_validateIdentifier:(id)identifier;
- (void)_queue_beginPresentationForIdentifier:(id)identifier pushDate:(id)date completion:(id)completion;
- (void)_queue_endPresentationForIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus completion:(id)completion;
- (void)beginPresentationForIdentifier:(id)identifier pushDate:(id)date completion:(id)completion;
- (void)endPresentationForIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus completion:(id)completion;
@end

@implementation NTKFaceSupportNotificationPresentationEventRecorder

+ (id)sharedRecorder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NTKFaceSupportNotificationPresentationEventRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)beginPresentationForIdentifier:(id)identifier pushDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = [identifierCopy copy];

    queue = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __106__NTKFaceSupportNotificationPresentationEventRecorder_beginPresentationForIdentifier_pushDate_completion___block_invoke;
    v13[3] = &unk_2787808C8;
    v13[4] = self;
    identifierCopy = v11;
    v14 = identifierCopy;
    v15 = dateCopy;
    v16 = completionCopy;
    dispatch_async(queue, v13);
  }
}

- (void)endPresentationForIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v16 = [identifierCopy copy];

    queue = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __137__NTKFaceSupportNotificationPresentationEventRecorder_endPresentationForIdentifier_status_artworkUsed_errorCode_optOutStatus_completion___block_invoke;
    block[3] = &unk_278786A00;
    block[4] = self;
    identifierCopy = v16;
    v19 = identifierCopy;
    statusCopy = status;
    usedCopy = used;
    codeCopy = code;
    outStatusCopy = outStatus;
    v20 = completionCopy;
    dispatch_async(queue, block);
  }
}

+ (id)eventRecorder
{
  _init = [[self alloc] _init];

  return _init;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = NTKFaceSupportNotificationPresentationEventRecorder;
  v2 = [(NTKFaceSupportNotificationPresentationEventRecorder *)&v8 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lookup = v2->_lookup;
    v2->_lookup = strongToStrongObjectsMapTable;

    v5 = dispatch_queue_create("com.apple.nanotimekit.facesupport.recorders.presentation", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_queue_beginPresentationForIdentifier:(id)identifier pushDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  completionCopy = completion;
  queue = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v11 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v11)
  {
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    [dateCopy timeIntervalSinceNow];
    if (v12 <= 0.0)
    {
      lookup = [(NTKFaceSupportNotificationPresentationEventRecorder *)self lookup];
      v14 = [lookup objectForKey:identifierCopy];
      if (v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:300 userInfo:0];
        completionCopy[2](completionCopy, v15);
      }

      else
      {
        v15 = [[NTKFaceSupportPartialNotificationPresentationEvent alloc] initWithIdentifier:identifierCopy pushDate:dateCopy];
        if (v15)
        {
          [lookup setObject:v15 forKey:identifierCopy];
          completionCopy[2](completionCopy, 0);
        }

        else
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:400 userInfo:0];
          completionCopy[2](completionCopy, v16);
        }
      }
    }

    else
    {
      lookup = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:600 userInfo:0];
      completionCopy[2](completionCopy, lookup);
    }
  }
}

- (void)_queue_endPresentationForIdentifier:(id)identifier status:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(NTKFaceSupportNotificationPresentationEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v16 = [(NTKFaceSupportNotificationPresentationEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v16)
  {
    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    lookup = [(NTKFaceSupportNotificationPresentationEventRecorder *)self lookup];
    v18 = [lookup objectForKey:identifierCopy];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 presentationEventWithStatus:status artworkUsed:used errorCode:code optOutStatus:outStatus];
      if (v20)
      {
        [lookup removeObjectForKey:identifierCopy];
        (completionCopy)[2](completionCopy, v20, 0);
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:500 userInfo:0];
        completionCopy[2](completionCopy, 0, v21);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:200 userInfo:0];
      completionCopy[2](completionCopy, 0, v20);
    }
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
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportNotificationPresentationEventRecorderErrorDomain" code:100 userInfo:0];
  }

  return v3;
}

@end