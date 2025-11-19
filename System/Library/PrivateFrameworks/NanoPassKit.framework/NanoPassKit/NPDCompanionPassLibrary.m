@interface NPDCompanionPassLibrary
- (NPDCompanionPassLibrary)initWithConnection:(id)a3 companionPaymentPassDatabase:(id)a4 dataSource:(id)a5;
- (NPDCompanionPassLibraryDataSource)dataSource;
- (id)_deviceName;
- (id)_filteredAndConfiguredPassForPaymentPass:(id)a3 deviceName:(id)a4;
- (void)_handleCompanionPassDatabaseNotification:(id)a3;
- (void)addPassesWithData:(id)a3 handler:(id)a4;
- (void)addSharedFlight:(id)a3 fromSenderAddress:(id)a4 handler:(id)a5;
- (void)archivePassWithUniqueID:(id)a3 handler:(id)a4;
- (void)authorizationStatusForCapability:(int64_t)a3 handler:(id)a4;
- (void)backupMetadataWithHandler:(id)a3;
- (void)canAddFelicaPassWithHandler:(id)a3;
- (void)canAddPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)canAddSecureElementPassWithConfiguration:(id)a3 completion:(id)a4;
- (void)checkForTransitNotification;
- (void)countPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)dealloc;
- (void)defaultPaymentPassWithHandler:(id)a3;
- (void)expressTransitPassWithHandler:(id)a3;
- (void)generateIssuerBindingDataForIssuerData:(id)a3 completion:(id)a4;
- (void)getArchivedObjectWithUniqueID:(id)a3 handler:(id)a4;
- (void)getContentForUniqueID:(id)a3 handler:(id)a4;
- (void)getDataForBundleResourceNamed:(id)a3 withExtension:(id)a4 objectUniqueIdentifier:(id)a5 handler:(id)a6;
- (void)getGroupsControllerSnapshotWithOptions:(id)a3 handler:(id)a4;
- (void)getIdentityPassesOfTypes:(id)a3 handler:(id)a4;
- (void)getImageSetForUniqueID:(id)a3 ofType:(int64_t)a4 displayProfile:(id)a5 suffix:(id)a6 handler:(id)a7;
- (void)getManifestHashAndSettingsForPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5;
- (void)getPassWithPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5;
- (void)getPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)getPassesAndCatalogOfPassTypes:(unint64_t)a3 limitResults:(BOOL)a4 withHandler:(id)a5;
- (void)getPassesOfCardType:(int64_t)a3 handler:(id)a4;
- (void)getPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)getPassesWithHandler:(id)a3;
- (void)getPassesWithReaderIdentifier:(id)a3 handler:(id)a4;
- (void)getPassesWithSearchableTransactions:(id)a3;
- (void)hasPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)hasPassesInExpiredSectionWithHandler:(id)a3;
- (void)hasPassesOfType:(unint64_t)a3 handler:(id)a4;
- (void)hasRemoteLibraryWithHandler:(id)a3;
- (void)invalidateVehicleConnectionSessionIdentifier:(id)a3;
- (void)isIssuerAppProvisioningSupportedWithHandler:(id)a3;
- (void)isPaymentPassActivationAvailableWithHandler:(id)a3;
- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)a3;
- (void)passUniqueIDsMatchingSearchTerm:(id)a3 completion:(id)a4;
- (void)passWithDPANIdentifier:(id)a3 handler:(id)a4;
- (void)passWithFPANIdentifier:(id)a3 handler:(id)a4;
- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 handler:(id)a4;
- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4;
- (void)peerPaymentPassUniqueIDWithHandler:(id)a3;
- (void)postUpgradedPassNotificationForMarket:(id)a3 passUniqueID:(id)a4;
- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)a3 handler:(id)a4;
- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)a3 destinationFileHandles:(id)a4 handler:(id)a5;
- (void)recoverPassWithUniqueID:(id)a3 handler:(id)a4;
- (void)refreshActiveOrScheduledFlights;
- (void)removePassWithUniqueID:(id)a3 diagnosticReason:(id)a4 handler:(id)a5;
- (void)removePassesWithUniqueIDs:(id)a3 diagnosticReason:(id)a4 handler:(id)a5;
- (void)replacePassWithPassData:(id)a3 handler:(id)a4;
- (void)requestAuthorizationForCapability:(int64_t)a3 handler:(id)a4;
- (void)requestIssuerBindingDataForIssuerData:(id)a3 completion:(id)a4;
- (void)resetAuthorizationForCapability:(int64_t)a3 handler:(id)a4;
- (void)sendRKEPassThroughMessage:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5;
- (void)sendUserEditedCatalog:(id)a3;
- (void)serviceResumed;
- (void)serviceSuspended;
- (void)setBackupMetadata:(id)a3 handler:(id)a4;
- (void)signData:(id)a3 forPassUniqueID:(id)a4 completion:(id)a5;
- (void)simulateFlightUpdate:(id)a3 forPassUniqueID:(id)a4 handler:(id)a5;
- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)a3;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPassWithUniqueID:(id)a5 handler:(id)a6;
- (void)supportedTransitPartnersForDigitalIssuance:(id)a3;
- (void)supportsSearchForPassUniqueID:(id)a3 completion:(id)a4;
- (void)unexpiredPassesOrderedByGroup:(id)a3;
- (void)usingSynchronousProxy:(BOOL)a3 canAddCarKeyPassWithConfiguration:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 dynamicStateForPassUniqueID:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getEncryptedServiceProviderDataForUniqueID:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getPassForProvisioningCredentialHash:(id)a4 handler:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 getServiceProviderDataForUniqueID:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 passLocalizedStringForKey:(id)a4 uniqueID:(id)a5 completion:(id)a6;
- (void)usingSynchronousProxy:(BOOL)a3 postUpgradesAvailableNotificationForMarket:(id)a4 passUniqueID:(id)a5;
- (void)usingSynchronousProxy:(BOOL)a3 setLiveRenderingEnabled:(BOOL)a4 forPassUniqueID:(id)a5 handler:(id)a6;
@end

