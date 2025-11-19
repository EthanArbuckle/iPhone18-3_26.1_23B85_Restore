@interface HMDMTSAuthorizationServer
+ (id)logCategory;
- (HMDMTSAuthorizationServer)initWithAccountManager:(id)a3;
- (HMDMTSAuthorizationServer)initWithUIDialogPresenter:(id)a3 accountManager:(id)a4 systemPreferenceReader:(id)a5;
- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a3;
- (void)showRestrictedCharacteristicsAccessWarningAlert;
@end

@implementation HMDMTSAuthorizationServer

- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMTSAuthorizationServer *)self systemPreferenceReader];
  v6 = (v5)[2](v5, @"EnableBluetoothCentralMatterClientSkipDeveloperModeRestrictionProfile");

  v7 = [v6 BOOLValue];
  if (v7)
  {
    [(HMDMTSAuthorizationServer *)self showRestrictedCharacteristicsAccessWarningAlert];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Restricted characteristics access allowed returning %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v4[2](v4, v7);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)showRestrictedCharacteristicsAccessWarningAlert
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Showing restricted characteristics access warning", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMTSAuthorizationServer *)v4 uiDialogPresenter];
  v8 = [(HMDMTSAuthorizationServer *)v4 accountManager];
  v9 = [v8 device];
  v10 = [v9 name];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMDMTSAuthorizationServer_showRestrictedCharacteristicsAccessWarningAlert__block_invoke;
  v12[3] = &unk_279735D00;
  v12[4] = v4;
  [v7 displayRestrictedBluetoothCharacteristicsWarningWithDeviceName:v10 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __76__HMDMTSAuthorizationServer_showRestrictedCharacteristicsAccessWarningAlert__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Restricted characteristics access warning dismissed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (HMDMTSAuthorizationServer)initWithAccountManager:(id)a3
{
  v4 = a3;
  v5 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v6 = [(HMDMTSAuthorizationServer *)self initWithUIDialogPresenter:v5 accountManager:v4 systemPreferenceReader:&__block_literal_global_185447];

  return v6;
}

id __52__HMDMTSAuthorizationServer_initWithAccountManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0F918];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 initWithKey:v3 options:0 domain:*MEMORY[0x277CD0030] defaultValue:0];

  return v5;
}

- (HMDMTSAuthorizationServer)initWithUIDialogPresenter:(id)a3 accountManager:(id)a4 systemPreferenceReader:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDMTSAuthorizationServer;
  v12 = [(HMDMTSAuthorizationServer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uiDialogPresenter, a3);
    v14 = _Block_copy(v11);
    systemPreferenceReader = v13->_systemPreferenceReader;
    v13->_systemPreferenceReader = v14;

    objc_storeStrong(&v13->_accountManager, a4);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_185457 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_185457, &__block_literal_global_5_185458);
  }

  v3 = logCategory__hmf_once_v4_185459;

  return v3;
}

uint64_t __40__HMDMTSAuthorizationServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_185459;
  logCategory__hmf_once_v4_185459 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end