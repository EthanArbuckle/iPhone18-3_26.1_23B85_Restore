@interface NPKBiometricPassPreflightManager
- (NPKBiometricPassPreflightManager)initWithDataSource:(id)source;
- (NPKBiometricPassPreflightManagerDataSource)dataSource;
- (void)preflightStatusForType:(unint64_t)type pairedDeviceMinOSVersion:(id)version completion:(id)completion;
@end

@implementation NPKBiometricPassPreflightManager

- (NPKBiometricPassPreflightManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = NPKBiometricPassPreflightManager;
  v5 = [(NPKBiometricPassPreflightManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)preflightStatusForType:(unint64_t)type pairedDeviceMinOSVersion:(id)version completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  completionCopy = completion;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Start credential Preflight Status ForType:%@ minOSVersion", buf, 0xCu);
    }
  }

  if (!versionCopy)
  {
    goto LABEL_8;
  }

  dataSource = [(NPKBiometricPassPreflightManager *)self dataSource];
  v15 = [dataSource biometricPassPreflightManagerPairedDeviceOSVersion:self];

  if (PKVersionCheck())
  {

LABEL_8:
    if (type == 1 && (NPKPairedOrPairingDeviceSupportsCredentialType(129) & 1) != 0)
    {
      dataSource2 = [(NPKBiometricPassPreflightManager *)self dataSource];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke;
      v26[3] = &unk_27994B240;
      v28 = 1;
      v27 = completionCopy;
      [dataSource2 biometricPassPreflightManager:self provisionedCredentialCountsForType:1 completion:v26];

      v15 = v27;
    }

    else
    {
      v17 = pk_Payment_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v19 = pk_Payment_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
          *buf = 138412290;
          v30 = v20;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Paired device doesn't support credential type:%@", buf, 0xCu);
        }
      }

      v15 = NPKIDVRemoteDeviceSessionError(-1000, 0);
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }

    goto LABEL_21;
  }

  v21 = pk_Payment_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = pk_Payment_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v15;
      v31 = 2112;
      v32 = versionCopy;
      _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Paired device with OSVersion:%@ doesn't fulfill minOSVersion:%@", buf, 0x16u);
    }
  }

  v24 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  (*(completionCopy + 2))(completionCopy, 0, v24);

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

void __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  [v4 loadWebService];
  v5 = [v4 targetDevice];
  v6 = [v4 webService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke_2;
  v8[3] = &unk_27994B218;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v7;
  [v5 paymentWebService:v6 validateAddBiometricPassPreconditionsWithCompletion:v8];
}

void __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromNPKIDVRemoteDeviceCredentialType(a1[5]);
      v12[0] = 67109634;
      v12[1] = a2;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish credential Preflight Status:%d ForType:%@ error:%@", v12, 0x1Cu);
    }
  }

  v10 = [[NPKIDVRemoteDeviceCredentialPreflightStatus alloc] initWithCredentialType:a1[5] provisionedPassesCount:a1[6] preflightSuccessful:a2];
  (*(a1[4] + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (NPKBiometricPassPreflightManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end