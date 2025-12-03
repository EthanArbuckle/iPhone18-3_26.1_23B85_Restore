@interface NPDCompanionPassLibrary
- (NPDCompanionPassLibrary)initWithConnection:(id)connection companionPaymentPassDatabase:(id)database dataSource:(id)source;
- (NPDCompanionPassLibraryDataSource)dataSource;
- (id)_deviceName;
- (id)_filteredAndConfiguredPassForPaymentPass:(id)pass deviceName:(id)name;
- (void)_handleCompanionPassDatabaseNotification:(id)notification;
- (void)addPassesWithData:(id)data handler:(id)handler;
- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address handler:(id)handler;
- (void)archivePassWithUniqueID:(id)d handler:(id)handler;
- (void)authorizationStatusForCapability:(int64_t)capability handler:(id)handler;
- (void)backupMetadataWithHandler:(id)handler;
- (void)canAddFelicaPassWithHandler:(id)handler;
- (void)canAddPassesOfType:(unint64_t)type handler:(id)handler;
- (void)canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)checkForTransitNotification;
- (void)countPassesOfType:(unint64_t)type handler:(id)handler;
- (void)dealloc;
- (void)defaultPaymentPassWithHandler:(id)handler;
- (void)expressTransitPassWithHandler:(id)handler;
- (void)generateIssuerBindingDataForIssuerData:(id)data completion:(id)completion;
- (void)getArchivedObjectWithUniqueID:(id)d handler:(id)handler;
- (void)getContentForUniqueID:(id)d handler:(id)handler;
- (void)getDataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier handler:(id)handler;
- (void)getGroupsControllerSnapshotWithOptions:(id)options handler:(id)handler;
- (void)getIdentityPassesOfTypes:(id)types handler:(id)handler;
- (void)getImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix handler:(id)handler;
- (void)getManifestHashAndSettingsForPassTypeID:(id)d serialNumber:(id)number handler:(id)handler;
- (void)getPassWithPassTypeID:(id)d serialNumber:(id)number handler:(id)handler;
- (void)getPassWithUniqueID:(id)d handler:(id)handler;
- (void)getPassesAndCatalogOfPassTypes:(unint64_t)types limitResults:(BOOL)results withHandler:(id)handler;
- (void)getPassesOfCardType:(int64_t)type handler:(id)handler;
- (void)getPassesOfType:(unint64_t)type handler:(id)handler;
- (void)getPassesWithHandler:(id)handler;
- (void)getPassesWithReaderIdentifier:(id)identifier handler:(id)handler;
- (void)getPassesWithSearchableTransactions:(id)transactions;
- (void)hasPassWithUniqueID:(id)d handler:(id)handler;
- (void)hasPassesInExpiredSectionWithHandler:(id)handler;
- (void)hasPassesOfType:(unint64_t)type handler:(id)handler;
- (void)hasRemoteLibraryWithHandler:(id)handler;
- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier;
- (void)isIssuerAppProvisioningSupportedWithHandler:(id)handler;
- (void)isPaymentPassActivationAvailableWithHandler:(id)handler;
- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)handler;
- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion;
- (void)passWithDPANIdentifier:(id)identifier handler:(id)handler;
- (void)passWithFPANIdentifier:(id)identifier handler:(id)handler;
- (void)passesWithPrimaryPaymentApplicationStates:(id)states handler:(id)handler;
- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion;
- (void)peerPaymentPassUniqueIDWithHandler:(id)handler;
- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data handler:(id)handler;
- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler;
- (void)recoverPassWithUniqueID:(id)d handler:(id)handler;
- (void)refreshActiveOrScheduledFlights;
- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason handler:(id)handler;
- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason handler:(id)handler;
- (void)replacePassWithPassData:(id)data handler:(id)handler;
- (void)requestAuthorizationForCapability:(int64_t)capability handler:(id)handler;
- (void)requestIssuerBindingDataForIssuerData:(id)data completion:(id)completion;
- (void)resetAuthorizationForCapability:(int64_t)capability handler:(id)handler;
- (void)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier withCompletion:(id)completion;
- (void)sendUserEditedCatalog:(id)catalog;
- (void)serviceResumed;
- (void)serviceSuspended;
- (void)setBackupMetadata:(id)metadata handler:(id)handler;
- (void)signData:(id)data forPassUniqueID:(id)d completion:(id)completion;
- (void)simulateFlightUpdate:(id)update forPassUniqueID:(id)d handler:(id)handler;
- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)identifiers;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)submitVerificationCode:(id)code verificationData:(id)data forPassWithUniqueID:(id)d handler:(id)handler;
- (void)supportedTransitPartnersForDigitalIssuance:(id)issuance;
- (void)supportsSearchForPassUniqueID:(id)d completion:(id)completion;
- (void)unexpiredPassesOrderedByGroup:(id)group;
- (void)usingSynchronousProxy:(BOOL)proxy canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy dynamicStateForPassUniqueID:(id)d handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getEncryptedServiceProviderDataForUniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy getPassForProvisioningCredentialHash:(id)hash handler:(id)handler;
- (void)usingSynchronousProxy:(BOOL)proxy getServiceProviderDataForUniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy passLocalizedStringForKey:(id)key uniqueID:(id)d completion:(id)completion;
- (void)usingSynchronousProxy:(BOOL)proxy postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d;
- (void)usingSynchronousProxy:(BOOL)proxy setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d handler:(id)handler;
@end

