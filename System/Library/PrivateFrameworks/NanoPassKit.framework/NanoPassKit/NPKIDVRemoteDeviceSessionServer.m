@interface NPKIDVRemoteDeviceSessionServer
- (NPKIDVRemoteDeviceSessionServer)initWithConnection:(id)a3 eventsCoordinator:(id)a4 connectionCoordinator:(id)a5 preflightManager:(id)a6;
- (NPKIDVRemoteDeviceSessionServerDataSource)dataSource;
- (id)_checkCredentialProvisioningEntitlement;
- (id)_checkCredentialStoreBiometricsEntitlement;
- (id)_checkCredentialStoreEntitlementWithPartition:(id)a3;
- (void)addNotificationWithType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5 completion:(id)a6;
- (void)configureWithPartition:(id)a3 ackHandler:(id)a4;
- (void)confirmRemoteDeviceID:(id)a3 withCompletion:(id)a4;
- (void)createCredentialInPartition:(id)a3 options:(id)a4 completion:(id)a5;
- (void)credentialIdentifiersInPartitions:(id)a3 completion:(id)a4;
- (void)credentialPreflightStatusForType:(unint64_t)a3 minOSVersion:(id)a4 completion:(id)a5;
- (void)deleteCredential:(id)a3 completion:(id)a4;
- (void)deleteGlobalAuthACLWithCompletion:(id)a3;
- (void)deletePIIHashDataForCredentialIdentifier:(id)a3 completion:(id)a4;
- (void)establishPrearmTrustV2:(id)a3 completion:(id)a4;
- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a3 completion:(id)a4;
- (void)generateKeyWithType:(unint64_t)a3 credentialIdentifier:(id)a4 completion:(id)a5;
- (void)generatePresentmentKeysForCredential:(id)a3 numKeys:(int64_t)a4 completion:(id)a5;
- (void)getCASDCertificateWithCompletion:(id)a3;
- (void)nonceForAuthorizationTokenWithCompletion:(id)a3;
- (void)pairedWatchSEIDWithCompletion:(id)a3;
- (void)prearmCredentialWithAuthorizationToken:(id)a3 completion:(id)a4;
- (void)propertiesOfCredential:(id)a3 completion:(id)a4;
- (void)provisionCredentialWithType:(unint64_t)a3 metadata:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8;
- (void)provisionedCredentialCountForType:(unint64_t)a3 completion:(id)a4;
- (void)registerForEvents:(unint64_t)a3 withRemoteProcessServiceName:(id)a4 completion:(id)a5;
- (void)retrievePIIHashDataForCredentialIdentifier:(id)a3 completion:(id)a4;
- (void)storePIIHashDataForCredentialIdentifier:(id)a3 data:(id)a4 completion:(id)a5;
- (void)unregisterFromEvents:(unint64_t)a3 withRemoteProcessServiceName:(id)a4 completion:(id)a5;
- (void)updateProofingConfiguration:(id)a3 completion:(id)a4;
@end

@implementation NPKIDVRemoteDeviceSessionServer

- (NPKIDVRemoteDeviceSessionServer)initWithConnection:(id)a3 eventsCoordinator:(id)a4 connectionCoordinator:(id)a5 preflightManager:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = NPKIDVRemoteDeviceSessionServer;
  v14 = [(PDXPCService *)&v17 initWithConnection:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventsCoordinator, a4);
    objc_storeStrong(&v15->_connectionCoordinator, a5);
    objc_storeStrong(&v15->_preflightManager, a6);
  }

  return v15;
}

- (void)confirmRemoteDeviceID:(id)a3 withCompletion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator remoteDeviceID];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested confirm deviceID:%@ actual deviceID:%@", &v20, 0x16u);
    }
  }

  if (!v8)
  {
    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        v21 = v6;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to confirm given deviceID:%@, no active device is initialized", &v20, 0xCu);
      }
    }

    v12 = NPKIDVRemoteDeviceSessionError(-1003, 0);
    goto LABEL_19;
  }

  if (v6 && ([v6 isEqualToString:v8] & 1) == 0)
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        v21 = v6;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to confirm given deviceID:%@", &v20, 0xCu);
      }
    }

    v12 = NPKIDVRemoteDeviceSessionError(-1002, 0);

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:
  v7[2](v7, v8, v12);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)credentialPreflightStatusForType:(unint64_t)a3 minOSVersion:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(a3);
      *buf = 138412546;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested credential Preflight Status ForType:%@ minOSVersion:%@", buf, 0x16u);
    }
  }

  v14 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator remoteDeviceID];
  if (!v14)
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Fail fetch credential Preflight Status, no active device is initialized", buf, 2u);
      }
    }

    v20 = -1003;
    goto LABEL_18;
  }

  if (a3 != 1)
  {
    v21 = pk_Payment_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = pk_Payment_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[NPKIDVRemoteDeviceSessionServer credentialPreflightStatusForType:minOSVersion:completion:]";
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: If you think the given credential type is correct you probably need to makes some code changes at %s", buf, 0xCu);
      }
    }

    v20 = -1050;
