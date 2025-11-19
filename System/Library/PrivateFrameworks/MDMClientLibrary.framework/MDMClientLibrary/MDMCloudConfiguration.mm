@interface MDMCloudConfiguration
+ (BOOL)isProvisionallyEnrolledWithCloudConfig:(id)a3;
+ (id)_provisionalEnrollmentExpirationDateFromCloudConfig:(id)a3;
+ (id)sharedConfiguration;
- (BOOL)alreadySignedIntoFaceTime;
- (BOOL)hasMAIDCredential;
- (BOOL)isAwaitingConfiguration;
- (BOOL)isMDMUnremovable;
- (BOOL)isProvisionallyEnrolled;
- (BOOL)isRapidReturnToService;
- (BOOL)isStoredProfileInstalled;
- (BOOL)isSupervised;
- (BOOL)isTeslaEnrolled;
- (BOOL)shouldIgnoreMDMFromBackup;
- (MDMCloudConfiguration)init;
- (MDMCloudConfiguration)initWithCloudConfigDetails:(id)a3;
- (NSDictionary)details;
- (NSDictionary)setAsideDetails;
- (id)MAIDUsername;
- (id)enrollmentAnchorCertificates;
- (id)enrollmentServerInfo;
- (id)enrollmentServerSupportedFeatures;
- (id)enrollmentServerURL;
- (id)language;
- (id)languageScript;
- (id)lastDEPPushTokenHash;
- (id)mdmServerUID;
- (id)mdmVersionProtocol;
- (id)migrationDeadline;
- (id)provisionalEnrollmentExpirationDate;
- (id)region;
- (id)skipSetupKeys;
- (int)userMode;
- (void)refreshDetailsFromDisk;
- (void)setDetails:(id)a3;
- (void)setSetAsideDetails:(id)a3;
@end

@implementation MDMCloudConfiguration

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[MDMCloudConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_config;

  return v3;
}

uint64_t __44__MDMCloudConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(MDMCloudConfiguration);
  v1 = sharedConfiguration_config;
  sharedConfiguration_config = v0;

  [sharedConfiguration_config setIsSingleton:1];
  out_token = 0;
  v2 = [*MEMORY[0x277D02FF0] UTF8String];
  v3 = dispatch_get_global_queue(0, 0);
  LODWORD(v2) = notify_register_dispatch(v2, &out_token, v3, &__block_literal_global_3);

  if (v2)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Could not register for Cloud Configuration change notifications.", v6, 2u);
    }
  }

  return [sharedConfiguration_config refreshDetailsFromDisk];
}

- (MDMCloudConfiguration)init
{
  v7.receiver = self;
  v7.super_class = MDMCloudConfiguration;
  v2 = [(MDMCloudConfiguration *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("MDMCloudConfiguration member queue", v3);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v4;
  }

  return v2;
}

- (void)refreshDetailsFromDisk
{
  v3 = [(MDMCloudConfiguration *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MDMCloudConfiguration_refreshDetailsFromDisk__block_invoke;
  block[3] = &unk_278856EE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__MDMCloudConfiguration_refreshDetailsFromDisk__block_invoke(uint64_t a1)
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_22E997000, v2, OS_LOG_TYPE_DEBUG, "Refreshing cloud config details.", v15, 2u);
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MDMCloudConfigurationDetailsFilePath();
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = MDMCloudConfigurationDetailsFilePath();
    v8 = [v6 dictionaryWithContentsOfFile:v7];
    [*(a1 + 32) setMemberQueueDetails:v8];
  }

  else
  {
    [*(a1 + 32) setMemberQueueDetails:0];
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = MDMCloudConfigurationSetAsideDetailsFilePath();
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = MEMORY[0x277CBEAC0];
    v13 = MDMCloudConfigurationSetAsideDetailsFilePath();
    v14 = [v12 dictionaryWithContentsOfFile:v13];
    [*(a1 + 32) setMemberQueueSetAsideDetails:v14];
  }

  else
  {
    [*(a1 + 32) setMemberQueueSetAsideDetails:0];
  }
}

- (BOOL)isSupervised
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03090]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSDictionary)details
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = [(MDMCloudConfiguration *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MDMCloudConfiguration_details__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__MDMCloudConfiguration_details__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueDetails];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int)userMode
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03080]];
  v4 = [v3 BOOLValue];

  return v4;
}