@implementation NPDCompanionPassLibrary

- (NPDCompanionPassLibrary)initWithConnection:(id)connection companionPaymentPassDatabase:(id)database dataSource:(id)source
{
  databaseCopy = database;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = NPDCompanionPassLibrary;
  v10 = [(NPDPassLibrary *)&v17 initWithConnection:connection];
  v11 = v10;
  if (v10)
  {
    [(NPDCompanionPassLibrary *)v10 setCompanionPaymentPassDatabase:databaseCopy];
    [(NPDCompanionPassLibrary *)v11 setDataSource:sourceCopy];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassAdded" object:databaseCopy];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassUpdated" object:databaseCopy];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassRemoved" object:databaseCopy];
    [v12 addObserver:v11 selector:"_handleCompanionPassDatabaseNotification:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.CatalogChanged" object:databaseCopy];
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
      selfCopy = self;
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

- (void)replacePassWithPassData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
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
  v11 = [PKPass createWithData:dataCopy warnings:0 error:&v18];
  v12 = v18;
  if (v11)
  {
    passTypeIdentifier = [v11 passTypeIdentifier];
    serialNumber = [v11 serialNumber];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003C3B8;
    v15[3] = &unk_100072908;
    v15[4] = self;
    v16 = v11;
    v17 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassWithPassTypeID:passTypeIdentifier serialNumber:serialNumber handler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)addPassesWithData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v37 = [dataCopy count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: Add %d passes", buf, 8u);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];
  passesAllAccess = [allowlist passesAllAccess];

  if (passesAllAccess)
  {
    selfCopy = self;
    v14 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(dataCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = dataCopy;
    v15 = dataCopy;
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

    delegate = [(NPDPassLibrary *)selfCopy delegate];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10003C7F8;
    v28[3] = &unk_100070E08;
    v29 = handlerCopy;
    [delegate passLibrary:selfCopy requestsAdditionOfPasses:v14 completion:v28];

    dataCopy = v27;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)removePassWithUniqueID:(id)d diagnosticReason:(id)reason handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: Remove pass with uniqueID %@", &v16, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];
  passesAllAccess = [allowlist passesAllAccess];

  if (passesAllAccess)
  {
    delegate = [(NPDPassLibrary *)self delegate];
    [delegate passLibrary:self requestsDeletionOfPassWithUniqueID:dCopy completion:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)removePassesWithUniqueIDs:(id)ds diagnosticReason:(id)reason handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)getPassesWithHandler:(id)handler
{
  handlerCopy = handler;
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

  companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003CB44;
  v11[3] = &unk_100072558;
  v11[4] = self;
  v10 = [uniqueIDs npkComprehension:v11];

  handlerCopy[2](handlerCopy, v10);
}

- (void)getPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get passes of type %llu", &v10, 0xCu);
    }
  }

  if (type == 1)
  {
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getPassesOfCardType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003CE08;
    v10[3] = &unk_100072930;
    typeCopy = type;
    v11 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v10];
  }
}

- (void)getIdentityPassesOfTypes:(id)types handler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = typesCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library: get identity passes of types %@", buf, 0xCu);
    }
  }

  if (handlerCopy)
  {
    [NSSet setWithArray:typesCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D104;
    v13 = v12[3] = &unk_100072958;
    v14 = handlerCopy;
    v11 = v13;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v12];
  }
}