LABEL_18:
    v16 = NPKIDVRemoteDeviceSessionError(v20, 0);
    v9[2](v9, 0, v16);
    goto LABEL_19;
  }

  preflightManager = self->_preflightManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__NPKIDVRemoteDeviceSessionServer_credentialPreflightStatusForType_minOSVersion_completion___block_invoke;
  v25[3] = &unk_2799450D8;
  v27 = 1;
  v26 = v9;
  [(NPKBiometricPassPreflightManager *)preflightManager preflightStatusForType:1 pairedDeviceMinOSVersion:v8 completion:v25];
  v16 = v26;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
}

void __92__NPKIDVRemoteDeviceSessionServer_credentialPreflightStatusForType_minOSVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 40));
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish credential Preflight Status:%@ ForType:%@ error:%@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)provisionedCredentialCountForType:(unint64_t)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];

  if (v7)
  {
    v8 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];
    [v8 remoteDevicesSessionServer:self provisionedCredentialCountsForType:a3 completion:v6];
  }

  else
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch provisioned credential count! No data source found.", v16, 2u);
      }
    }

    if (v6)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"No data source found";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v13];

      v6[2](v6, 0, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];

  if (v7)
  {
    v8 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];
    [v8 remoteDevicesSessionServer:self remoteBiometricAuthenticationStatusForCredentialType:a3 completion:v6];
  }

  else
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch remote biometric authentication status! No data source found.", v16, 2u);
      }
    }

    if (v6)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"No data source found";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v13];

      v6[2](v6, 0, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerForEvents:(unint64_t)a3 withRemoteProcessServiceName:(id)a4 completion:(id)a5
{
  v10 = a5;
  v8 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator registerEvents:a3 forServiceName:a4];
  if (v8 == 0xFFFFFFFF80000000)
  {
    v9 = NPKIDVRemoteDeviceSessionError(-1003, 0);
  }

  else
  {
    v9 = 0;
  }

  v10[2](v10, v8, v9);
}

- (void)unregisterFromEvents:(unint64_t)a3 withRemoteProcessServiceName:(id)a4 completion:(id)a5
{
  v10 = a5;
  v8 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator unregisterEvents:a3 forServiceName:a4];
  if (v8 == 0xFFFFFFFF80000000)
  {
    v9 = NPKIDVRemoteDeviceSessionError(-1003, 0);
  }

  else
  {
    v9 = 0;
  }

  v10[2](v10, v8, v9);
}

- (void)getCASDCertificateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested CASD certificate", v9, 2u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v8)
  {
    v4[2](v4, 0, v8);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator getCASDCertificateWithCompletion:v4];
  }
}

- (void)pairedWatchSEIDWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v4)
  {
    v9[2](v9, 0, v4);
  }

  else
  {
    v5 = [MEMORY[0x277D2BCF8] sharedInstance];
    v6 = [v5 getActivePairedDevice];

    v7 = [v6 valueForProperty:*MEMORY[0x277D2BBE0]];
    if (v7)
    {
      (v9)[2](v9, v7, 0);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.nanopasskit.IDVRemoteDeviceSession.error" code:-1003 userInfo:0];
      v9[2](v9, 0, v8);
    }
  }
}