void __44__MDMCloudConfiguration_sharedConfiguration__block_invoke_2()
{
  [sharedConfiguration_config refreshDetailsFromDisk];
  v0 = MEMORY[0x277D85CD0];

  dispatch_async(v0, &__block_literal_global_5_0);
}

void __44__MDMCloudConfiguration_sharedConfiguration__block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D02FF0] object:0];
}

- (MDMCloudConfiguration)initWithCloudConfigDetails:(id)a3
{
  v5 = a3;
  v6 = [(MDMCloudConfiguration *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memberQueueDetails, a3);
  }

  return v7;
}

- (void)setDetails:(id)a3
{
  v4 = a3;
  v5 = [(MDMCloudConfiguration *)self memberQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__MDMCloudConfiguration_setDetails___block_invoke;
  v7[3] = &unk_278856F30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSDictionary)setAsideDetails
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = [(MDMCloudConfiguration *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MDMCloudConfiguration_setAsideDetails__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__MDMCloudConfiguration_setAsideDetails__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueSetAsideDetails];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSetAsideDetails:(id)a3
{
  v4 = a3;
  v5 = [(MDMCloudConfiguration *)self memberQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MDMCloudConfiguration_setSetAsideDetails___block_invoke;
  v7[3] = &unk_278856F30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)isTeslaEnrolled
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03038]];
  v4 = [v3 intValue] == 1;

  return v4;
}

- (BOOL)isAwaitingConfiguration
{
  v3 = [(MDMCloudConfiguration *)self details];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03020]];
  if ([v4 BOOLValue])
  {
    v5 = [(MDMCloudConfiguration *)self details];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03050]];
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isMDMUnremovable
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03078]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isStoredProfileInstalled
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03108]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isRapidReturnToService
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03088]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)mdmVersionProtocol
{
  v3 = [(MDMCloudConfiguration *)self details];
  v4 = *MEMORY[0x277D030C8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D030C8]];

  if (v5)
  {
    v6 = [(MDMCloudConfiguration *)self details];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = &unk_284351498;
  }

  return v7;
}

- (id)MAIDUsername
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030B8]];

  return v3;
}

- (BOOL)hasMAIDCredential
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030B0]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)alreadySignedIntoFaceTime
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03018]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)language
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03098]];

  return v3;
}

- (id)region
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03118]];

  return v3;
}

- (id)languageScript
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030A0]];

  return v3;
}

+ (BOOL)isProvisionallyEnrolledWithCloudConfig:(id)a3
{
  v3 = [a1 _provisionalEnrollmentExpirationDateFromCloudConfig:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v4 compare:v3] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_provisionalEnrollmentExpirationDateFromCloudConfig:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277D03110]];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isProvisionallyEnrolled
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [MDMCloudConfiguration isProvisionallyEnrolledWithCloudConfig:v2];

  return v3;
}

- (id)provisionalEnrollmentExpirationDate
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [MDMCloudConfiguration _provisionalEnrollmentExpirationDateFromCloudConfig:v2];

  return v3;
}

- (id)skipSetupKeys
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03138]];

  return v3;
}

- (id)enrollmentServerInfo
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03060]];

  return v3;
}

- (id)enrollmentServerURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MDMCloudConfiguration *)self details];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03060]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03068]];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (id)enrollmentAnchorCertificates
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03060]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03058]];

  return v4;
}

- (id)enrollmentServerSupportedFeatures
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03060]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03140]];

  return v4;
}

- (id)lastDEPPushTokenHash
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030A8]];

  return v3;
}

- (id)mdmServerUID
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D030D0]];

  return v3;
}

- (id)migrationDeadline
{
  v3 = [MEMORY[0x277D034E0] isoDateFormatter];
  v4 = [(MDMCloudConfiguration *)self details];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D030C0]];
  v6 = [v3 dateFromString:v5];

  return v6;
}

- (BOOL)shouldIgnoreMDMFromBackup
{
  v2 = [(MDMCloudConfiguration *)self details];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03070]];
  v4 = [v3 BOOLValue];

  return v4;
}

@end