@implementation NPDCompanionPassLibrary

- (NPDCompanionPassLibrary)initWithConnection:(id)a3 companionPaymentPassDatabase:(id)a4 dataSource:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = NPDCompanionPassLibrary;
  v10 = [(NPDPassLibrary *)&v17 initWithConnection:a3];
  v11 = v10;
  if (v10)
  {
    [(NPDCompanionPassLibrary *)v10 setCompanionPaymentPassDatabase:v8];
    [(NPDCompanionPassLibrary *)v11 setDataSource:v9];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassAdded" object:v8];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassUpdated" object:v8];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassRemoved" object:v8];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.CatalogChanged" object:v8];
    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_General_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionPassLibrary initialized: %@", buf, 0xCu);
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionPassLibrary deallocated: %@", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = NPDCompanionPassLibrary;
  [(NPDCompanionPassLibrary *)&v7 dealloc];
}

- (void)serviceResumed
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library service resumed", v5, 2u);
    }
  }
}

- (void)serviceSuspended
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library service suspended", v5, 2u);
    }
  }
}

- (void)replacePassWithPassData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Replace pass", buf, 2u);
    }
  }

  v18 = 0;
  v11 = [PKPass createWithData:v6 warnings:0 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = [v11 passTypeIdentifier];
    v14 = [v11 serialNumber];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003C3B8;
    v15[3] = &unk_100072908;
    v15[4] = self;
    v16 = v11;
    v17 = v7;
    [(NPDCompanionPassLibrary *)self getPassWithPassTypeID:v13 serialNumber:v14 handler:v15];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)addPassesWithData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v37 = [v6 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: Add %d passes", buf, 8u);
    }
  }

  v11 = [(NPDPassLibrary *)self filter];
  v12 = [v11 allowlist];
  v13 = [v12 passesAllAccess];

  if (v13)
  {
    v26 = self;
    v14 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v6;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v30 = 0;
          v21 = [PKPass createWithData:v20 warnings:0 error:&v30];
          if (v21)
          {
            [v14 addObject:v21];
          }

          else
          {
            v22 = pk_General_log();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

            if (v23)
            {
              v24 = pk_General_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error: Cannot add pass: pass cannot be instantiated from data.", buf, 2u);
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    v25 = [(NPDPassLibrary *)v26 delegate];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10003C7F8;
    v28[3] = &unk_100070E08;
    v29 = v7;
    [v25 passLibrary:v26 requestsAdditionOfPasses:v14 completion:v28];

    v6 = v27;
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)removePassWithUniqueID:(id)a3 diagnosticReason:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: Remove pass with uniqueID %@", &v16, 0xCu);
    }
  }

  v12 = [(NPDPassLibrary *)self filter];
  v13 = [v12 allowlist];
  v14 = [v13 passesAllAccess];

  if (v14)
  {
    v15 = [(NPDPassLibrary *)self delegate];
    [v15 passLibrary:self requestsDeletionOfPassWithUniqueID:v7 completion:v8];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)removePassesWithUniqueIDs:(id)a3 diagnosticReason:(id)a4 handler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)getPassesWithHandler:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get passes", buf, 2u);
    }
  }

  v8 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v9 = [v8 uniqueIDs];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003CB44;
  v11[3] = &unk_100072558;
  v11[4] = self;
  v10 = [v9 npkComprehension:v11];

  v4[2](v4, v10);
}

