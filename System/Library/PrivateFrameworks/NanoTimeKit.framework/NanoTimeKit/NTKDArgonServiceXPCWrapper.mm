@interface NTKDArgonServiceXPCWrapper
+ (id)sharedXPCWrapper;
- (void)displayUserNotificationForKeyDescriptor:(id)descriptor completion:(id)completion;
- (void)ingestKeyDescriptor:(id)descriptor withMethod:(unint64_t)method completion:(id)completion;
- (void)knownKeyDescriptors:(id)descriptors;
- (void)queryForNewFaces:(id)faces;
- (void)requestCurrentEnvironment:(id)environment;
- (void)requestResetOnNextLaunch:(id)launch;
- (void)setCurrentEnvironment:(int64_t)environment completion:(id)completion;
@end

@implementation NTKDArgonServiceXPCWrapper

+ (id)sharedXPCWrapper
{
  if (sharedXPCWrapper_onceToken != -1)
  {
    +[NTKDArgonServiceXPCWrapper sharedXPCWrapper];
  }

  v3 = sharedXPCWrapper_wrapper;

  return v3;
}

void __46__NTKDArgonServiceXPCWrapper_sharedXPCWrapper__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedXPCWrapper_wrapper;
  sharedXPCWrapper_wrapper = v0;
}

- (void)ingestKeyDescriptor:(id)descriptor withMethod:(unint64_t)method completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    descriptorCopy = descriptor;
    v9 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
    fileName = [descriptorCopy fileName];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__NTKDArgonServiceXPCWrapper_ingestKeyDescriptor_withMethod_completion___block_invoke;
    v13[3] = &unk_27877E820;
    v14 = fileName;
    v11 = fileName;
    [v9 beginRecordingForIdentifier:v11 method:method completion:v13];
    v12 = +[NTKDArgonService sharedService];
    [v12 ingestKeyDescriptor:descriptorCopy withMethod:method completion:completionCopy];
  }
}

void __72__NTKDArgonServiceXPCWrapper_ingestKeyDescriptor_withMethod_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__NTKDArgonServiceXPCWrapper_ingestKeyDescriptor_withMethod_completion___block_invoke_cold_1();
    }
  }
}

- (void)queryForNewFaces:(id)faces
{
  facesCopy = faces;
  v4 = +[NTKDArgonService sharedService];
  [v4 queryForNewFaces:facesCopy];
}

- (void)requestResetOnNextLaunch:(id)launch
{
  launchCopy = launch;
  v4 = +[NTKDArgonService sharedService];
  [v4 requestResetOnNextLaunch:launchCopy];
}

- (void)knownKeyDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = +[NTKDArgonService sharedService];
  [v4 knownKeyDescriptors:descriptorsCopy];
}

- (void)displayUserNotificationForKeyDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  v7 = +[NTKDArgonService sharedService];
  [v7 displayUserNotificationForKeyDescriptor:descriptorCopy completion:completionCopy];
}

- (void)requestCurrentEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = +[NTKDArgonService sharedService];
  [v4 requestCurrentEnvironment:environmentCopy];
}

- (void)setCurrentEnvironment:(int64_t)environment completion:(id)completion
{
  completionCopy = completion;
  v6 = +[NTKDArgonService sharedService];
  [v6 setCurrentEnvironment:environment completion:completionCopy];
}

void __72__NTKDArgonServiceXPCWrapper_ingestKeyDescriptor_withMethod_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't ingest key from JSON %@ - %@");
}

@end