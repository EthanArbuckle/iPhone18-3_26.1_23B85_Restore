@interface HMDTTRManager
+ (HMMRadarRequestFilter)defaultFilter;
+ (id)namespaceUUID;
+ (id)queue;
+ (id)sharedManager;
- (BOOL)isTTRServiceAuthorized;
- (HMDTTRManager)initWithDialog:(id)dialog requestFilter:(id)filter;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)messageDestination;
- (void)handlePresentTTRDialog:(id)dialog;
- (void)handleResetLastTTRTime:(id)time;
- (void)initiateRadarWithTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d displayReason:(id)reason attachments:(id)attachments isUserInitiated:(BOOL)initiated;
- (void)requestRadarWithDisplayReason:(id)reason radarTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d attachments:(id)attachments waitForResponse:(BOOL)response;
@end

@implementation HMDTTRManager

+ (HMMRadarRequestFilter)defaultFilter
{
  sharedPreferences = [objc_opt_self() sharedPreferences];
  v3 = sub_253CD06F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_253CD06E8();
  v7 = sub_25320727C(sharedPreferences, v6);

  return v7;
}

- (void)handleResetLastTTRTime:(id)time
{
  timeCopy = time;
  requestFilter = [(HMDTTRManager *)self requestFilter];
  [requestFilter radarRequestedForDisplayReason:&stru_286509E58];

  [timeCopy respondWithSuccess];
}

- (void)handlePresentTTRDialog:(id)dialog
{
  dialogCopy = dialog;
  messagePayload = [dialogCopy messagePayload];
  v6 = [messagePayload objectForKeyedSubscript:@"category"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"homeutil";
  }

  v8 = v7;
  [(HMDTTRManager *)self requestRadarWithDisplayReason:v7 radarTitle:v7];
  [dialogCopy respondWithSuccess];
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = objc_opt_class();

  return [v2 queue];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDTTRManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = objc_opt_class();

  return [v2 namespaceUUID];
}

- (void)initiateRadarWithTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d displayReason:(id)reason attachments:(id)attachments isUserInitiated:(BOOL)initiated
{
  titleCopy = title;
  nameCopy = name;
  versionCopy = version;
  reasonCopy = reason;
  attachmentsCopy = attachments;
  ttrService = [(HMDTTRManager *)self ttrService];

  if (!ttrService)
  {
    v34 = _HMFPreconditionFailure();
    _Block_object_dispose(&v41, 8);
    _Unwind_Resume(v34);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v21 = getRadarDraftClass_softClass;
  v44 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getRadarDraftClass_block_invoke;
    v39 = &unk_279731AD0;
    v40 = &v41;
    __getRadarDraftClass_block_invoke(&v36);
    v21 = v42[3];
  }

  v22 = v21;
  _Block_object_dispose(&v41, 8);
  v23 = objc_alloc_init(v21);
  v24 = [titleCopy length];
  if (v24 >= 0xF0)
  {
    v25 = 240;
  }

  else
  {
    v25 = v24;
  }

  v26 = [titleCopy substringToIndex:v25];
  [v23 setTitle:v26];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v27 = getRadarComponentClass_softClass;
  v44 = getRadarComponentClass_softClass;
  if (!getRadarComponentClass_softClass)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getRadarComponentClass_block_invoke;
    v39 = &unk_279731AD0;
    v40 = &v41;
    __getRadarComponentClass_block_invoke(&v36);
    v27 = v42[3];
  }

  v28 = v27;
  _Block_object_dispose(&v41, 8);
  v29 = [[v27 alloc] initWithName:nameCopy version:versionCopy identifier:d];
  [v23 setComponent:v29];

  [v23 setAttachments:attachmentsCopy];
  [v23 setIsUserInitiated:initiated];
  [v23 setDiagnosticExtensionIDs:&unk_286626C98];
  v30 = [reasonCopy length];
  if (v30 >= 0x4B)
  {
    v31 = 75;
  }

  else
  {
    v31 = v30;
  }

  v32 = [reasonCopy substringToIndex:v31];
  ttrService2 = [(HMDTTRManager *)self ttrService];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __125__HMDTTRManager_initiateRadarWithTitle_componentName_componentVersion_componentID_displayReason_attachments_isUserInitiated___block_invoke;
  v35[3] = &unk_2797359D8;
  v35[4] = self;
  [ttrService2 createDraft:v23 forProcessNamed:@"HomeKit" withDisplayReason:v32 completionHandler:v35];
}

