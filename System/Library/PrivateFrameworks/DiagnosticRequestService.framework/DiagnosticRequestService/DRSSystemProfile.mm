@interface DRSSystemProfile
+ (id)SHA256DigestForString:(id)a3;
+ (id)sharedInstance;
+ (unint64_t)hashForSHA256Digest:(id)a3;
+ (unint64_t)uploadSessionUploadCapBytesWithIsInternal:(BOOL)a3 isSeed:(BOOL)a4 deviceModelHash:(unint64_t)a5;
- (BOOL)customerApprovesAnalytics;
- (BOOL)isCarrier;
- (BOOL)isInternal;
- (BOOL)isLogUploadEnabled;
- (BOOL)isSeed;
- (BOOL)isTaskingEnabled;
- (DRSSystemProfile)init;
- (NSString)automatedDeviceGroup;
- (NSString)buildVariant;
- (NSString)platformString;
- (unint64_t)uploadSessionUploadCapBytes;
- (void)_populateBuild;
- (void)_populateBuildVariant;
- (void)_populateCarrier;
- (void)_populateDeviceCategory;
- (void)_populateDeviceHash;
- (void)_populateDeviceModel;
- (void)_populateHWModel;
- (void)_populateIsCarry;
@end

@implementation DRSSystemProfile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[DRSSystemProfile sharedInstance];
  }

  v3 = sharedInstance_sharedProfile;

  return v3;
}

void __34__DRSSystemProfile_sharedInstance__block_invoke()
{
  v53 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(DRSSystemProfile);
  v1 = sharedInstance_sharedProfile;
  sharedInstance_sharedProfile = v0;

  v2 = DPLogHandle_SystemProfile();
  if (os_signpost_enabled(v2))
  {
    v3 = [sharedInstance_sharedProfile build];
    v4 = [sharedInstance_sharedProfile buildVariant];
    v5 = [sharedInstance_sharedProfile deviceCategory];
    v6 = [sharedInstance_sharedProfile deviceModel];
    v22 = [sharedInstance_sharedProfile platformString];
    v21 = [sharedInstance_sharedProfile deviceHash];
    v20 = [sharedInstance_sharedProfile isInternal];
    v19 = [sharedInstance_sharedProfile isSeed];
    v18 = [sharedInstance_sharedProfile isCarrier];
    v17 = [sharedInstance_sharedProfile customerApprovesAnalytics];
    v16 = [sharedInstance_sharedProfile isLogUploadEnabled];
    v15 = [sharedInstance_sharedProfile isTaskingEnabled];
    v7 = [sharedInstance_sharedProfile uploadSessionUploadCapBytes];
    v8 = [sharedInstance_sharedProfile hwModel];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"-";
    }

    v11 = [sharedInstance_sharedProfile isLikelyCarryGroupNum];
    v12 = v11;
    *buf = 138546946;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"-";
    }

    v24 = v3;
    v25 = 2114;
    v26 = v4;
    v27 = 2114;
    v28 = v5;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v22;
    v33 = 2050;
    v34 = v21;
    v35 = 1026;
    v36 = v20;
    v37 = 1026;
    v38 = v19;
    v39 = 1026;
    v40 = v18;
    v41 = 1026;
    v42 = v17;
    v43 = 1026;
    v44 = v16;
    v45 = 1026;
    v46 = v15;
    v47 = 2050;
    v48 = v7;
    v49 = 2114;
    v50 = v10;
    v51 = 2114;
    v52 = v13;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemProfileSingleton", "build                       = %{public}@\nbuildVariant                = %{public}@\ndeviceCategory              = %{public}@\ndeviceModel                 = %{public}@\nplatformString              = %{public}@\ndeviceHash                  = %{public}#llx\nisInternal                  = %{public}u\nisSeed                      = %{public}u\nisCarrier                   = %{public}u\ncustomerApprovesAnalytics   = %{public}u\nisLogUploadEnabled          = %{public}u\nisTaskingEnabled            = %{public}u\nuploadSessionUploadCapBytes = %{public}llu\nhwModel                     = %{public}@n\nisLikelyCarry               = %{public}@n\n", buf, 0x80u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_populateDeviceCategory
{
  v3 = MGGetSInt32Answer() - 1;
  if (v3 <= 0xB)
  {
    deviceCategory = self->_deviceCategory;
    self->_deviceCategory = &off_27899F930[v3]->isa;
  }
}

