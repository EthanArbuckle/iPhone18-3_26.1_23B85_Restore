@interface PDAppletSubcredentialManager
- (BOOL)createdSharedSubcredentialWithIdentifier:(id)identifier fromSharingInvitationIdentifier:(id)invitationIdentifier;
- (BOOL)removeSharingInvitationReceiptWithIdentifiers:(id)identifiers onCredential:(id)credential;
- (BOOL)sharingInvitationReceiptWasInvalidated:(id)invalidated withCredentialIdentifier:(id)identifier error:(id)error;
- (PDAppletSubcredentialManager)initWithDatabaseManager:(id)manager cardFileManager:(id)fileManager paymentWebServiceCoordinator:(id)coordinator daManager:(id)daManager carKeyRequirementsChecker:(id)checker secureElement:(id)element assertionManager:(id)assertionManager notificationManager:(id)self0;
- (id)sharedCredentialManifestForPass:(id)pass;
- (void)_downloadPassAtURL:(id)l credentialIdentifier:(id)identifier share:(id)share;
- (void)_inflateSubcredentialsInDatabaseWithDeviceProperties:(id)properties withCompletion:(id)completion;
- (void)_ingestSEBlobsForPass:(id)pass;
- (void)_ingestSubcredentialConfigurationsForPass:(id)pass;
- (void)_removeBackgroundRegistrationRequestForCredentials:(id)credentials withPaymentWebService:(id)service;
- (void)_updateSubcredentialsForBTEnabled:(BOOL)enabled;
- (void)_updateSubcredentialsWithRangingSuspensionReason:(id)reason;
- (void)assertionManager:(id)manager didInvalidateAssertion:(id)assertion;
- (void)bluetoothMonitorerRecievedUpdatedBluetoothState:(int64_t)state;
- (void)createRegistrationRequestForCredentialWithIdentifier:(id)identifier completion:(id)completion;
- (void)credentialsOnDeviceWithCompletion:(id)completion;
- (void)dealloc;
- (void)didUpdateCredential:(id)credential onPassWithIdentifier:(id)identifier oldShares:(id)shares;
- (void)handlePaymentApplicationsAddedOrUpdatedOnPass:(id)pass oldShares:(id)shares;
- (void)invalidateVehicleConnectionSessionForIdentifier:(id)identifier;
- (void)passAddedOrUpdated:(id)updated oldPass:(id)pass oldShares:(id)shares;
- (void)passWillBeRemoved:(id)removed;
- (void)paymentWebServiceCoordinator:(id)coordinator didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error;
- (void)rangingDidResume;
- (void)rangingDidSuspendWithReasons:(unint64_t)reasons;
- (void)registerObserver:(id)observer;
- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)identifier;
- (void)requestRegistrationForCredentialWithIdentifier:(id)identifier completion:(id)completion;
- (void)restoreSubcredentialsInDatabase:(id)database withCompletion:(id)completion;
- (void)revokeSubcredentialForIdentifier:(id)identifier withCompletion:(id)completion;
- (void)revokeSubcredentials:(id)subcredentials withCompletion:(id)completion;
- (void)revokeSubcredentialsForIdentifiers:(id)identifiers withCompletion:(id)completion;
- (void)revokeSubcredentialsForReaderIdentifiers:(id)identifiers withCompletion:(id)completion;
- (void)sendRKEPassThroughData:(id)data forSessionIdentifier:(id)identifier withCompletion:(id)completion;
- (void)sessionDidChangeConnectionStatus:(int64_t)status;
- (void)sessionDidReceiveData:(id)data;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion;
- (void)updateSubcredentialsForBluetoothPowerChange;
@end

@implementation PDAppletSubcredentialManager

- (PDAppletSubcredentialManager)initWithDatabaseManager:(id)manager cardFileManager:(id)fileManager paymentWebServiceCoordinator:(id)coordinator daManager:(id)daManager carKeyRequirementsChecker:(id)checker secureElement:(id)element assertionManager:(id)assertionManager notificationManager:(id)self0
{
  managerCopy = manager;
  fileManagerCopy = fileManager;
  coordinatorCopy = coordinator;
  daManagerCopy = daManager;
  checkerCopy = checker;
  elementCopy = element;
  assertionManagerCopy = assertionManager;
  notificationManagerCopy = notificationManager;
  v36.receiver = self;
  v36.super_class = PDAppletSubcredentialManager;
  v18 = [(PDAppletSubcredentialManager *)&v36 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_daManager, daManager);
    objc_storeStrong(&v19->_carKeyRequirementsChecker, checker);
    v20 = dispatch_queue_create("com.apple.passkit.credentialmanager", 0);
    queue = v19->_queue;
    v19->_queue = v20;

    v22 = [NSHashTable pk_weakObjectsHashTableUsingPointerPersonality:assertionManagerCopy];
    observers = v19->_observers;
    v19->_observers = v22;

    v19->_observersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_databaseManager, manager);
    objc_storeStrong(&v19->_cardFileManager, fileManager);
    objc_storeStrong(&v19->_webServiceCoordinator, coordinator);
    objc_storeStrong(&v19->_secureElement, element);
    objc_storeStrong(&v19->_assertionManager, assertionManager);
    objc_storeStrong(&v19->_notificationManager, notificationManager);
    [(PDPaymentWebServiceCoordinator *)v19->_webServiceCoordinator registerObserver:v19];
    [(PDAssertionManager *)v19->_assertionManager registerObserver:v19];
    PDNFSecureXPCRegisterAccessDeviceEventObserver(v19);
    v24 = PDUtilityQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001924D0;
    block[3] = &unk_10083C470;
    v35 = v19;
    v25 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
    dispatch_async(v24, v25);
  }

  return v19;
}