- (void)configureWithPartition:(id)a3 ackHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested configure Credential store partitions:%@", &v19, 0xCu);
    }
  }

  if ([(NSSet *)self->_partitions count])
  {
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        partitions = self->_partitions;
        v19 = 138412290;
        v20 = partitions;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Session is already configured with partitions:%@. We don't allow to configure it multiple times", &v19, 0xCu);
      }
    }

    v15 = NPKIDVRemoteDeviceSessionError(-1000, 0);
    v7[2](v7, v15);
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v17 = self->_partitions;
    self->_partitions = v16;

    v7[2](v7, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)createCredentialInPartition:(id)a3 options:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested create credential in partition:%@ with options:%@", buf, 0x16u);
    }
  }

  v17 = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:v14];

  if (v15)
  {
    v10[2](v10, 0, v15);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator createCredentialInPartition:v8 options:v9 completion:v10];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)generateKeyWithType:(unint64_t)a3 credentialIdentifier:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(a3);
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate Key of type:%@ For Credential:%@", &v16, 0x16u);
    }
  }

  v14 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v14)
  {
    v9[2](v9, 0, v14);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator generateKeyWithType:a3 credentialIdentifier:v8 withConfiguredPartitions:self->_partitions completion:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)generatePresentmentKeysForCredential:(id)a3 numKeys:(int64_t)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate presentent keys for Credential:%@", &v15, 0xCu);
    }
  }

  v13 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v13)
  {
    v9[2](v9, 0, v13);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator generatePresentmentKeysForCredential:v8 numKeys:a4 withConfiguredPartitions:self->_partitions completion:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deleteCredential:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete Credential:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v11)
  {
    v7[2](v7, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deleteCredential:v6 withConfiguredPartitions:self->_partitions completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)propertiesOfCredential:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch properties Of Credential:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v11)
  {
    v7[2](v7, 0, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator propertiesOfCredential:v6 withConfiguredPartitions:self->_partitions completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)credentialIdentifiersInPartitions:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch credential Identifiers In Partitions:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:v6];
  if (v11)
  {
    v7[2](v7, 0, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator credentialIdentifiersInPartitions:v6 completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)provisionCredentialWithType:(unint64_t)a3 metadata:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialProvisioningEntitlement];
  if (v19)
  {
    v18[2](v18, 0, v19);
  }

  else
  {
    v20 = pk_Payment_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_Payment_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromNPKIDVRemoteDeviceCredentialType(a3);
        *buf = 138412546;
        v34 = v23;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested provision credential type:%@ identifier:%@", buf, 0x16u);
      }
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __134__NPKIDVRemoteDeviceSessionServer_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
    v30 = &unk_279945100;
    v24 = v15;
    v31 = v24;
    v32 = v18;
    v25 = _Block_copy(&v27);
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator provisionCredentialWithType:a3 metadata:v14 credentialIdentifier:v24 attestations:v16 supplementalData:v17 completion:v25, v27, v28, v29, v30];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __134__NPKIDVRemoteDeviceSessionServer_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish provision credential with identifier:%@ secureElementPass:%@ error:%@", &v13, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested nonce for authentication token", v9, 2u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v8)
  {
    v4[2](v4, 0, v8);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator nonceForAuthorizationTokenWithCompletion:v4];
  }
}

- (void)prearmCredentialWithAuthorizationToken:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested pre-arm credential with authentication token:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v11)
  {
    v7[2](v7, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator prearmCredentialWithAuthorizationToken:v6 completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)establishPrearmTrustV2:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Server requested establish trust V2 with Key:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v11)
  {
    v7[2](v7, 0, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator establishPrearmTrustV2:v6 completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteGlobalAuthACLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete global auth ACL", v9, 2u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (v8)
  {
    v4[2](v4, v8);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deleteGlobalAuthACLWithCompletion:v4];
  }
}

- (void)addNotificationWithType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromNPKIDVRemoteDeviceNotificationType(a3);
      v16 = NSStringFromNPKIDVRemoteDeviceDocumentType(a4);
      *buf = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested add notification type:%@ document type:%@ issuerName:%@", buf, 0x20u);
    }
  }

  v17 = [(PDXPCService *)self connection];
  v18 = [v17 valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.extendedReviewNotification"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v18 BOOLValue])
  {
    connectionCoordinator = self->_connectionCoordinator;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__NPKIDVRemoteDeviceSessionServer_addNotificationWithType_documentType_issuerName_completion___block_invoke;
    v26[3] = &unk_279945128;
    v28 = a3;
    v27 = v11;
    [(NPKIDVRemoteDeviceConnectionCoordinator *)connectionCoordinator addNotificationWithType:a3 documentType:a4 issuerName:v10 completion:v26];
    v20 = v27;
  }

  else
  {
    v20 = NPKIDVRemoteDeviceSessionError(-1000, 0);
    v21 = pk_Payment_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v23 = pk_Payment_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromNPKIDVRemoteDeviceNotificationType(a3);
        *buf = 138412546;
        v30 = v24;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error Requesting add notification type:%@ error:%@", buf, 0x16u);
      }
    }

    if (v11)
    {
      (*(v11 + 2))(v11, v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __94__NPKIDVRemoteDeviceSessionServer_addNotificationWithType_documentType_issuerName_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = pk_Payment_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v8 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    v9 = "Error: NPKIDVRemoteDeviceService: Fail Requesting add notification type:%@ error:%@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v13)
  {
    goto LABEL_10;
  }

  v7 = pk_Payment_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
    v16 = 138412290;
    v17 = v8;
    v9 = "Notice: NPKIDVRemoteDeviceService: Finish Requesting add notification type:%@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v16, v12);
  }

LABEL_9:

LABEL_10:
  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateProofingConfiguration:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested to update proofing configuration: %@", buf, 0xCu);
    }
  }

  connectionCoordinator = self->_connectionCoordinator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NPKIDVRemoteDeviceSessionServer_updateProofingConfiguration_completion___block_invoke;
  v15[3] = &unk_279945150;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [(NPKIDVRemoteDeviceConnectionCoordinator *)connectionCoordinator updateProofingConfiguration:v13 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __74__NPKIDVRemoteDeviceSessionServer_updateProofingConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = pk_Payment_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v3;
    v9 = "Error: NPKIDVRemoteDeviceService: Failed to update proofing configuration (%@). Error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v13)
  {
    goto LABEL_10;
  }

  v7 = pk_Payment_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v17 = 138412290;
    v18 = v14;
    v9 = "Notice: NPKIDVRemoteDeviceService: Finished updating proofing configuration (%@)";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v17, v12);
  }