- (void)getPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get passes of type %llu", &v10, 0xCu);
    }
  }

  if (a3 == 1)
  {
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)getPassesOfCardType:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get passes of card type", buf, 2u);
    }
  }

  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003CE08;
    v10[3] = &unk_100072930;
    v12 = a3;
    v11 = v6;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v10];
  }
}

- (void)getIdentityPassesOfTypes:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get identity passes of types %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    [NSSet setWithArray:v6];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D104;
    v13 = v12[3] = &unk_100072958;
    v14 = v7;
    v11 = v13;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v12];
  }
}

- (void)getPassesAndCatalogOfPassTypes:(unint64_t)a3 limitResults:(BOOL)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v9 = [v8 catalog];

  if (!a3 || (a3 & 1) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D3D4;
    v11[3] = &unk_100072980;
    v13 = v7;
    v12 = v9;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v11];
  }

  else
  {
    v10 = +[NSSet set];
    (*(v7 + 2))(v7, v10, v9);
  }
}

- (void)sendUserEditedCatalog:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library received user edited catalog: %@", &v12, 0xCu);
    }
  }

  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowlist];
  v10 = [v9 passesAllAccess];

  if (v10)
  {
    v11 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
    [v11 setCatalog:v4 fromWatch:0];
  }
}

- (void)peerPaymentPassUniqueIDWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)canAddFelicaPassWithHandler:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = NPKPairedOrPairingDevice();
    v4 = [[NSUUID alloc] initWithUUIDString:@"6C4614A2-1ECC-4405-9FEE-B5F0A5666961"];
    v3[2](v3, [v5 supportsCapability:v4]);
  }
}

- (void)getManifestHashAndSettingsForPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get manifest hash and settings: %@ %@", buf, 0x16u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003D744;
  v15[3] = &unk_1000729A8;
  v16 = v10;
  v14 = v10;
  [(NPDCompanionPassLibrary *)self getPassWithPassTypeID:v8 serialNumber:v9 handler:v15];
}

- (void)getPassWithPassTypeID:(id)a3 serialNumber:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get pass: %@ %@", buf, 0x16u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003D974;
  v17[3] = &unk_1000729D0;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(NPDCompanionPassLibrary *)self getPassesWithHandler:v17];
}

- (void)getPassWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get pass with unique ID %@", &v15, 0xCu);
    }
  }

  v11 = [(NPDCompanionPassLibrary *)self _deviceName];
  v12 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v13 = [v12 paymentPassWithUniqueID:v6];

  v14 = [(NPDCompanionPassLibrary *)self _filteredAndConfiguredPassForPaymentPass:v13 deviceName:v11];
  v7[2](v7, v14);
}

- (void)getContentForUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get content for unique ID %@", buf, 0xCu);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DDC4;
  v12[3] = &unk_1000729A8;
  v13 = v7;
  v11 = v7;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v6 handler:v12];
}

- (void)getImageSetForUniqueID:(id)a3 ofType:(int64_t)a4 displayProfile:(id)a5 suffix:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = v12;
      v29 = 2048;
      v30 = a4;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get image set for unique ID %@ %llu %@", buf, 0x20u);
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003E0A0;
  v22[3] = &unk_100072A20;
  v23 = v14;
  v24 = v13;
  v25 = v15;
  v26 = a4;
  v19 = v15;
  v20 = v13;
  v21 = v14;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v12 handler:v22];
}