void __125__HMDTTRManager_initiateRadarWithTitle_componentName_componentVersion_componentID_displayReason_attachments_isUserInitiated___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error trying to create radar draft: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTTRServiceAuthorized
{
  v18 = *MEMORY[0x277D85DE8];
  ttrService = [(HMDTTRManager *)self ttrService];

  if (!ttrService)
  {
    _HMFPreconditionFailure();
  }

  ttrService2 = [(HMDTTRManager *)self ttrService];
  serviceSettings = [ttrService2 serviceSettings];
  authorizationStatus = [serviceSettings authorizationStatus];

  if (authorizationStatus == 2)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      v11 = "%{public}@Failing to initiate a radar: TapToRadarService is rate-limiting us";
      goto LABEL_11;
    }
  }

  else if (authorizationStatus == 1)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      v11 = "%{public}@Failing to initiate a radar: TapToRadarService has been disallowed by the user";
      goto LABEL_11;
    }
  }

  else
  {
    if (authorizationStatus)
    {
      result = 1;
      goto LABEL_14;
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      v11 = "%{public}@Failing to initiate a radar: TapToRadarService is not authorized";
LABEL_11:
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, v11, &v16, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v7);
  result = 0;
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestRadarWithDisplayReason:(id)reason radarTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d attachments:(id)attachments waitForResponse:(BOOL)response
{
  reasonCopy = reason;
  titleCopy = title;
  nameCopy = name;
  versionCopy = version;
  if (isInternalBuild() && [(HMDTTRManager *)self isTTRServiceAuthorized])
  {
    queue = [objc_opt_class() queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__HMDTTRManager_requestRadarWithDisplayReason_radarTitle_componentName_componentVersion_componentID_attachments_waitForResponse___block_invoke;
    block[3] = &unk_279723528;
    block[4] = self;
    v20 = reasonCopy;
    responseCopy = response;
    v21 = titleCopy;
    v22 = nameCopy;
    v23 = versionCopy;
    dCopy = d;
    dispatch_async(queue, block);
  }
}

void __129__HMDTTRManager_requestRadarWithDisplayReason_radarTitle_componentName_componentVersion_componentID_attachments_waitForResponse___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) requestFilter];
  if ([v2 shouldRequestRadarForDisplayReason:*(a1 + 40)])
  {
    [v2 radarRequestedForDisplayReason:*(a1 + 40)];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Requesting radar because %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [*(a1 + 32) dialog];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"HomeKit requests you file a radar because %@.", *(a1 + 40)];
    v11 = *(a1 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __129__HMDTTRManager_requestRadarWithDisplayReason_radarTitle_componentName_componentVersion_componentID_attachments_waitForResponse___block_invoke_22;
    v20[3] = &unk_279723500;
    v20[4] = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v23 = v12;
    v25 = v13;
    v24 = *(a1 + 40);
    [v8 displayInternalTTRErrorWithContext:v9 message:v10 waitForResponse:v11 completionHandler:v20];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Radar request filtered out: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __129__HMDTTRManager_requestRadarWithDisplayReason_radarTitle_componentName_componentVersion_componentID_attachments_waitForResponse___block_invoke_22(uint64_t result, int a2)
{
  if (a2)
  {
    LOBYTE(v2) = 1;
    return [*(result + 32) initiateRadarWithTitle:*(result + 40) componentName:*(result + 48) componentVersion:*(result + 56) componentID:*(result + 72) displayReason:*(result + 64) attachments:0 isUserInitiated:v2];
  }

  return result;
}

- (HMDTTRManager)initWithDialog:(id)dialog requestFilter:(id)filter
{
  dialogCopy = dialog;
  filterCopy = filter;
  v15.receiver = self;
  v15.super_class = HMDTTRManager;
  v9 = [(HMDTTRManager *)&v15 init];
  if (v9 && TapToRadarKitLibraryCore())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getTapToRadarServiceClass_softClass;
    v20 = getTapToRadarServiceClass_softClass;
    if (!getTapToRadarServiceClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getTapToRadarServiceClass_block_invoke;
      v16[3] = &unk_279731AD0;
      v16[4] = &v17;
      __getTapToRadarServiceClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    shared = [v10 shared];
    ttrService = v9->_ttrService;
    v9->_ttrService = shared;

    objc_storeStrong(&v9->_dialog, dialog);
    objc_storeStrong(&v9->_requestFilter, filter);
  }

  return v9;
}

+ (id)queue
{
  if (queue__hmf_once_t10 != -1)
  {
    dispatch_once(&queue__hmf_once_t10, &__block_literal_global_36);
  }

  v3 = queue__hmf_once_v11;

  return v3;
}

void __22__HMDTTRManager_queue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.HomeKit.HMDTTRManager", v0);
  v2 = queue__hmf_once_v11;
  queue__hmf_once_v11 = v1;
}

+ (id)namespaceUUID
{
  if (namespaceUUID__hmf_once_t8 != -1)
  {
    dispatch_once(&namespaceUUID__hmf_once_t8, &__block_literal_global_16010);
  }

  v3 = namespaceUUID__hmf_once_v9;

  return v3;
}

uint64_t __30__HMDTTRManager_namespaceUUID__block_invoke()
{
  namespaceUUID__hmf_once_v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B4FFBCEC-B0A2-4660-B1B2-4B484FE76D74"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDTTRManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_defaultManager;

  return v2;
}

void __30__HMDTTRManager_sharedManager__block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (isInternalBuild() && TapToRadarKitLibraryCore())
  {
    v2 = [HMDTTRManager alloc];
    v3 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
    v4 = [*(a1 + 32) defaultFilter];
    v5 = [(HMDTTRManager *)v2 initWithDialog:v3 requestFilter:v4];
    v6 = sharedManager_defaultManager;
    sharedManager_defaultManager = v5;

    v7 = +[HMDMessageDispatcher defaultDispatcher];
    v8 = sharedManager_defaultManager;
    v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v7 registerForMessage:@"presentTTRDialog" receiver:v8 policies:v10 selector:sel_handlePresentTTRDialog_];

    v11 = sharedManager_defaultManager;
    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v15 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v7 registerForMessage:@"resetLastTTRTime" receiver:v11 policies:v13 selector:sel_handleResetLastTTRTime_];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end