- (void)_populateDeviceModel
{
  v3 = MobileGestalt_get_current_device();
  v4 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = DPLogHandle_SystemProfile();
  if (os_signpost_enabled(v5))
  {
    *v9 = 0;
  }

  v6 = MGGetStringAnswer();
  if (v6)
  {
    v4 = v6;
LABEL_6:
    deviceModel = self->_deviceModel;
    self->_deviceModel = v4;
    v8 = v4;
  }
}

- (void)_populateCarrier
{
  self->_isCarrierVal = 0;
  if (![(DRSSystemProfile *)self isInternal])
  {
    v3 = MGGetStringAnswer();
    if (v3)
    {
      v4 = v3;
      self->_isCarrierVal = CFStringCompare(v3, @"Carrier", 0) == kCFCompareEqualTo;

      CFRelease(v4);
    }
  }
}

- (void)_populateBuild
{
  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    v4 = v3;
    obj = CFDictionaryGetValue(v3, *MEMORY[0x277CBEC70]);
    if (obj)
    {
      objc_storeStrong(&self->_build, obj);
    }

    CFRelease(v4);
  }

  else
  {
    v5 = DPLogHandle_SystemProfileError();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OsVersionReadFailure", "Could not fetch OS version using _CFCopySystemVersionDictionary", buf, 2u);
    }
  }
}

+ (id)SHA256DigestForString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));

  return v4;
}

+ (unint64_t)hashForSHA256Digest:(id)a3
{
  v3 = a3;
  if ([v3 length] != 32)
  {
    v9 = DPLogHandle_SystemProfileError();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(DRSSystemProfile *)v3 hashForSHA256Digest:v9];
    }

    goto LABEL_9;
  }

  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = (v5 >> 3);
  if (!(v5 >> 3))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  do
  {
    v8 = *v4++;
    v7 ^= v8;
    --v6;
  }

  while (v6);
LABEL_10:

  return v7;
}

- (void)_populateDeviceHash
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3 && [v3 length] && !objc_msgSend(v4, "isEqualToString:", @"ffffffffffffffffffffffffffffffffffffffff"))
  {
    v7 = [objc_opt_class() SHA256DigestForString:v4];
    deviceSHA256Digest = self->_deviceSHA256Digest;
    self->_deviceSHA256Digest = v7;

    v9 = objc_opt_class();
    v10 = [(DRSSystemProfile *)self deviceSHA256Digest];
    self->_deviceHash = [v9 hashForSHA256Digest:v10];

    v5 = DPLogHandle_SystemProfile();
    if (os_signpost_enabled(v5))
    {
      v11 = [(DRSSystemProfile *)self deviceHash];
      v12 = [(DRSSystemProfile *)self deviceSHA256Digest];
      v13 = 134349570;
      v14 = v11;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceHashCalculation", "Device hash %{public}llx from UDID %{public}@ -> digest %{public}@", &v13, 0x20u);
    }
  }

  else
  {
    v5 = DPLogHandle_SystemProfileError();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(DRSSystemProfile *)v5 _populateDeviceHash];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)platformString
{
  v2 = [(DRSSystemProfile *)self platform];

  return DRSSystemProfilePlatformStringForPlatform(v2);
}

- (NSString)buildVariant
{
  v3 = [(DRSSystemProfile *)self isInternal];
  v4 = [(DRSSystemProfile *)self isSeed];
  v5 = [(DRSSystemProfile *)self isCarrier];

  return DRSSystemProfileVariantStringForParameters(v3, v4, v5);
}

- (void)_populateBuildVariant
{
  self->_isInternalVal = os_variant_has_internal_diagnostics();
  self->_isSeedVal = 0;

  [(DRSSystemProfile *)self _populateCarrier];
}