- (void)getDataForBundleResourceNamed:(id)a3 withExtension:(id)a4 objectUniqueIdentifier:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get getDataForBundleResourceNamed %@.%@ for unique ID %@", buf, 0x20u);
      }
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003E374;
    v17[3] = &unk_100072908;
    v18 = v10;
    v19 = v11;
    v20 = v13;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v12 handler:v17];
  }
}

- (void)getArchivedObjectWithUniqueID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get getArchivedObjectWithUniqueID for unique ID %@", buf, 0xCu);
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003E570;
    v11[3] = &unk_1000729A8;
    v12 = v7;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v6 handler:v11];
  }
}

- (void)isPaymentPassActivationAvailableWithHandler:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Is payment pass activation available? Always.", v7, 2u);
    }
  }

  v3[2](v3, 1);
}

- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPassWithUniqueID:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library submit verification code %@ %@ %@", buf, 0x20u);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003E868;
  v20[3] = &unk_100072A70;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v12 handler:v20];
}

- (void)hasPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: %llu", buf, 0xCu);
    }
  }

  if (a3 == 1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003EB98;
    v10[3] = &unk_100072A98;
    v11 = v6;
    [(NPDCompanionPassLibrary *)self getPassesOfType:1 handler:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)canAddPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v5 = a4;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Can add passes of type %llu", &v9, 0xCu);
    }
  }

  v5[2](v5, 0);
}

- (void)countPassesOfType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Count passes of type %llu", buf, 0xCu);
    }
  }

  if (a3 == 1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003EE38;
    v10[3] = &unk_100072A98;
    v11 = v6;
    [(NPDCompanionPassLibrary *)self getPassesOfType:1 handler:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)defaultPaymentPassWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NPSDomainAccessor alloc];
  v6 = [v5 initWithDomain:NPKDefaultsDomain];
  v7 = [v6 objectForKey:NPKDefaultPaymentPassDefault];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003EF7C;
    v8[3] = &unk_1000729A8;
    v9 = v4;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v7 handler:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)expressTransitPassWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NPSDomainAccessor alloc];
  v6 = [v5 initWithDomain:NPKDefaultsDomain];
  v7 = [v6 objectForKey:NPKExpressFelicaTransitPaymentPassUniqueIDDefault];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003F0D8;
    v8[3] = &unk_1000729A8;
    v9 = v4;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v7 handler:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)passWithDPANIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003F2D4;
  v21 = sub_10003F2E4;
  v22 = 0;
  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowlist];
  v10 = [v9 passesAllAccess];

  if (v10)
  {
    v11 = +[NPKGizmoDatabase sharedDatabase];
    v12 = [v11 passDescriptions];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003F2EC;
    v13[3] = &unk_100072AE8;
    v15 = self;
    v16 = &v17;
    v14 = v6;
    [v12 enumerateObjectsUsingBlock:v13];
  }

  if (v7)
  {
    v7[2](v7, v18[5]);
  }

  _Block_object_dispose(&v17, 8);
}

- (void)passWithFPANIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10003F2D4;
    v19 = sub_10003F2E4;
    v20 = 0;
    v8 = +[NPKGizmoDatabase sharedDatabase];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003F634;
    v12[3] = &unk_100072B10;
    v13 = v6;
    v14 = &v15;
    [v8 enumerateAllPassesWithBlock:v12 includeImageSets:0];

    v9 = v16[5];
    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10003F6EC;
      v10[3] = &unk_1000729A8;
      v11 = v7;
      [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v9 handler:v10];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (void)supportedTransitPartnersForDigitalIssuance:(id)a3
{
  v4 = a3;
  v5 = +[NSArray array];
  (*(a3 + 2))(v4, v5);
}

- (void)checkForTransitNotification
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[NPDCompanionPassLibrary checkForTransitNotification]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v5, 0xCu);
    }
  }
}

- (void)postUpgradedPassNotificationForMarket:(id)a3 passUniqueID:(id)a4
{
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary postUpgradedPassNotificationForMarket:passUniqueID:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v7, 0xCu);
    }
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 postUpgradesAvailableNotificationForMarket:(id)a4 passUniqueID:(id)a5
{
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary usingSynchronousProxy:postUpgradesAvailableNotificationForMarket:passUniqueID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v8, 0xCu);
    }
  }
}

- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary sortedTransitPassesForTransitNetworkIdentifiers:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v7, 0xCu);
    }
  }

  v3[2](v3, &__NSDictionary0__struct);
}

- (void)canAddSecureElementPassWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPDPassLibrary *)self filter];
  v9 = [v8 allowlist];

  v10 = [v7 configurationType];
  v11 = 0;
  v12 = 0;
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (([v9 paymentAllAccess] & 1) == 0 && !objc_msgSend(v9, "secureElementPassProvisioning"))
    {
      v14 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v15 = 136315138;
      v16 = "[NPDCompanionPassLibrary canAddSecureElementPassWithConfiguration:completion:]";
      goto LABEL_28;
    }

    v13 = NPKPairedOrPairingDeviceSupportsSubcredentialProvisioning();
LABEL_18:
    v11 = v13;
    v12 = 0;
    goto LABEL_19;
  }

  switch(v10)
  {
    case 3:
      if (([v9 passesAddUnsigned] & 1) == 0 && !objc_msgSend(v9, "passesAllAccess"))
      {
        v14 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v15 = 136315138;
        v16 = "[NPDCompanionPassLibrary canAddSecureElementPassWithConfiguration:completion:]";
        goto LABEL_28;
      }

      v13 = NPKPairedOrPairingDeviceSupportsHomeKeyProvisioning();
      goto LABEL_18;
    case 5:
      goto LABEL_10;
    case 4:
LABEL_8:
      if ([v9 paymentAllAccess] & 1) != 0 || (objc_msgSend(v9, "shareableCredentialProvisioning"))
      {
LABEL_10:
        v12 = 0;
        v11 = 1;
        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v14 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_29:

        v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
        v11 = 0;
        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v15 = 136315138;
      v16 = "[NPDCompanionPassLibrary canAddSecureElementPassWithConfiguration:completion:]";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", &v15, 0xCu);
      goto LABEL_29;
  }

LABEL_19:
  if (v6)
  {
LABEL_20:
    v6[2](v6, v11, v12);
  }

LABEL_21:
}

- (void)backupMetadataWithHandler:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary backupMetadataWithHandler:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v7, 0xCu);
    }
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)setBackupMetadata:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary setBackupMetadata:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)signData:(id)a3 forPassUniqueID:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[NPDCompanionPassLibrary signData:forPassUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v10, 0xCu);
    }
  }

  if (v5)
  {
    v9 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    (*(v5 + 2))(v5, 0, 0, v9);
  }
}

- (void)generateIssuerBindingDataForIssuerData:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary generateIssuerBindingDataForIssuerData:completion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v9, 0xCu);
    }
  }

  if (v4)
  {
    v8 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    v4[2](v4, 0, v8);
  }
}

- (void)supportsSearchForPassUniqueID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 passLocalizedStringForKey:(id)a4 uniqueID:(id)a5 completion:(id)a6
{
  v16 = a4;
  v9 = a6;
  v10 = a5;
  v11 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v12 = [v11 paymentPassWithUniqueID:v10];

  v13 = [(NPDPassLibrary *)self filter];
  LODWORD(v10) = [v13 allowAccessToPass:v12];

  if (v10)
  {
    v14 = [v12 dataAccessor];
    v15 = [v14 passLocalizedStringForKey:v16];
    v9[2](v9, v15);
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getServiceProviderDataForUniqueID:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v6)
  {
    v13 = [(NPDCompanionPassLibrary *)self dataSource];
    [v13 serviceProviderDataForPassWithUniqueIdentifier:v8 completion:v9];
    goto LABEL_9;
  }

  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[NPDCompanionPassLibrary usingSynchronousProxy:getServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Not supported in synchronous mode yet: %s", &v14, 0xCu);
    }
  }

  if (v9)
  {
    v13 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    v9[2](v9, 0, v13);
LABEL_9:
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 getEncryptedServiceProviderDataForUniqueID:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v6)
  {
    v13 = [(NPDCompanionPassLibrary *)self dataSource];
    [v13 encryptedServiceProviderDataForPassWithUniqueIdentifier:v8 completion:v9];
    goto LABEL_9;
  }

  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[NPDCompanionPassLibrary usingSynchronousProxy:getEncryptedServiceProviderDataForUniqueID:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Not supported in synchronous mode yet: %s", &v14, 0xCu);
    }
  }

  if (v9)
  {
    v13 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    v9[2](v9, 0, v13);
LABEL_9:
  }
}