- (void)getPassesAndCatalogOfPassTypes:(unint64_t)types limitResults:(BOOL)results withHandler:(id)handler
{
  handlerCopy = handler;
  companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  catalog = [companionPaymentPassDatabase catalog];

  if (!types || (types & 1) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D3D4;
    v11[3] = &unk_100072980;
    v13 = handlerCopy;
    v12 = catalog;
    [(NPDCompanionPassLibrary *)self getPassesWithHandler:v11];
  }

  else
  {
    v10 = +[NSSet set];
    (*(handlerCopy + 2))(handlerCopy, v10, catalog);
  }
}

- (void)sendUserEditedCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = catalogCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library received user edited catalog: %@", &v12, 0xCu);
    }
  }

  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];
  passesAllAccess = [allowlist passesAllAccess];

  if (passesAllAccess)
  {
    companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
    [companionPaymentPassDatabase setCatalog:catalogCopy fromWatch:0];
  }
}

- (void)peerPaymentPassUniqueIDWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)canAddFelicaPassWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v5 = NPKPairedOrPairingDevice();
    v4 = [[NSUUID alloc] initWithUUIDString:@"6C4614A2-1ECC-4405-9FEE-B5F0A5666961"];
    handlerCopy[2](handlerCopy, [v5 supportsCapability:v4]);
  }
}

- (void)getManifestHashAndSettingsForPassTypeID:(id)d serialNumber:(id)number handler:(id)handler
{
  dCopy = d;
  numberCopy = number;
  handlerCopy = handler;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = dCopy;
      v19 = 2112;
      v20 = numberCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get manifest hash and settings: %@ %@", buf, 0x16u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003D744;
  v15[3] = &unk_1000729A8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(NPDCompanionPassLibrary *)self getPassWithPassTypeID:dCopy serialNumber:numberCopy handler:v15];
}

- (void)getPassWithPassTypeID:(id)d serialNumber:(id)number handler:(id)handler
{
  dCopy = d;
  numberCopy = number;
  handlerCopy = handler;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = dCopy;
      v24 = 2112;
      v25 = numberCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get pass: %@ %@", buf, 0x16u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003D974;
  v17[3] = &unk_1000729D0;
  v18 = dCopy;
  v19 = numberCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = numberCopy;
  v16 = dCopy;
  [(NPDCompanionPassLibrary *)self getPassesWithHandler:v17];
}

- (void)getPassWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get pass with unique ID %@", &v15, 0xCu);
    }
  }

  _deviceName = [(NPDCompanionPassLibrary *)self _deviceName];
  companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v13 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  v14 = [(NPDCompanionPassLibrary *)self _filteredAndConfiguredPassForPaymentPass:v13 deviceName:_deviceName];
  handlerCopy[2](handlerCopy, v14);
}

- (void)getContentForUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get content for unique ID %@", buf, 0xCu);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DDC4;
  v12[3] = &unk_1000729A8;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:dCopy handler:v12];
}

- (void)getImageSetForUniqueID:(id)d ofType:(int64_t)type displayProfile:(id)profile suffix:(id)suffix handler:(id)handler
{
  dCopy = d;
  profileCopy = profile;
  suffixCopy = suffix;
  handlerCopy = handler;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = dCopy;
      v29 = 2048;
      typeCopy = type;
      v31 = 2112;
      v32 = profileCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get image set for unique ID %@ %llu %@", buf, 0x20u);
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003E0A0;
  v22[3] = &unk_100072A20;
  v23 = suffixCopy;
  v24 = profileCopy;
  v25 = handlerCopy;
  typeCopy2 = type;
  v19 = handlerCopy;
  v20 = profileCopy;
  v21 = suffixCopy;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:dCopy handler:v22];
}

- (void)getDataForBundleResourceNamed:(id)named withExtension:(id)extension objectUniqueIdentifier:(id)identifier handler:(id)handler
{
  namedCopy = named;
  extensionCopy = extension;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = namedCopy;
        v23 = 2112;
        v24 = extensionCopy;
        v25 = 2112;
        v26 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get getDataForBundleResourceNamed %@.%@ for unique ID %@", buf, 0x20u);
      }
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003E374;
    v17[3] = &unk_100072908;
    v18 = namedCopy;
    v19 = extensionCopy;
    v20 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:identifierCopy handler:v17];
  }
}