- (void)_populateHWModel
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(DRSSystemProfile *)self isInternal])
  {
    v14 = 32;
    if (sysctlbyname("hw.model", v17, &v14, 0, 0))
    {
      v3 = DPLogHandle_SystemProfile();
      if (os_signpost_enabled(v3))
      {
        v4 = *__error();
        v5 = __error();
        v6 = strerror(*v5);
        *buf = 67109378;
        LODWORD(v16[0]) = v4;
        WORD2(v16[0]) = 2082;
        *(v16 + 6) = v6;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWModelLookupFailure", "Failed to lookup hw.model: %d %{public}s", buf, 0x12u);
      }

      hwModel = self->_hwModel;
      self->_hwModel = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];
      v11 = self->_hwModel;
      self->_hwModel = v10;

      hwModel = DPLogHandle_SystemProfile();
      if (os_signpost_enabled(hwModel))
      {
        v12 = [(DRSSystemProfile *)self hwModel];
        *buf = 138543362;
        v16[0] = v12;
        _os_signpost_emit_with_name_impl(&dword_232906000, hwModel, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWModelLookupSuccess", "hw.model: '%{public}@'", buf, 0xCu);
      }
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = self->_hwModel;
    self->_hwModel = 0;
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_populateIsCarry
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(DRSSystemProfile *)self isInternal])
  {
    v3 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
    v4 = [v3 lowercaseString];

    v5 = MEMORY[0x277CCABB0];
    if (([v4 containsString:@"carry"]& 1) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 containsString:@"walkabout"];
    }

    v7 = [v5 numberWithInt:v6];
    isLikelyCarryGroupNum = self->_isLikelyCarryGroupNum;
    self->_isLikelyCarryGroupNum = v7;

    v9 = DPLogHandle_SystemProfile();
    if (os_signpost_enabled(v9))
    {
      v10 = [(DRSSystemProfile *)self isLikelyCarryGroupNum];
      v11 = [v10 BOOLValue];
      v12 = @"Not likely carry";
      if (v11)
      {
        v12 = @"Likely carry";
      }

      v13 = @"<no string>";
      if (v4)
      {
        v13 = v4;
      }

      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsLikelyCarryLookup", "Decided that the device is: '%{public}@' based on experimental group string: '%{public}@'", &v15, 0x16u);
    }
  }

  else
  {
    v4 = DPLogHandle_SystemProfile();
    if (os_signpost_enabled(v4))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsLikelyCarryLookupSkipped", "We dont reason about carry for non-Internal devices", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSeed
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsSeed];
  }

  else
  {

    return [(DRSSystemProfile *)self isSeedVal];
  }
}

- (BOOL)isInternal
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsInternal];
  }

  else
  {

    return [(DRSSystemProfile *)self isInternalVal];
  }
}

- (BOOL)isCarrier
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsCarrier];
  }

  else
  {

    return [(DRSSystemProfile *)self isCarrierVal];
  }
}

- (BOOL)customerApprovesAnalytics
{
  if ([(DRSSystemProfile *)self allowsCustomerAnalyticsOverride])
  {

    return [(DRSSystemProfile *)self overridingCustomerApprovesAnalyticsValue];
  }

  else
  {

    return MEMORY[0x282158D98]();
  }
}

- (DRSSystemProfile)init
{
  v8.receiver = self;
  v8.super_class = DRSSystemProfile;
  v2 = [(DRSSystemProfile *)&v8 init];
  v3 = v2;
  if (v2)
  {
    build = v2->_build;
    v2->_build = @"Unknown";

    deviceModel = v3->_deviceModel;
    v3->_deviceModel = @"Unknown";

    deviceCategory = v3->_deviceCategory;
    v3->_deviceCategory = @"Unknown";

    [(DRSSystemProfile *)v3 _populateBuildVariant];
    [(DRSSystemProfile *)v3 _populateBuild];
    [(DRSSystemProfile *)v3 _populateDeviceModel];
    [(DRSSystemProfile *)v3 _populateDeviceCategory];
    [(DRSSystemProfile *)v3 _populatePlatform];
    [(DRSSystemProfile *)v3 _populateDeviceHash];
    [(DRSSystemProfile *)v3 _populateHWModel];
    [(DRSSystemProfile *)v3 _populateIsCarry];
  }

  return v3;
}

- (BOOL)isLogUploadEnabled
{
  v3 = [(DRSSystemProfile *)self customerApprovesAnalytics];
  if (v3)
  {
    LOBYTE(v3) = ![(DRSSystemProfile *)self hasForbiddenAutomatedDeviceGroup];
  }

  return v3;
}