- (void)getGroupsControllerSnapshotWithOptions:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 allowedPassType];
  v9 = [v7 limitResults];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000406D0;
  v11[3] = &unk_100072B38;
  v12 = v6;
  v10 = v6;
  [(NPDCompanionPassLibrary *)self getPassesAndCatalogOfPassTypes:v8 limitResults:v9 withHandler:v11];
}

- (void)usingSynchronousProxy:(BOOL)a3 getPassForProvisioningCredentialHash:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary usingSynchronousProxy:getPassForProvisioningCredentialHash:handler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Method with empty implementation: %s", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)recoverPassWithUniqueID:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary recoverPassWithUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)sendRKEPassThroughMessage:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[NPDCompanionPassLibrary sendRKEPassThroughMessage:forSessionIdentifier:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", buf, 0xCu);
    }
  }

  if (v5)
  {
    v9 = NPKErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unexpected call.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:-1000 userInfo:v10];

    v5[2](v5, 0, v11);
  }
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary startVehicleConnectionSessionWithPassUniqueIdentifier:completion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)invalidateVehicleConnectionSessionIdentifier:(id)a3
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[NPDCompanionPassLibrary invalidateVehicleConnectionSessionIdentifier:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v6, 0xCu);
    }
  }
}

- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPDCompanionPassLibrary *)self dataSource];
  [v8 paymentSetupFeaturesForConfiguration:v7 completion:v6];
}

- (void)hasRemoteLibraryWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary prepareForBackupRestoreWithExistingPreferencesData:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)a3 destinationFileHandles:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary prepareForBackupRestoreWithRequiredFileURLs:destinationFileHandles:handler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5);
  }
}

- (void)requestIssuerBindingDataForIssuerData:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[NPDCompanionPassLibrary requestIssuerBindingDataForIssuerData:completion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", buf, 0xCu);
    }
  }

  if (v4)
  {
    v8 = NPKErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Unexpected call.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v8 code:-1000 userInfo:v9];

    v4[2](v4, 0, v10);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 canAddCarKeyPassWithConfiguration:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[NPDCompanionPassLibrary usingSynchronousProxy:canAddCarKeyPassWithConfiguration:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", buf, 0xCu);
    }
  }

  if (v5)
  {
    v9 = NPKErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unexpected call.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:-1000 userInfo:v10];

    (*(v5 + 2))(v5, 0, 0, v11);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 meetsProvisioningRequirements:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary usingSynchronousProxy:meetsProvisioningRequirements:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v9, 0xCu);
    }
  }

  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

- (void)isIssuerAppProvisioningSupportedWithHandler:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary isIssuerAppProvisioningSupportedWithHandler:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v7, 0xCu);
    }
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 dynamicStateForPassUniqueID:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary usingSynchronousProxy:dynamicStateForPassUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)a3 setLiveRenderingEnabled:(BOOL)a4 forPassUniqueID:(id)a5 handler:(id)a6
{
  v6 = a6;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[NPDCompanionPassLibrary usingSynchronousProxy:setLiveRenderingEnabled:forPassUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected call to %s", &v10, 0xCu);
    }
  }

  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)getPassesWithSearchableTransactions:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary getPassesWithSearchableTransactions:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v7, 0xCu);
    }
  }

  v3[2](v3, 0);
}

- (void)hasPassesInExpiredSectionWithHandler:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary hasPassesInExpiredSectionWithHandler:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v7, 0xCu);
    }
  }

  v3[2](v3, 0);
}

- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary isWatchIssuerAppProvisioningSupportedWithHandler:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v7, 0xCu);
    }
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)unexpiredPassesOrderedByGroup:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPDCompanionPassLibrary unexpiredPassesOrderedByGroup:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v7, 0xCu);
    }
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)archivePassWithUniqueID:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary archivePassWithUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)getPassesWithReaderIdentifier:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary getPassesWithReaderIdentifier:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)passUniqueIDsMatchingSearchTerm:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary passUniqueIDsMatchingSearchTerm:completion:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)authorizationStatusForCapability:(int64_t)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary authorizationStatusForCapability:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, -1);
  }
}