- (void)getArchivedObjectWithUniqueID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = dCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library get getArchivedObjectWithUniqueID for unique ID %@", buf, 0xCu);
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003E570;
    v11[3] = &unk_1000729A8;
    v12 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:dCopy handler:v11];
  }
}

- (void)isPaymentPassActivationAvailableWithHandler:(id)handler
{
  handlerCopy = handler;
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

  handlerCopy[2](handlerCopy, 1);
}

- (void)submitVerificationCode:(id)code verificationData:(id)data forPassWithUniqueID:(id)d handler:(id)handler
{
  codeCopy = code;
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = codeCopy;
      v26 = 2112;
      v27 = dataCopy;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library submit verification code %@ %@ %@", buf, 0x20u);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003E868;
  v20[3] = &unk_100072A70;
  v20[4] = self;
  v21 = codeCopy;
  v22 = dataCopy;
  v23 = handlerCopy;
  v17 = dataCopy;
  v18 = codeCopy;
  v19 = handlerCopy;
  [(NPDCompanionPassLibrary *)self getPassWithUniqueID:dCopy handler:v20];
}

- (void)hasPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: %llu", buf, 0xCu);
    }
  }

  if (type == 1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003EB98;
    v10[3] = &unk_100072A98;
    v11 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassesOfType:1 handler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)canAddPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Can add passes of type %llu", &v9, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)countPassesOfType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Count passes of type %llu", buf, 0xCu);
    }
  }

  if (type == 1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003EE38;
    v10[3] = &unk_100072A98;
    v11 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassesOfType:1 handler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)defaultPaymentPassWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NPSDomainAccessor alloc];
  v6 = [v5 initWithDomain:NPKDefaultsDomain];
  v7 = [v6 objectForKey:NPKDefaultPaymentPassDefault];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003EF7C;
    v8[3] = &unk_1000729A8;
    v9 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v7 handler:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)expressTransitPassWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NPSDomainAccessor alloc];
  v6 = [v5 initWithDomain:NPKDefaultsDomain];
  v7 = [v6 objectForKey:NPKExpressFelicaTransitPaymentPassUniqueIDDefault];
  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003F0D8;
    v8[3] = &unk_1000729A8;
    v9 = handlerCopy;
    [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v7 handler:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)passWithDPANIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003F2D4;
  v21 = sub_10003F2E4;
  v22 = 0;
  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];
  passesAllAccess = [allowlist passesAllAccess];

  if (passesAllAccess)
  {
    v11 = +[NPKGizmoDatabase sharedDatabase];
    passDescriptions = [v11 passDescriptions];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003F2EC;
    v13[3] = &unk_100072AE8;
    selfCopy = self;
    v16 = &v17;
    v14 = identifierCopy;
    [passDescriptions enumerateObjectsUsingBlock:v13];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v18[5]);
  }

  _Block_object_dispose(&v17, 8);
}

- (void)passWithFPANIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
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
    v13 = identifierCopy;
    v14 = &v15;
    [v8 enumerateAllPassesWithBlock:v12 includeImageSets:0];

    v9 = v16[5];
    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10003F6EC;
      v10[3] = &unk_1000729A8;
      v11 = handlerCopy;
      [(NPDCompanionPassLibrary *)self getPassWithUniqueID:v9 handler:v10];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (void)supportedTransitPartnersForDigitalIssuance:(id)issuance
{
  issuanceCopy = issuance;
  v5 = +[NSArray array];
  (*(issuance + 2))(issuanceCopy, v5);
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

- (void)postUpgradedPassNotificationForMarket:(id)market passUniqueID:(id)d
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

- (void)usingSynchronousProxy:(BOOL)proxy postUpgradesAvailableNotificationForMarket:(id)market passUniqueID:(id)d
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

- (void)sortedTransitPassesForTransitNetworkIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
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

  identifiersCopy[2](identifiersCopy, &__NSDictionary0__struct);
}