LABEL_9:

LABEL_10:
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)storePIIHashDataForCredentialIdentifier:(id)a3 data:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested store PII hash for Credential:%@", &v16, 0xCu);
    }
  }

  v14 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v14)
  {
    v10[2](v10, v14);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator storePIIHashDataForCredentialIdentifier:v8 data:v9 withConfiguredPartitions:self->_partitions completion:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)retrievePIIHashDataForCredentialIdentifier:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested retrieve PII hash for Credential:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v11)
  {
    v7[2](v7, 0, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator retrievePIIHashDataForCredentialIdentifier:v6 withConfiguredPartitions:self->_partitions completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deletePIIHashDataForCredentialIdentifier:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete PII hash for Credential:%@", &v13, 0xCu);
    }
  }

  v11 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v11)
  {
    v7[2](v7, v11);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deletePIIHashDataForCredentialIdentifier:v6 withConfiguredPartitions:self->_partitions completion:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_checkCredentialProvisioningEntitlement
{
  v2 = [(PDXPCService *)self connection];
  v3 = [v2 valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.credentialprovisioning"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  }

  return v4;
}

- (id)_checkCredentialStoreBiometricsEntitlement
{
  v2 = [(PDXPCService *)self connection];
  v3 = [v2 valueForEntitlement:@"com.apple.idcredentials.biometrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  }

  return v4;
}

- (id)_checkCredentialStoreEntitlementWithPartition:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PDXPCService *)self connection];
  v6 = [v5 valueForEntitlement:@"com.apple.idcredentials.storage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  if ([(NSSet *)self->_partitions count])
  {
    if ([v7 containsObject:@"*"] && !PKIsInternalInstall())
    {
      v24 = pk_Payment_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v28) = 0;
          v18 = "Error: NPKIDVRemoteDeviceService: WildCard entitlement only allowed at internal builds";
          v19 = v13;
          v20 = 2;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (-[NSSet count](v4, "count") && ([MEMORY[0x277CBEB98] setWithArray:v4], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSubsetOfSet:", self->_partitions), v8, (v9 & 1) == 0))
    {
      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          partitions = self->_partitions;
          v28 = 138412546;
          v29 = v4;
          v30 = 2112;
          v31 = partitions;
          v18 = "Error: NPKIDVRemoteDeviceService: Partitions:%@ must be part of the configured partitions:%@";
          v19 = v13;
          v20 = 22;
          goto LABEL_25;
        }

LABEL_26:
        v14 = -1000;
LABEL_27:

        goto LABEL_29;
      }
    }

    else
    {
      if ([(NSSet *)self->_partitions isSubsetOfSet:v7])
      {
        v10 = 0;
        goto LABEL_30;
      }

      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_partitions;
          v28 = 138412290;
          v29 = v17;
          v18 = "Error: NPKIDVRemoteDeviceService: Missing entitlement for some of the configured partitions:%@";
          v19 = v13;
          v20 = 12;
LABEL_25:
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_ERROR, v18, &v28, v20);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    v14 = -1000;
    goto LABEL_29;
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: no partitions set", &v28, 2u);
    }

    v14 = -1101;
    goto LABEL_27;
  }

  v14 = -1101;
LABEL_29:
  v10 = NPKIDVRemoteDeviceSessionError(v14, 0);
LABEL_30:

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NPKIDVRemoteDeviceSessionServerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end