- (void)dealloc
{
  PDNFSecureXPCUnregisterAccessDeviceEventObserver(self);
  [(PDAssertionManager *)self->_assertionManager unregisterObserver:self];
  [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PDAppletSubcredentialManager;
  [(PDAppletSubcredentialManager *)&v3 dealloc];
}

- (id)sharedCredentialManifestForPass:(id)pass
{
  passCopy = pass;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  devicePaymentApplications = [passCopy devicePaymentApplications];
  v6 = [devicePaymentApplications countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        subcredentials = [*(*(&v29 + 1) + 8 * i) subcredentials];
        v10 = [subcredentials count];

        if (v10)
        {

          dataAccessor = [passCopy dataAccessor];
          secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
          devicePaymentApplications = [dataAccessor remoteAssetManagerForSEIDs:secureElementIdentifiers];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          deviceSpecificItems = [devicePaymentApplications deviceSpecificItems];
          v14 = [deviceSpecificItems countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v24 = passCopy;
            v16 = *v26;
            v17 = PKSharedCredentialsAssetName;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(deviceSpecificItems);
                }

                v19 = *(*(&v25 + 1) + 8 * j);
                localURL = [v19 localURL];
                lastPathComponent = [localURL lastPathComponent];
                v22 = [lastPathComponent hasPrefix:v17];

                if (v22)
                {
                  v6 = v19;

                  goto LABEL_20;
                }
              }

              v15 = [deviceSpecificItems countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

            v6 = 0;
LABEL_20:
            passCopy = v24;
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_23;
        }
      }

      v6 = [devicePaymentApplications countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  return v6;
}

- (void)updateMetadataOnPassWithIdentifier:(id)identifier credential:(id)credential completion:(id)completion
{
  identifierCopy = identifier;
  credentialCopy = credential;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy && credentialCopy)
  {
    if (v12)
    {
      v16 = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = credentialCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating credential metadata for pass (%@): %@", &v16, 0x16u);
    }

    databaseManager = self->_databaseManager;
    v14 = [NSSet setWithObject:credentialCopy];
    v15 = [(PDDatabaseManager *)databaseManager updateAppletSubcredentials:v14];

    [(PDAppletSubcredentialManager *)self didUpdateCredential:credentialCopy onPassWithIdentifier:identifierCopy];
    if (!completionCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    completionCopy[2](completionCopy, v15);
    goto LABEL_12;
  }

  if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalid parameters to update credential metadata", &v16, 2u);
  }

  if (completionCopy)
  {
    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handlePaymentApplicationsAddedOrUpdatedOnPass:(id)pass oldShares:(id)shares
{
  passCopy = pass;
  sharesCopy = shares;
  [(PDAppletSubcredentialManager *)self _ingestSEBlobsForPass:passCopy];
  [(PDAppletSubcredentialManager *)self _ingestSubcredentialConfigurationsForPass:passCopy];
  if ([passCopy isCarKeyPass])
  {
    v41 = passCopy;
    v42 = sharesCopy;
    [passCopy uniqueID];
    v40 = v39 = self;
    v8 = [(PDDatabaseManager *)self->_databaseManager passSharesForPassUniqueIdentifier:?];
    v9 = objc_alloc_init(NSMutableDictionary);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v59;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v58 + 1) + 8 * i);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          credentialShares = [v14 credentialShares];
          v16 = [credentialShares countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v55;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v55 != v18)
                {
                  objc_enumerationMutation(credentialShares);
                }

                v20 = *(*(&v54 + 1) + 8 * j);
                identifier = [v20 identifier];
                [v9 setObject:v20 forKeyedSubscript:identifier];
              }

              v17 = [credentialShares countByEnumeratingWithState:&v54 objects:v68 count:16];
            }

            while (v17);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v11);
    }

    v22 = objc_alloc_init(NSMutableSet);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v43 = v42;
    v23 = [v43 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v23)
    {
      v24 = v23;
      v45 = *v51;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v26 = *(*(&v50 + 1) + 8 * k);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          credentialShares2 = [v26 credentialShares];
          v28 = [credentialShares2 countByEnumeratingWithState:&v46 objects:v66 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v47;
            do
            {
              for (m = 0; m != v29; m = m + 1)
              {
                if (*v47 != v30)
                {
                  objc_enumerationMutation(credentialShares2);
                }

                v32 = *(*(&v46 + 1) + 8 * m);
                [v32 status];
                if ((PKShareStatusIsPendingVerification() & 1) == 0)
                {
                  identifier2 = [v32 identifier];
                  v34 = [v9 objectForKeyedSubscript:identifier2];

                  if (!v34)
                  {
                    [v22 addObject:identifier2];
                  }
                }
              }

              v29 = [credentialShares2 countByEnumeratingWithState:&v46 objects:v66 count:16];
            }

            while (v29);
          }
        }

        v24 = [v43 countByEnumeratingWithState:&v50 objects:v67 count:16];
      }

      while (v24);
    }

    passCopy = v41;
    devicePrimaryPaymentApplication = [v41 devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];

    if (anyObject && [v22 count])
    {
      v38 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v63 = v22;
        v64 = 2112;
        v65 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Removing %@ credential shares for pass %@", buf, 0x16u);
      }

      [(PKDAManager *)v39->_daManager removeSharedCredentialsWithIdentifiers:v22 credential:anyObject completion:0];
    }

    sharesCopy = v42;
  }
}