- (void)canAddSecureElementPassWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];

  configurationType = [configurationCopy configurationType];
  v11 = 0;
  v12 = 0;
  if (configurationType <= 2)
  {
    if (configurationType != 1)
    {
      if (configurationType != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (([allowlist paymentAllAccess] & 1) == 0 && !objc_msgSend(allowlist, "secureElementPassProvisioning"))
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

  switch(configurationType)
  {
    case 3:
      if (([allowlist passesAddUnsigned] & 1) == 0 && !objc_msgSend(allowlist, "passesAllAccess"))
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
      if ([allowlist paymentAllAccess] & 1) != 0 || (objc_msgSend(allowlist, "shareableCredentialProvisioning"))
      {
LABEL_10:
        v12 = 0;
        v11 = 1;
        if (!completionCopy)
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
        if (!completionCopy)
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
  if (completionCopy)
  {
LABEL_20:
    completionCopy[2](completionCopy, v11, v12);
  }

LABEL_21:
}

- (void)backupMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)setBackupMetadata:(id)metadata handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)signData:(id)data forPassUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v9 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v9);
  }
}

- (void)generateIssuerBindingDataForIssuerData:(id)data completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v8 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)supportsSearchForPassUniqueID:(id)d completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy passLocalizedStringForKey:(id)key uniqueID:(id)d completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  dCopy = d;
  companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];
  v12 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  filter = [(NPDPassLibrary *)self filter];
  LODWORD(dCopy) = [filter allowAccessToPass:v12];

  if (dCopy)
  {
    dataAccessor = [v12 dataAccessor];
    v15 = [dataAccessor passLocalizedStringForKey:keyCopy];
    completionCopy[2](completionCopy, v15);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getServiceProviderDataForUniqueID:(id)d completion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  completionCopy = completion;
  if (!proxyCopy)
  {
    dataSource = [(NPDCompanionPassLibrary *)self dataSource];
    [dataSource serviceProviderDataForPassWithUniqueIdentifier:dCopy completion:completionCopy];
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

  if (completionCopy)
  {
    dataSource = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    completionCopy[2](completionCopy, 0, dataSource);
LABEL_9:
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy getEncryptedServiceProviderDataForUniqueID:(id)d completion:(id)completion
{
  proxyCopy = proxy;
  dCopy = d;
  completionCopy = completion;
  if (!proxyCopy)
  {
    dataSource = [(NPDCompanionPassLibrary *)self dataSource];
    [dataSource encryptedServiceProviderDataForPassWithUniqueIdentifier:dCopy completion:completionCopy];
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

  if (completionCopy)
  {
    dataSource = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    completionCopy[2](completionCopy, 0, dataSource);
LABEL_9:
  }
}

- (void)getGroupsControllerSnapshotWithOptions:(id)options handler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  allowedPassType = [optionsCopy allowedPassType];
  limitResults = [optionsCopy limitResults];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000406D0;
  v11[3] = &unk_100072B38;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(NPDCompanionPassLibrary *)self getPassesAndCatalogOfPassTypes:allowedPassType limitResults:limitResults withHandler:v11];
}

- (void)usingSynchronousProxy:(BOOL)proxy getPassForProvisioningCredentialHash:(id)hash handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)recoverPassWithUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)sendRKEPassThroughMessage:(id)message forSessionIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v9 = NPKErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unexpected call.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:-1000 userInfo:v10];

    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)invalidateVehicleConnectionSessionIdentifier:(id)identifier
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

- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  dataSource = [(NPDCompanionPassLibrary *)self dataSource];
  [dataSource paymentSetupFeaturesForConfiguration:configurationCopy completion:completionCopy];
}

- (void)hasRemoteLibraryWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (void)prepareForBackupRestoreWithExistingPreferencesData:(id)data handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)prepareForBackupRestoreWithRequiredFileURLs:(id)ls destinationFileHandles:(id)handles handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)requestIssuerBindingDataForIssuerData:(id)data completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v8 = NPKErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Unexpected call.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v8 code:-1000 userInfo:v9];

    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy canAddCarKeyPassWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    v9 = NPKErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unexpected call.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:-1000 userInfo:v10];

    (*(completionCopy + 2))(completionCopy, 0, 0, v11);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy meetsProvisioningRequirements:(id)requirements completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)isIssuerAppProvisioningSupportedWithHandler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy dynamicStateForPassUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)usingSynchronousProxy:(BOOL)proxy setLiveRenderingEnabled:(BOOL)enabled forPassUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)getPassesWithSearchableTransactions:(id)transactions
{
  transactionsCopy = transactions;
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

  transactionsCopy[2](transactionsCopy, 0);
}

- (void)hasPassesInExpiredSectionWithHandler:(id)handler
{
  handlerCopy = handler;
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

  handlerCopy[2](handlerCopy, 0);
}