- (BOOL)isTaskingEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(DRSSystemProfile *)self customerApprovesAnalytics];
  if (v3)
  {
    v4 = ![(DRSSystemProfile *)self isCarrier];
  }

  else
  {
    v4 = 0;
  }

  v5 = DPLogHandle_SystemProfile();
  if (os_signpost_enabled(v5))
  {
    v8[0] = 67240704;
    v8[1] = v3;
    v9 = 1026;
    v10 = [(DRSSystemProfile *)self isCarrier];
    v11 = 1026;
    v12 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsTaskingEnabledDetails", "customerApprovesAnalytics = %{public}u isCarrier = %{public}u isTaskingEnabled = %{public}u", v8, 0x14u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (unint64_t)uploadSessionUploadCapBytesWithIsInternal:(BOOL)a3 isSeed:(BOOL)a4 deviceModelHash:(unint64_t)a5
{
  v5 = 0x40000000;
  if (a5 == 0x14C201DB1898C936)
  {
    v5 = 0x80000000;
  }

  if (!a4)
  {
    v5 = 0x8000000;
  }

  if (a3)
  {
    return 0x140000000;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)uploadSessionUploadCapBytes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DRSSystemProfile_uploadSessionUploadCapBytes__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  if (uploadSessionUploadCapBytes_onceToken_0 != -1)
  {
    dispatch_once(&uploadSessionUploadCapBytes_onceToken_0, block);
  }

  return uploadSessionUploadCapBytes_cap_0;
}

void __47__DRSSystemProfile_uploadSessionUploadCapBytes__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) isInternal];
  v5 = [*(a1 + 32) isSeed];
  v6 = [*(a1 + 32) deviceModel];
  uploadSessionUploadCapBytes_cap_0 = [v3 uploadSessionUploadCapBytesWithIsInternal:v4 isSeed:v5 deviceModelHash:{objc_msgSend(v6, "hash")}];
}

- (NSString)automatedDeviceGroup
{
  if (automatedDeviceGroup_onceToken != -1)
  {
    [DRSSystemProfile automatedDeviceGroup];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__DRSSystemProfile_automatedDeviceGroup__block_invoke_120;
  v5[3] = &unk_27899F8D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(automatedDeviceGroup_automatedDeviceGroupSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__DRSSystemProfile_automatedDeviceGroup__block_invoke()
{
  v0 = dispatch_queue_create("DRSSystemProfile automated device group sync queue", 0);
  v1 = automatedDeviceGroup_automatedDeviceGroupSyncQueue;
  automatedDeviceGroup_automatedDeviceGroupSyncQueue = v0;
}

void __40__DRSSystemProfile_automatedDeviceGroup__block_invoke_120(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allowsAutomatedDeviceGroupOverride];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 overridingAutomatedDeviceGroup];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = DPLogHandle_SystemProfile();
    if (os_signpost_enabled(v7))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v22 = 138543362;
      v23 = v8;
      v9 = "AutomatedDeviceGroupOverridden";
      v10 = "Got an overridden value: '%{public}@'";
      v11 = v7;
      v12 = 12;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, &v22, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if ([v3 isInternal])
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v13 - *&automatedDeviceGroup_lastQueryTimestamp >= 60.0)
    {
      automatedDeviceGroup_lastQueryTimestamp = *&v13;
      v17 = [MEMORY[0x277D36B80] automatedDeviceGroup];
      v18 = automatedDeviceGroup_automatedDeviceGroup;
      automatedDeviceGroup_automatedDeviceGroup = v17;

      v14 = DPLogHandle_SystemProfile();
      if (os_signpost_enabled(v14))
      {
        v22 = 138543362;
        v23 = automatedDeviceGroup_automatedDeviceGroup;
        v15 = "AutomatedDeviceGroupLookup";
        v16 = "Got a new automated device group: '%{public}@'";
        goto LABEL_13;
      }
    }

    else
    {
      v14 = DPLogHandle_SystemProfile();
      if (os_signpost_enabled(v14))
      {
        v22 = 134217984;
        v23 = 0x404E000000000000;
        v15 = "AutomatedDeviceGroupLookupHysteresis";
        v16 = "Skipping fresh lookup due to hysteresis of %.2fsec";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, v16, &v22, 0xCu);
      }
    }

    v19 = *(*(a1 + 40) + 8);
    v20 = automatedDeviceGroup_automatedDeviceGroup;
    v7 = *(v19 + 40);
    *(v19 + 40) = v20;
    goto LABEL_15;
  }

  v7 = DPLogHandle_SystemProfile();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v22) = 0;
    v9 = "AutomatedDeviceGroupSkipped";
    v10 = "Skipping automated device group lookup since we are not 'Internal'";
    v11 = v7;
    v12 = 2;
    goto LABEL_10;
  }

LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)hashForSHA256Digest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = [a1 length];
  v6 = 1024;
  v7 = 32;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "Attempted to generate a hash from a digest of unexpected length %lu (expected %d)", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end