- (void)passAddedOrUpdated:(id)updated oldPass:(id)pass oldShares:(id)shares
{
  updatedCopy = updated;
  passCopy = pass;
  [(PDAppletSubcredentialManager *)self handlePaymentApplicationsAddedOrUpdatedOnPass:updatedCopy oldShares:shares];
  if ([updatedCopy areCredentialsStoredInKML])
  {
    selfCopy = self;
    v40 = updatedCopy;
    v10 = objc_alloc_init(NSMutableSet);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = passCopy;
    obj = [passCopy devicePaymentApplications];
    v11 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v62;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v62 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v61 + 1) + 8 * i);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          subcredentials = [v15 subcredentials];
          v17 = [subcredentials countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v58;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v58 != v19)
                {
                  objc_enumerationMutation(subcredentials);
                }

                v21 = *(*(&v57 + 1) + 8 * j);
                if ([v21 state] == 1)
                {
                  identifier = [v21 identifier];
                  [v10 addObject:identifier];
                }
              }

              v18 = [subcredentials countByEnumeratingWithState:&v57 objects:v67 count:16];
            }

            while (v18);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v12);
    }

    obja = [v40 uniqueID];
    v23 = objc_alloc_init(NSMutableSet);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    devicePaymentApplications = [v40 devicePaymentApplications];
    v25 = [devicePaymentApplications countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          v29 = *(*(&v53 + 1) + 8 * k);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          subcredentials2 = [v29 subcredentials];
          v31 = [subcredentials2 countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v50;
            do
            {
              for (m = 0; m != v32; m = m + 1)
              {
                if (*v50 != v33)
                {
                  objc_enumerationMutation(subcredentials2);
                }

                [v23 addObject:*(*(&v49 + 1) + 8 * m)];
              }

              v32 = [subcredentials2 countByEnumeratingWithState:&v49 objects:v65 count:16];
            }

            while (v32);
          }
        }

        v26 = [devicePaymentApplications countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v26);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100193294;
    v43[3] = &unk_10084A9C0;
    v44 = v23;
    updatedCopy = v40;
    v45 = v40;
    v46 = v10;
    v47 = selfCopy;
    v48 = obja;
    v35 = obja;
    v36 = v10;
    v37 = v23;
    [(PDAppletSubcredentialManager *)selfCopy _inflateSubcredentialsInDatabaseWithDeviceProperties:v37 withCompletion:v43];

    passCopy = v39;
  }
}

