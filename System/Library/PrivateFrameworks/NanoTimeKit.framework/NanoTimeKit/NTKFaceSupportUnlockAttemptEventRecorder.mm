@interface NTKFaceSupportUnlockAttemptEventRecorder
+ (id)eventRecorder;
+ (id)sharedRecorder;
- (id)_init;
- (id)_validateIdentifier:(id)a3;
- (void)_queue_beginRecordingForIdentifier:(id)a3 method:(unint64_t)a4 completion:(id)a5;
- (void)_queue_endRecordingForIdentifier:(id)a3 status:(unint64_t)a4 errorCode:(int64_t)a5 completion:(id)a6;
- (void)beginRecordingForIdentifier:(id)a3 method:(unint64_t)a4 completion:(id)a5;
- (void)endRecordingForIdentifier:(id)a3 status:(unint64_t)a4 errorCode:(int64_t)a5 completion:(id)a6;
@end

@implementation NTKFaceSupportUnlockAttemptEventRecorder

+ (id)sharedRecorder
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKFaceSupportUnlockAttemptEventRecorder_sharedRecorder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)beginRecordingForIdentifier:(id)a3 method:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [v8 copy];

    v11 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__NTKFaceSupportUnlockAttemptEventRecorder_beginRecordingForIdentifier_method_completion___block_invoke;
    v12[3] = &unk_27877FF10;
    v12[4] = self;
    v8 = v10;
    v13 = v8;
    v15 = a4;
    v14 = v9;
    dispatch_async(v11, v12);
  }
}

- (void)endRecordingForIdentifier:(id)a3 status:(unint64_t)a4 errorCode:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    v12 = [v10 copy];

    v13 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__NTKFaceSupportUnlockAttemptEventRecorder_endRecordingForIdentifier_status_errorCode_completion___block_invoke;
    block[3] = &unk_278784508;
    block[4] = self;
    v10 = v12;
    v15 = v10;
    v17 = a4;
    v18 = a5;
    v16 = v11;
    dispatch_async(v13, block);
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
  v8.super_class = NTKFaceSupportUnlockAttemptEventRecorder;
  v2 = [(NTKFaceSupportUnlockAttemptEventRecorder *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lookup = v2->_lookup;
    v2->_lookup = v3;

    v5 = dispatch_queue_create("com.apple.nanotimekit.facesupport.recorders.unlock", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_queue_beginRecordingForIdentifier:(id)a3 method:(unint64_t)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
  dispatch_assert_queue_V2(v10);
  v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Argon: Trying to unlock %@ via %lu…", &v17, 0x16u);
  }

  v12 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self _validateIdentifier:v8];
  if (v12)
  {
    v9[2](v9, v12);
  }

  else
  {
    v13 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self lookup];
    v14 = [v13 objectForKey:v8];
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:300 userInfo:0];
      v9[2](v9, v15);
    }

    else
    {
      v15 = [[NTKFaceSupportPartialUnlockAttemptEvent alloc] initWithIdentifier:v8 method:a4];
      if (v15)
      {
        [v13 setObject:v15 forKey:v8];
        v9[2](v9, 0);
      }

      else
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:400 userInfo:0];
        v9[2](v9, v16);
      }
    }
  }
}

- (void)_queue_endRecordingForIdentifier:(id)a3 status:(unint64_t)a4 errorCode:(int64_t)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self queue];
  dispatch_assert_queue_V2(v12);
  v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = v10;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Argon: Finalized unlock of %@. Result %lu… (%ld)", &v20, 0x20u);
  }

  v14 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self _validateIdentifier:v10];
  if (v14)
  {
    v11[2](v11, 0, v14);
  }

  else
  {
    v15 = [(NTKFaceSupportUnlockAttemptEventRecorder *)self lookup];
    v16 = [v15 objectForKey:v10];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 unlockAttemptWithStatus:a4 errorCode:a5];
      if (v18)
      {
        [v15 removeObjectForKey:v10];
        (v11)[2](v11, v18, 0);
      }

      else
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:500 userInfo:0];
        v11[2](v11, 0, v19);
      }
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:200 userInfo:0];
      v11[2](v11, 0, v18);
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
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportUnlockAttemptEventRecorderErrorDomain" code:100 userInfo:0];
  }

  return v3;
}

@end