- (void)requestAuthorizationForCapability:(int64_t)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary requestAuthorizationForCapability:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, -1);
  }
}

- (void)resetAuthorizationForCapability:(int64_t)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary resetAuthorizationForCapability:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)hasPassWithUniqueID:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary hasPassWithUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)simulateFlightUpdate:(id)a3 forPassUniqueID:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary simulateFlightUpdate:forPassUniqueID:handler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)refreshActiveOrScheduledFlights
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[NPDCompanionPassLibrary refreshActiveOrScheduledFlights]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v5, 0xCu);
    }
  }
}

- (void)passesWithPrimaryPaymentApplicationStates:(id)a3 handler:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPDCompanionPassLibrary passesWithPrimaryPaymentApplicationStates:handler:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v8, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)addSharedFlight:(id)a3 fromSenderAddress:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPDCompanionPassLibrary addSharedFlight:fromSenderAddress:handler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: %s not implemented", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (id)_deviceName
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyName];

  return v4;
}

- (id)_filteredAndConfiguredPassForPaymentPass:(id)a3 deviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionPassLibrary *)self dataSource];
  v9 = [v8 secureElementIdentifiers];

  if (v9)
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v10 = +[NPKGizmoDatabase sharedDatabase];
  v11 = [v6 uniqueID];
  v12 = [v10 transitAppletStateForPassWithUniqueID:v11];

  NPKUpdateTransitPassPropertiesForPass();
  v13 = +[NPKGizmoDatabase sharedDatabase];
  v14 = [v6 uniqueID];
  v15 = [v13 transactionSourceIdentifierForPassWithUniqueID:v14];

  NPKUpdateTransactionSourceIdentifierForPass();
  v16 = +[NPKGizmoDatabase sharedDatabase];
  v17 = [v6 uniqueID];
  v18 = [v16 passForUniqueID:v17 includeImageSets:0];

  [v6 setSettings:{objc_msgSend(v18, "settings")}];
  v19 = [(NPDPassLibrary *)self filter];
  v20 = [v19 allowlist];

  if (([v20 passesAllAccess] & 1) == 0 && (objc_msgSend(v20, "paymentAllAccess") & 1) == 0)
  {
    [v6 sanitizePaymentApplications];
  }

  [v6 setRemotePass:1];
  [v6 setDeviceName:v7];

  [v6 setPassLibraryMachServiceName:PKCompanionWatchPassLibraryMachServiceName];
  v21 = [(NPDPassLibrary *)self filter];
  v22 = [v21 filterPassIfNeeded:v6];

  return v22;
}

- (void)_handleCompanionPassDatabaseNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];

  if (v5 == v6)
  {
    v7 = [v4 name];
    v8 = [v7 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.CatalogChanged"];

    if (v8)
    {
      v9 = [v4 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"Catalog"];

      if (v10)
      {
        v11 = [(NPDPassLibrary *)self filter];
        v12 = [v11 allowlist];
        v13 = [v12 passesAllAccess];

        if (v13)
        {
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_1000428DC;
          v28 = &unk_100072B60;
          v29 = self;
          v30 = v10;
          [(NPDCompanionPassLibrary *)self getPassesWithHandler:&v25];
        }
      }
    }

    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"Pass"];

    v16 = [v15 paymentPass];
    v17 = [(NPDCompanionPassLibrary *)self _deviceName];
    v18 = [(NPDCompanionPassLibrary *)self _filteredAndConfiguredPassForPaymentPass:v16 deviceName:v17];

    if (v18)
    {
      v19 = [v4 name];
      v20 = [v19 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassAdded"];

      if (v20)
      {
        [(NPDPassLibrary *)self broadcastPassAdded:v18];
      }

      else
      {
        v21 = [v4 name];
        v22 = [v21 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassUpdated"];

        if (v22)
        {
          [(NPDPassLibrary *)self broadcastPassUpdated:v18];
        }

        else
        {
          v23 = [v4 name];
          v24 = [v23 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassRemoved"];

          if (v24)
          {
            [(NPDPassLibrary *)self broadcastPassRemoved:v18];
          }
        }
      }
    }
  }
}

- (NPDCompanionPassLibraryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end