- (void)_ingestSEBlobsForPass:(id)pass
{
  passCopy = pass;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [passCopy seBlobsForSecureElementIdentifiers:secureElementIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        daManager = self->_daManager;
        identifier = [v11 identifier];
        v15 = [(PKDAManager *)daManager storeSEBlobForSubcredentialIdentifier:identifier seBlob:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_ingestSubcredentialConfigurationsForPass:(id)pass
{
  passCopy = pass;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [passCopy subcredentialConfigurationForSecureElementIdentifiers:secureElementIdentifiers];
  if ([v6 count])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    devicePaymentApplications = v6;
    v8 = [devicePaymentApplications countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = secureElementIdentifiers;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          daManager = self->_daManager;
          v14 = [devicePaymentApplications objectForKey:v12];
          [(PKDAManager *)daManager updateCredentialConfigurationForCredential:v12 configuration:v14 completion:0];
        }

        v9 = [devicePaymentApplications countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v9);
LABEL_25:
      secureElementIdentifiers = v26;
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    devicePaymentApplications = [passCopy devicePaymentApplications];
    v15 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v25 = passCopy;
      v26 = secureElementIdentifiers;
      v17 = *v32;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          subcredentials = [v19 subcredentials];
          v21 = [subcredentials countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v28;
            do
            {
              for (k = 0; k != v22; k = k + 1)
              {
                if (*v28 != v23)
                {
                  objc_enumerationMutation(subcredentials);
                }

                [(PKDAManager *)self->_daManager updateCredentialConfigurationForCredential:*(*(&v27 + 1) + 8 * k) configuration:0 completion:0];
              }

              v22 = [subcredentials countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v22);
          }
        }

        v16 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
      passCopy = v25;
      goto LABEL_25;
    }
  }
}

- (void)revokeSubcredentials:(id)subcredentials withCompletion:(id)completion
{
  subcredentialsCopy = subcredentials;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_daManager)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = subcredentialsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Revoking credentials %@", buf, 0xCu);
    }

    v10 = PDOSTransactionCreate("PDAppletSubcredentialManager.revoke");
    daManager = self->_daManager;
    allObjects = [subcredentialsCopy allObjects];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100193998;
    v14[3] = &unk_100842780;
    v15 = v10;
    v16 = v8;
    v13 = v10;
    [(PKDAManager *)daManager deleteCredentials:allObjects completion:v14];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)revokeSubcredentialsForIdentifiers:(id)identifiers withCompletion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = completionCopy;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193A8C;
    v10[3] = &unk_100844A90;
    v11 = completionCopy;
    [(PKDAManager *)daManager deleteCredentialsForIdentifiers:identifiersCopy completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)revokeSubcredentialsForReaderIdentifiers:(id)identifiers withCompletion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = completionCopy;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193B80;
    v10[3] = &unk_100844A90;
    v11 = completionCopy;
    [(PKDAManager *)daManager deleteCredentialsForReaderIdentifiers:identifiersCopy completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)revokeSubcredentialForIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193C74;
    v10[3] = &unk_100845A78;
    v11 = completionCopy;
    [(PKDAManager *)daManager deleteCredential:identifierCopy completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)credentialsOnDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  daManager = self->_daManager;
  if (daManager)
  {
    v6 = completionCopy;
    [(PKDAManager *)daManager listCredentialsWithCompletion:?];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v6 = completionCopy;
    completionCopy[2](completionCopy, 0);
  }

  completionCopy = v6;
LABEL_6:
}

- (void)requestRegistrationForCredentialWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to register credential: %@", buf, 0xCu);
  }

  v9 = PDOSTransactionCreate("PDAppletSubcredentialManager.credential.register");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100194004;
  v31[3] = &unk_10084A9E8;
  v10 = completionCopy;
  v32 = v10;
  v11 = objc_retainBlock(v31);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100194024;
  v26[3] = &unk_10084AAB0;
  v12 = v9;
  v27 = v12;
  objc_copyWeak(&v30, &location);
  v13 = v11;
  v29 = v13;
  v14 = identifierCopy;
  v28 = v14;
  v15 = objc_retainBlock(v26);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100194698;
  v20[3] = &unk_10084AB28;
  objc_copyWeak(&v25, &location);
  v16 = v12;
  v21 = v16;
  v17 = v10;
  v23 = v17;
  v18 = v14;
  v22 = v18;
  v19 = v15;
  v24 = v19;
  [(PDAppletSubcredentialManager *)self createRegistrationRequestForCredentialWithIdentifier:v18 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&location);
}

- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100194C54;
  v5[3] = &unk_10084AB50;
  objc_copyWeak(&v6, &location);
  [(PDAppletSubcredentialManager *)self createRegistrationRequestForCredentialWithIdentifier:identifierCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)passWillBeRemoved:(id)removed
{
  removedCopy = removed;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  devicePaymentApplications = [removedCopy devicePaymentApplications];
  v6 = [devicePaymentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        subcredentials = [*(*(&v15 + 1) + 8 * i) subcredentials];
        if ([subcredentials count])
        {
          if (v8)
          {
            [v8 unionSet:subcredentials];
          }

          else
          {
            v8 = [subcredentials mutableCopy];
          }
        }
      }

      v7 = [devicePaymentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    webServiceCoordinator = self->_webServiceCoordinator;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100194E78;
    v13[3] = &unk_10083D518;
    v13[4] = self;
    v14 = v8;
    [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v13];
  }
}

