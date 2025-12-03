@interface NTKFaceSupportUnlockAttemptEventRecorder
+ (id)eventRecorder;
+ (id)sharedRecorder;
- (id)_init;
- (id)_validateIdentifier:(id)identifier;
- (void)_queue_beginRecordingForIdentifier:(id)identifier method:(unint64_t)method completion:(id)completion;
- (void)_queue_endRecordingForIdentifier:(id)identifier status:(unint64_t)status errorCode:(int64_t)code completion:(id)completion;
- (void)beginRecordingForIdentifier:(id)identifier method:(unint64_t)method completion:(id)completion;
- (void)endRecordingForIdentifier:(id)identifier status:(unint64_t)status errorCode:(int64_t)code completion:(id)completion;
@end

@implementation NTKFaceSupportUnlockAttemptEventRecorder

+ (id)sharedRecorder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKFaceSupportUnlockAttemptEventRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRecorder_onceToken != -1)
  {
    dispatch_once(&sharedRecorder_onceToken, block);
  }

  v2 = sharedRecorder_recorder;

  return v2;
}

void __58__NTKFaceSupportUnlockAttemptEventRecorder_sharedRecorder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) eventRecorder];
  v2 = sharedRecorder_recorder;
  sharedRecorder_recorder = v1;
}

- (void)beginRecordingForIdentifier:(id)identifier method:(unint64_t)method completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = [identifierCopy copy];

    queue = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__NTKFaceSupportUnlockAttemptEventRecorder_beginRecordingForIdentifier_method_completion___block_invoke;
    v12[3] = &unk_27877FF10;
    v12[4] = self;
    identifierCopy = v10;
    v13 = identifierCopy;
    methodCopy = method;
    v14 = completionCopy;
    dispatch_async(queue, v12);
  }
}

- (void)endRecordingForIdentifier:(id)identifier status:(unint64_t)status errorCode:(int64_t)code completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = [identifierCopy copy];

    queue = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__NTKFaceSupportUnlockAttemptEventRecorder_endRecordingForIdentifier_status_errorCode_completion___block_invoke;
    block[3] = &unk_278784508;
    block[4] = self;
    identifierCopy = v12;
    v15 = identifierCopy;
    statusCopy = status;
    codeCopy = code;
    v16 = completionCopy;
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
  v8.super_class = NTKFaceSupportUnlockAttemptEventRecorder;
  v2 = [(NTKFaceSupportUnlockAttemptEventRecorder *)&v8 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lookup = v2->_lookup;
    v2->_lookup = strongToStrongObjectsMapTable;

    v5 = dispatch_queue_create("com.apple.nanotimekit.facesupport.recorders.unlock", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_queue_beginRecordingForIdentifier:(id)identifier method:(unint64_t)method completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = identifierCopy;
    v19 = 2048;
    methodCopy = method;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Argon: Trying to unlock %@ via %lu…", &v17, 0x16u);
  }

  v12 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    lookup = [(NTKFaceSupportUnlockAttemptEventRecorder *)self lookup];
    v14 = [lookup objectForKey:identifierCopy];
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:300 userInfo:0];
      completionCopy[2](completionCopy, v15);
    }

    else
    {
      v15 = [[NTKFaceSupportPartialUnlockAttemptEvent alloc] initWithIdentifier:identifierCopy method:method];
      if (v15)
      {
        [lookup setObject:v15 forKey:identifierCopy];
        completionCopy[2](completionCopy, 0);
      }

      else
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:400 userInfo:0];
        completionCopy[2](completionCopy, v16);
      }
    }
  }
}

- (void)_queue_endRecordingForIdentifier:(id)identifier status:(unint64_t)status errorCode:(int64_t)code completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
  dispatch_assert_queue_V2(queue);
  v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = identifierCopy;
    v22 = 2048;
    statusCopy = status;
    v24 = 2048;
    codeCopy = code;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Argon: Finalized unlock of %@. Result %lu… (%ld)", &v20, 0x20u);
  }

  v14 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self _validateIdentifier:identifierCopy];
  if (v14)
  {
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    lookup = [(NTKFaceSupportUnlockAttemptEventRecorder *)self lookup];
    v16 = [lookup objectForKey:identifierCopy];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 unlockAttemptWithStatus:status errorCode:code];
      if (v18)
      {
        [lookup removeObjectForKey:identifierCopy];
        (completionCopy)[2](completionCopy, v18, 0);
      }

      else
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:500 userInfo:0];
        completionCopy[2](completionCopy, 0, v19);
      }
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:200 userInfo:0];
      completionCopy[2](completionCopy, 0, v18);
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
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:100 userInfo:0];
  }

  return v3;
}

@end