- (void)isWatchIssuerAppProvisioningSupportedWithHandler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)unexpiredPassesOrderedByGroup:(id)group
{
  groupCopy = group;
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

  if (groupCopy)
  {
    groupCopy[2](groupCopy, 0);
  }
}

- (void)archivePassWithUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)getPassesWithReaderIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)passUniqueIDsMatchingSearchTerm:(id)term completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)authorizationStatusForCapability:(int64_t)capability handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, -1);
  }
}

- (void)requestAuthorizationForCapability:(int64_t)capability handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, -1);
  }
}

- (void)resetAuthorizationForCapability:(int64_t)capability handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)hasPassWithUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)simulateFlightUpdate:(id)update forPassUniqueID:(id)d handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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

- (void)passesWithPrimaryPaymentApplicationStates:(id)states handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)addSharedFlight:(id)flight fromSenderAddress:(id)address handler:(id)handler
{
  handlerCopy = handler;
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)_deviceName
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];
  v4 = [getActivePairedDevice valueForProperty:NRDevicePropertyName];

  return v4;
}

- (id)_filteredAndConfiguredPassForPaymentPass:(id)pass deviceName:(id)name
{
  passCopy = pass;
  nameCopy = name;
  dataSource = [(NPDCompanionPassLibrary *)self dataSource];
  secureElementIdentifiers = [dataSource secureElementIdentifiers];

  if (secureElementIdentifiers)
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }

  v10 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID = [passCopy uniqueID];
  v12 = [v10 transitAppletStateForPassWithUniqueID:uniqueID];

  NPKUpdateTransitPassPropertiesForPass();
  v13 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID2 = [passCopy uniqueID];
  v15 = [v13 transactionSourceIdentifierForPassWithUniqueID:uniqueID2];

  NPKUpdateTransactionSourceIdentifierForPass();
  v16 = +[NPKGizmoDatabase sharedDatabase];
  uniqueID3 = [passCopy uniqueID];
  v18 = [v16 passForUniqueID:uniqueID3 includeImageSets:0];

  [passCopy setSettings:{objc_msgSend(v18, "settings")}];
  filter = [(NPDPassLibrary *)self filter];
  allowlist = [filter allowlist];

  if (([allowlist passesAllAccess] & 1) == 0 && (objc_msgSend(allowlist, "paymentAllAccess") & 1) == 0)
  {
    [passCopy sanitizePaymentApplications];
  }

  [passCopy setRemotePass:1];
  [passCopy setDeviceName:nameCopy];

  [passCopy setPassLibraryMachServiceName:PKCompanionWatchPassLibraryMachServiceName];
  filter2 = [(NPDPassLibrary *)self filter];
  v22 = [filter2 filterPassIfNeeded:passCopy];

  return v22;
}

- (void)_handleCompanionPassDatabaseNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  companionPaymentPassDatabase = [(NPDCompanionPassLibrary *)self companionPaymentPassDatabase];

  if (object == companionPaymentPassDatabase)
  {
    name = [notificationCopy name];
    v8 = [name isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.CatalogChanged"];

    if (v8)
    {
      userInfo = [notificationCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:@"Catalog"];

      if (v10)
      {
        filter = [(NPDPassLibrary *)self filter];
        allowlist = [filter allowlist];
        passesAllAccess = [allowlist passesAllAccess];

        if (passesAllAccess)
        {
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_1000428DC;
          v28 = &unk_100072B60;
          selfCopy = self;
          v30 = v10;
          [(NPDCompanionPassLibrary *)self getPassesWithHandler:&v25];
        }
      }
    }

    userInfo2 = [notificationCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"Pass"];

    paymentPass = [v15 paymentPass];
    _deviceName = [(NPDCompanionPassLibrary *)self _deviceName];
    v18 = [(NPDCompanionPassLibrary *)self _filteredAndConfiguredPassForPaymentPass:paymentPass deviceName:_deviceName];

    if (v18)
    {
      name2 = [notificationCopy name];
      v20 = [name2 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassAdded"];

      if (v20)
      {
        [(NPDPassLibrary *)self broadcastPassAdded:v18];
      }

      else
      {
        name3 = [notificationCopy name];
        v22 = [name3 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassUpdated"];

        if (v22)
        {
          [(NPDPassLibrary *)self broadcastPassUpdated:v18];
        }

        else
        {
          name4 = [notificationCopy name];
          v24 = [name4 isEqualToString:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.PassRemoved"];

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