- (void)restoreSubcredentialsInDatabase:(id)database withCompletion:(id)completion
{
  databaseCopy = database;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = databaseCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring credentials in database: %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100194FAC;
  v8[3] = &unk_10083C780;
  v9 = databaseCopy;
  v7 = databaseCopy;
  [(PDAppletSubcredentialManager *)self _inflateSubcredentialsInDatabaseWithDeviceProperties:v7 withCompletion:v8];
}

- (void)_inflateSubcredentialsInDatabaseWithDeviceProperties:(id)properties withCompletion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  if ([propertiesCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100195170;
    v8[3] = &unk_100844A68;
    v9 = propertiesCopy;
    selfCopy = self;
    v11 = completionCopy;
    [(PDAppletSubcredentialManager *)self credentialsOnDeviceWithCompletion:v8];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (BOOL)sharingInvitationReceiptWasInvalidated:(id)invalidated withCredentialIdentifier:(id)identifier error:(id)error
{
  invalidatedCopy = invalidated;
  identifierCopy = identifier;
  errorCopy = error;
  v11 = errorCopy;
  if (invalidatedCopy)
  {
    if (identifierCopy | errorCopy)
    {
      if (!identifierCopy || errorCopy)
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = invalidatedCopy;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sharing invite (%@) failed or was declined: %@", &v18, 0x16u);
        }

        v16 = [NSSet setWithObject:invalidatedCopy];
        v12 = [(PDAppletSubcredentialManager *)self removeSharingInvitationReceiptWithIdentifiers:v16 onCredential:identifierCopy];
      }

      else
      {
        v12 = [(PDAppletSubcredentialManager *)self createdSharedSubcredentialWithIdentifier:identifierCopy fromSharingInvitationIdentifier:invalidatedCopy];
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
      }

      v12 = 1;
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Invalidated recipient with no identifier.", &v18, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)removeSharingInvitationReceiptWithIdentifiers:(id)identifiers onCredential:(id)credential
{
  identifiersCopy = identifiers;
  credentialCopy = credential;
  v7 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialForSharedCredentialWithIdentifier:?];
  identifier = [v7 identifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithCredentialIdentifier:identifier];
  v10 = [(PDDatabaseManager *)self->_databaseManager passSharesForPassUniqueIdentifier:v9];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  databaseManager = self->_databaseManager;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001958DC;
  v22[3] = &unk_100848590;
  v12 = identifiersCopy;
  v23 = v12;
  selfCopy = self;
  v25 = &v26;
  [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v22];
  v13 = [v12 count];
  v14 = v27[3];
  v15 = PKLogFacilityTypeGetObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v9 && v7 && v14)
  {
    if (v16)
    {
      identifier2 = [v7 identifier];
      *buf = 134218754;
      v31 = v14;
      v32 = 2048;
      v33 = v13;
      v34 = 2112;
      v35 = identifier2;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed %ld/%ld sharing invitation receipts from credential (%@): %@", buf, 0x2Au);
    }

    [(PDAppletSubcredentialManager *)self didUpdateCredential:v7 onPassWithIdentifier:v9 oldShares:v10];
  }

  else
  {
    if (v16)
    {
      identifier3 = [v7 identifier];
      *buf = 138412546;
      v31 = identifier3;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to remove sharing invitation receipts from credential (%@): %@", buf, 0x16u);
    }
  }

  v19 = v27[3] == v13;

  _Block_object_dispose(&v26, 8);
  return v19;
}

- (BOOL)createdSharedSubcredentialWithIdentifier:(id)identifier fromSharingInvitationIdentifier:(id)invitationIdentifier
{
  identifierCopy = identifier;
  invitationIdentifierCopy = invitationIdentifier;
  v8 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialForSharedCredentialWithIdentifier:invitationIdentifierCopy];
  databaseManager = self->_databaseManager;
  identifier = [v8 identifier];
  v11 = [(PDDatabaseManager *)databaseManager passUniqueIdentifierWithCredentialIdentifier:identifier];

  v12 = [(PDDatabaseManager *)self->_databaseManager passSharesForPassUniqueIdentifier:v11];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100005B90;
  v36 = sub_10000B1D4;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100005B90;
  v30 = sub_10000B1D4;
  v31 = 0;
  v13 = self->_databaseManager;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100195DA4;
  v21[3] = &unk_10084AB78;
  v24 = &v26;
  v21[4] = self;
  v14 = invitationIdentifierCopy;
  v22 = v14;
  v15 = identifierCopy;
  v23 = v15;
  v25 = &v32;
  [(PDDatabaseManager *)v13 performTransactionWithBlock:v21];
  v16 = v27[5];
  v17 = PKLogFacilityTypeGetObject();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      *buf = 138412546;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "RecipientKeyID %@ accepted invite. Share: %@", buf, 0x16u);
    }

    [(PDAppletSubcredentialManager *)self didUpdateCredential:v33[5] onPassWithIdentifier:v11 oldShares:v12];
  }

  else
  {
    if (v18)
    {
      *buf = 138412546;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to create shared credential from invitationID %@ and ReceiptKeyID %@", buf, 0x16u);
    }
  }

  v19 = v27[5] != 0;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v19;
}

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (self->_activeVehicleConnectionSession)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting to start vehicle connection session with one already active.", buf, 2u);
    }

    goto LABEL_7;
  }

  if (![(PDAssertionManager *)self->_assertionManager hasAssertionsOfType:8])
  {
LABEL_7:
    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:identifierCopy];
  secureElementPass = [v9 secureElementPass];

  v11 = [[PDVehicleConnectionSession alloc] initForSecureElementPass:secureElementPass delegate:self];
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  self->_activeVehicleConnectionSession = v11;
  v13 = v11;

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019600C;
  v14[3] = &unk_100840258;
  v15 = completionCopy;
  [(PDVehicleConnectionSession *)v13 startSessionWithCompletion:v14];

LABEL_8:
}

- (void)invalidateVehicleConnectionSessionForIdentifier:(id)identifier
{
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  identifierCopy = identifier;
  sessionIdentifier = [(PDVehicleConnectionSession *)activeVehicleConnectionSession sessionIdentifier];
  v7 = [sessionIdentifier isEqualToString:identifierCopy];

  if (v7)
  {
    [(PDVehicleConnectionSession *)self->_activeVehicleConnectionSession endSession];
    v8 = self->_activeVehicleConnectionSession;
    self->_activeVehicleConnectionSession = 0;
  }
}

- (void)sendRKEPassThroughData:(id)data forSessionIdentifier:(id)identifier withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  identifierCopy = identifier;
  sessionIdentifier = [(PDVehicleConnectionSession *)activeVehicleConnectionSession sessionIdentifier];
  v13 = [sessionIdentifier isEqualToString:identifierCopy];

  if (v13)
  {
    v14 = self->_activeVehicleConnectionSession;
    v20 = 0;
    v15 = [(PDVehicleConnectionSession *)v14 sendData:dataCopy error:&v20];
    v16 = v20;
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 description];
      *buf = 67109378;
      v22 = v15;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Passthrough message finished, %d, %@", buf, 0x12u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15, v16);
    }
  }

  else if (completionCopy)
  {
    v19 = [NSError errorWithDomain:PKPassKitErrorDomain code:2 userInfo:0];
    completionCopy[2](completionCopy, 0, v19);
  }
}

- (void)registerObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)unregisterObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:observerCopy];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)sessionDidChangeConnectionStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001963C8;
  v6[3] = &unk_10084AB98;
  v6[4] = status;
  [allObjects enumerateObjectsUsingBlock:v6];
}

- (void)sessionDidReceiveData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001964EC;
  v7[3] = &unk_10084ABC0;
  v8 = dataCopy;
  v6 = dataCopy;
  [allObjects enumerateObjectsUsingBlock:v7];
}

- (void)createRegistrationRequestForCredentialWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialWithIdentifier:identifierCopy];
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating background request to register credential: %@", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001966F8;
    v11[3] = &unk_100845300;
    v12 = identifierCopy;
    selfCopy = self;
    v14 = v8;
    v15 = completionCopy;
    [(PDAppletSubcredentialManager *)self credentialsOnDeviceWithCompletion:v11];

    v9 = v12;
  }

  else if (v10)
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to register unknown credential: %@", buf, 0xCu);
  }
}

- (void)_removeBackgroundRegistrationRequestForCredentials:(id)credentials withPaymentWebService:(id)service
{
  credentialsCopy = credentials;
  serviceCopy = service;
  backgroundContext = [serviceCopy backgroundContext];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  remainingTasks = [backgroundContext remainingTasks];
  v8 = [remainingTasks countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v20 = 0;
  v10 = *v24;
  v22 = remainingTasks;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(remainingTasks);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        v14 = [backgroundContext backgroundDownloadRecordForTaskIdentifier:unsignedIntegerValue];
        if ([v14 taskType] == 5)
        {
          credentialIdentifier = [v14 credentialIdentifier];
          if (credentialIdentifier)
          {
            v16 = [[PKAppletSubcredential alloc] initWithIdentifier:credentialIdentifier];
            v17 = [credentialsCopy member:v16];

            if (v17)
            {
              v18 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v28 = credentialIdentifier;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing background registration request for credential with identifier: %@", buf, 0xCu);
              }

              [backgroundContext removeBackgroundDownloadRecordForTaskIdentifier:unsignedIntegerValue];
              v20 = 1;
            }
          }

          else
          {
            v19 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found background credential registration request with no identifier!", buf, 2u);
            }
          }

          remainingTasks = v22;
        }
      }
    }

    v9 = [remainingTasks countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v9);

  if (v20)
  {
    remainingTasks = [serviceCopy archiver];
    [remainingTasks archiveBackgroundContext:backgroundContext];
LABEL_22:
  }
}

- (void)didUpdateCredential:(id)credential onPassWithIdentifier:(id)identifier oldShares:(id)shares
{
  credentialCopy = credential;
  identifierCopy = identifier;
  sharesCopy = shares;
  if (credentialCopy && identifierCopy)
  {
    os_unfair_lock_lock(&self->_observersLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100196F3C;
    v12[3] = &unk_10084AC10;
    v12[4] = self;
    v13 = credentialCopy;
    v14 = identifierCopy;
    v15 = sharesCopy;
    [allObjects enumerateObjectsUsingBlock:v12];
  }
}

- (void)_downloadPassAtURL:(id)l credentialIdentifier:(id)identifier share:(id)share
{
  lCopy = l;
  identifierCopy = identifier;
  shareCopy = share;
  v28 = PDOSTransactionCreate("PDAppletSubcredentialManager.pass.download");
  v11 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithCredentialIdentifier:identifierCopy];
  v12 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v11];
  secureElementPass = [v12 secureElementPass];

  v14 = [(PDAssertionManager *)self->_assertionManager hasAssertionsOfType:1];
  if (shareCopy)
  {
    activationOptions = [shareCopy activationOptions];
    containsPinCode = [activationOptions containsPinCode];
  }

  else
  {
    containsPinCode = 0;
  }

  if (secureElementPass)
  {
    v17 = 0;
  }

  else
  {
    v17 = containsPinCode;
  }

  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"No";
    if (v14)
    {
      v21 = @"Yes";
    }

    else
    {
      v21 = @"No";
    }

    *buf = 138413058;
    *&buf[4] = identifierCopy;
    if (containsPinCode)
    {
      v22 = @"Yes";
    }

    else
    {
      v22 = @"No";
    }

    *&buf[14] = v21;
    *&buf[12] = 2112;
    *&buf[22] = 2112;
    if (v18)
    {
      v20 = @"Yes";
    }

    v51 = v22;
    LOWORD(v52) = 2112;
    *(&v52 + 2) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Downloading pass after credential (%@) registration. Has provisioning assertion?: %@. isBackgroundProvisioning?: %@. Enable Express?: %@", buf, 0x2Au);
  }

  v23 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = sub_100005B90;
  *&v52 = sub_10000B1D4;
  *(&v52 + 1) = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100005B90;
  v48[4] = sub_10000B1D4;
  v49 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100197580;
  v46[3] = &unk_10084AC38;
  v47 = v18;
  v46[4] = self;
  v46[5] = v48;
  [v23 addOperation:v46];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_100005B90;
  v44[4] = sub_10000B1D4;
  v45 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100197748;
  v41[3] = &unk_10083E620;
  v41[4] = self;
  v24 = lCopy;
  v42 = v24;
  v43 = v44;
  [v23 addOperation:v41];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1001979C0;
  v40[3] = &unk_100844D98;
  v40[4] = self;
  v40[5] = v44;
  v40[6] = buf;
  [v23 addOperation:v40];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100197B68;
  v39[3] = &unk_10083EC68;
  v39[4] = self;
  v39[5] = v44;
  [v23 addOperation:v39];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100197CA0;
  v35[3] = &unk_10084AD00;
  v36 = v18;
  v35[4] = self;
  v35[5] = v44;
  v35[6] = v37;
  [v23 addOperation:v35];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100198080;
  v34[3] = &unk_10084AD28;
  v34[5] = v37;
  v34[6] = v44;
  v34[4] = self;
  [v23 addOperation:v34];
  v25 = +[NSNull null];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001981CC;
  v29[3] = &unk_10084AD50;
  v26 = v28;
  v30 = v26;
  selfCopy = self;
  v32 = v48;
  v33 = buf;
  v27 = [v23 evaluateWithInput:v25 completion:v29];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(buf, 8);
}

- (void)paymentWebServiceCoordinator:(id)coordinator didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  responseCopy = response;
  errorCopy = error;
  v14 = errorCopy;
  if (!responseCopy || errorCopy)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v38 = identifierCopy;
      *&v38[8] = 2112;
      *&v38[10] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to register credential (%@) with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialWithIdentifier:identifierCopy];
    v16 = [(PDDatabaseManager *)self->_databaseManager passSharesForSubcredentialIdentifier:identifierCopy];
    firstObject = [v16 firstObject];

    if (firstObject && !v15)
    {
      v15 = [[PKAppletSubcredential alloc] initWithIdentifier:identifierCopy];
    }

    passURL = [responseCopy passURL];
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [firstObject identifier];
      v21 = passURL;
      v22 = identifier;
      v23 = @"Yes";
      *buf = 138412802;
      *v38 = identifierCopy;
      *&v38[8] = 2112;
      if (!v21)
      {
        v23 = @"No";
      }

      *&v38[10] = identifier;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received credential (%@) registration response. Share: %@ hasPassURL: %@", buf, 0x20u);

      passURL = v21;
    }

    if (v15)
    {
      v33 = passURL;
      credentialAttestation = [responseCopy credentialAttestation];
      if (credentialAttestation)
      {
        v31 = firstObject;
        v32 = coordinatorCopy;
        v25 = PDOSTransactionCreate("PDAppletSubcredentialManager.register");
        vehicleMobilizationEncryptedContainer = [responseCopy vehicleMobilizationEncryptedContainer];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          isOnlineImmobilizerToken = [v15 isOnlineImmobilizerToken];
          v28 = @"Yes";
          if (!vehicleMobilizationEncryptedContainer)
          {
            v28 = @"No";
          }

          *buf = 67109378;
          *v38 = isOnlineImmobilizerToken;
          *&v38[4] = 2112;
          *&v38[6] = v28;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Credential isOnlineImmobilizerToken (%d). Has encryptedContainer: %@", buf, 0x12u);
        }

        daManager = self->_daManager;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100198760;
        v34[3] = &unk_100845C80;
        v35 = v25;
        v36 = identifierCopy;
        v30 = v25;
        [(PKDAManager *)daManager updateTrackingAttestation:credentialAttestation forCredential:v15 encryptedContainer:vehicleMobilizationEncryptedContainer completion:v34];

        firstObject = v31;
        coordinatorCopy = v32;
      }

      else
      {
        vehicleMobilizationEncryptedContainer = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Credential (%@) registration response missing attestation", buf, 0xCu);
          vehicleMobilizationEncryptedContainer = v19;
        }
      }

      passURL = v33;
      if (v33)
      {
        [(PDAppletSubcredentialManager *)self _downloadPassAtURL:v33 credentialIdentifier:identifierCopy share:firstObject];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No pass to download after credential (%@) registration!", buf, 0xCu);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v38 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unable to register credential (%@): credential no longer exists", buf, 0xCu);
      }

      credentialAttestation = v19;
    }
  }
}

- (void)updateSubcredentialsForBluetoothPowerChange
{
  v3 = [(PDCarKeyRequirementsChecker *)self->_carKeyRequirementsChecker deviceSupportsCredentials]&& [(PKBluetoothMonitorer *)self->_bluetoothMonitorer state]== 5;

  [(PDAppletSubcredentialManager *)self _updateSubcredentialsForBTEnabled:v3];
}

- (void)_updateSubcredentialsForBTEnabled:(BOOL)enabled
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100198904;
  v3[3] = &unk_10084AD70;
  enabledCopy = enabled;
  [(PDAppletSubcredentialManager *)self _updateSubcredentialsWithRangingSuspensionReason:v3];
}

- (void)_updateSubcredentialsWithRangingSuspensionReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  databaseManager = self->_databaseManager;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100198A0C;
  v9[3] = &unk_10084ADC0;
  v10 = allObjects;
  selfCopy = self;
  v8 = allObjects;
  [(PDDatabaseManager *)databaseManager updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:secureElementIdentifiers usingUpdater:reasonCopy withHandler:v9];
}

- (void)bluetoothMonitorerRecievedUpdatedBluetoothState:(int64_t)state
{
  if ((state - 2) <= 3)
  {
    [(PDAppletSubcredentialManager *)self _updateSubcredentialsForBTEnabled:(8u >> ((state - 2) & 0xF)) & 1];
  }
}

- (void)rangingDidResume
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDAppletSubcredentialManager: Ranging resumed", v4, 2u);
  }

  [(PDAppletSubcredentialManager *)self _updateSubcredentialsWithRangingSuspensionReason:&stru_10084AE00];
}

- (void)rangingDidSuspendWithReasons:(unint64_t)reasons
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDAppletSubcredentialManager: Ranging suspended for reasons (%lu)", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100198CEC;
  v6[3] = &unk_10084AE20;
  v6[4] = reasons;
  [(PDAppletSubcredentialManager *)self _updateSubcredentialsWithRangingSuspensionReason:v6];
}

- (void)assertionManager:(id)manager didInvalidateAssertion:(id)assertion
{
  if ([assertion type] == 8)
  {
    [(PDVehicleConnectionSession *)self->_activeVehicleConnectionSession endSession];
    activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
    self->_activeVehicleConnectionSession = 0;
  }
}

@end