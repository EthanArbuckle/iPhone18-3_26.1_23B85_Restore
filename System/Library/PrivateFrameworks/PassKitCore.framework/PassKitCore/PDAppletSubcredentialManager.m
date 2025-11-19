@interface PDAppletSubcredentialManager
- (BOOL)createdSharedSubcredentialWithIdentifier:(id)a3 fromSharingInvitationIdentifier:(id)a4;
- (BOOL)removeSharingInvitationReceiptWithIdentifiers:(id)a3 onCredential:(id)a4;
- (BOOL)sharingInvitationReceiptWasInvalidated:(id)a3 withCredentialIdentifier:(id)a4 error:(id)a5;
- (PDAppletSubcredentialManager)initWithDatabaseManager:(id)a3 cardFileManager:(id)a4 paymentWebServiceCoordinator:(id)a5 daManager:(id)a6 carKeyRequirementsChecker:(id)a7 secureElement:(id)a8 assertionManager:(id)a9 notificationManager:(id)a10;
- (id)sharedCredentialManifestForPass:(id)a3;
- (void)_downloadPassAtURL:(id)a3 credentialIdentifier:(id)a4 share:(id)a5;
- (void)_inflateSubcredentialsInDatabaseWithDeviceProperties:(id)a3 withCompletion:(id)a4;
- (void)_ingestSEBlobsForPass:(id)a3;
- (void)_ingestSubcredentialConfigurationsForPass:(id)a3;
- (void)_removeBackgroundRegistrationRequestForCredentials:(id)a3 withPaymentWebService:(id)a4;
- (void)_updateSubcredentialsForBTEnabled:(BOOL)a3;
- (void)_updateSubcredentialsWithRangingSuspensionReason:(id)a3;
- (void)assertionManager:(id)a3 didInvalidateAssertion:(id)a4;
- (void)bluetoothMonitorerRecievedUpdatedBluetoothState:(int64_t)a3;
- (void)createRegistrationRequestForCredentialWithIdentifier:(id)a3 completion:(id)a4;
- (void)credentialsOnDeviceWithCompletion:(id)a3;
- (void)dealloc;
- (void)didUpdateCredential:(id)a3 onPassWithIdentifier:(id)a4 oldShares:(id)a5;
- (void)handlePaymentApplicationsAddedOrUpdatedOnPass:(id)a3 oldShares:(id)a4;
- (void)invalidateVehicleConnectionSessionForIdentifier:(id)a3;
- (void)passAddedOrUpdated:(id)a3 oldPass:(id)a4 oldShares:(id)a5;
- (void)passWillBeRemoved:(id)a3;
- (void)paymentWebServiceCoordinator:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6;
- (void)rangingDidResume;
- (void)rangingDidSuspendWithReasons:(unint64_t)a3;
- (void)registerObserver:(id)a3;
- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)a3;
- (void)requestRegistrationForCredentialWithIdentifier:(id)a3 completion:(id)a4;
- (void)restoreSubcredentialsInDatabase:(id)a3 withCompletion:(id)a4;
- (void)revokeSubcredentialForIdentifier:(id)a3 withCompletion:(id)a4;
- (void)revokeSubcredentials:(id)a3 withCompletion:(id)a4;
- (void)revokeSubcredentialsForIdentifiers:(id)a3 withCompletion:(id)a4;
- (void)revokeSubcredentialsForReaderIdentifiers:(id)a3 withCompletion:(id)a4;
- (void)sendRKEPassThroughData:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5;
- (void)sessionDidChangeConnectionStatus:(int64_t)a3;
- (void)sessionDidReceiveData:(id)a3;
- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)unregisterObserver:(id)a3;
- (void)updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updateSubcredentialsForBluetoothPowerChange;
@end

@implementation PDAppletSubcredentialManager

- (PDAppletSubcredentialManager)initWithDatabaseManager:(id)a3 cardFileManager:(id)a4 paymentWebServiceCoordinator:(id)a5 daManager:(id)a6 carKeyRequirementsChecker:(id)a7 secureElement:(id)a8 assertionManager:(id)a9 notificationManager:(id)a10
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v17 = a10;
  v36.receiver = self;
  v36.super_class = PDAppletSubcredentialManager;
  v18 = [(PDAppletSubcredentialManager *)&v36 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_daManager, a6);
    objc_storeStrong(&v19->_carKeyRequirementsChecker, a7);
    v20 = dispatch_queue_create("com.apple.passkit.credentialmanager", 0);
    queue = v19->_queue;
    v19->_queue = v20;

    v22 = [NSHashTable pk_weakObjectsHashTableUsingPointerPersonality:v27];
    observers = v19->_observers;
    v19->_observers = v22;

    v19->_observersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_databaseManager, a3);
    objc_storeStrong(&v19->_cardFileManager, a4);
    objc_storeStrong(&v19->_webServiceCoordinator, a5);
    objc_storeStrong(&v19->_secureElement, a8);
    objc_storeStrong(&v19->_assertionManager, a9);
    objc_storeStrong(&v19->_notificationManager, a10);
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

- (id)sharedCredentialManifestForPass:(id)a3
{
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [v4 devicePaymentApplications];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v29 + 1) + 8 * i) subcredentials];
        v10 = [v9 count];

        if (v10)
        {

          v11 = [v4 dataAccessor];
          v12 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
          v5 = [v11 remoteAssetManagerForSEIDs:v12];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = [v5 deviceSpecificItems];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v24 = v4;
            v16 = *v26;
            v17 = PKSharedCredentialsAssetName;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v25 + 1) + 8 * j);
                v20 = [v19 localURL];
                v21 = [v20 lastPathComponent];
                v22 = [v21 hasPrefix:v17];

                if (v22)
                {
                  v6 = v19;

                  goto LABEL_20;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

            v6 = 0;
LABEL_20:
            v4 = v24;
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_23;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (void)updateMetadataOnPassWithIdentifier:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8 && v9)
  {
    if (v12)
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating credential metadata for pass (%@): %@", &v16, 0x16u);
    }

    databaseManager = self->_databaseManager;
    v14 = [NSSet setWithObject:v9];
    v15 = [(PDDatabaseManager *)databaseManager updateAppletSubcredentials:v14];

    [(PDAppletSubcredentialManager *)self didUpdateCredential:v9 onPassWithIdentifier:v8];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    v10[2](v10, v15);
    goto LABEL_12;
  }

  if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalid parameters to update credential metadata", &v16, 2u);
  }

  if (v10)
  {
    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handlePaymentApplicationsAddedOrUpdatedOnPass:(id)a3 oldShares:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PDAppletSubcredentialManager *)self _ingestSEBlobsForPass:v6];
  [(PDAppletSubcredentialManager *)self _ingestSubcredentialConfigurationsForPass:v6];
  if ([v6 isCarKeyPass])
  {
    v41 = v6;
    v42 = v7;
    [v6 uniqueID];
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
          v15 = [v14 credentialShares];
          v16 = [v15 countByEnumeratingWithState:&v54 objects:v68 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v54 + 1) + 8 * j);
                v21 = [v20 identifier];
                [v9 setObject:v20 forKeyedSubscript:v21];
              }

              v17 = [v15 countByEnumeratingWithState:&v54 objects:v68 count:16];
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
          v27 = [v26 credentialShares];
          v28 = [v27 countByEnumeratingWithState:&v46 objects:v66 count:16];
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
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v46 + 1) + 8 * m);
                [v32 status];
                if ((PKShareStatusIsPendingVerification() & 1) == 0)
                {
                  v33 = [v32 identifier];
                  v34 = [v9 objectForKeyedSubscript:v33];

                  if (!v34)
                  {
                    [v22 addObject:v33];
                  }
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v46 objects:v66 count:16];
            }

            while (v29);
          }
        }

        v24 = [v43 countByEnumeratingWithState:&v50 objects:v67 count:16];
      }

      while (v24);
    }

    v6 = v41;
    v35 = [v41 devicePrimaryPaymentApplication];
    v36 = [v35 subcredentials];
    v37 = [v36 anyObject];

    if (v37 && [v22 count])
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

      [(PKDAManager *)v39->_daManager removeSharedCredentialsWithIdentifiers:v22 credential:v37 completion:0];
    }

    v7 = v42;
  }
}

- (void)passAddedOrUpdated:(id)a3 oldPass:(id)a4 oldShares:(id)a5
{
  v8 = a3;
  v9 = a4;
  [(PDAppletSubcredentialManager *)self handlePaymentApplicationsAddedOrUpdatedOnPass:v8 oldShares:a5];
  if ([v8 areCredentialsStoredInKML])
  {
    v38 = self;
    v40 = v8;
    v10 = objc_alloc_init(NSMutableSet);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = v9;
    obj = [v9 devicePaymentApplications];
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
          v16 = [v15 subcredentials];
          v17 = [v16 countByEnumeratingWithState:&v57 objects:v67 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v57 + 1) + 8 * j);
                if ([v21 state] == 1)
                {
                  v22 = [v21 identifier];
                  [v10 addObject:v22];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v57 objects:v67 count:16];
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
    v24 = [v40 devicePaymentApplications];
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v66 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v53 + 1) + 8 * k);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v30 = [v29 subcredentials];
          v31 = [v30 countByEnumeratingWithState:&v49 objects:v65 count:16];
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
                  objc_enumerationMutation(v30);
                }

                [v23 addObject:*(*(&v49 + 1) + 8 * m)];
              }

              v32 = [v30 countByEnumeratingWithState:&v49 objects:v65 count:16];
            }

            while (v32);
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v26);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100193294;
    v43[3] = &unk_10084A9C0;
    v44 = v23;
    v8 = v40;
    v45 = v40;
    v46 = v10;
    v47 = v38;
    v48 = obja;
    v35 = obja;
    v36 = v10;
    v37 = v23;
    [(PDAppletSubcredentialManager *)v38 _inflateSubcredentialsInDatabaseWithDeviceProperties:v37 withCompletion:v43];

    v9 = v39;
  }
}

- (void)_ingestSEBlobsForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [v4 seBlobsForSecureElementIdentifiers:v5];
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
        v14 = [v11 identifier];
        v15 = [(PKDAManager *)daManager storeSEBlobForSubcredentialIdentifier:v14 seBlob:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_ingestSubcredentialConfigurationsForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v6 = [v4 subcredentialConfigurationForSecureElementIdentifiers:v5];
  if ([v6 count])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = v5;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          daManager = self->_daManager;
          v14 = [v7 objectForKey:v12];
          [(PKDAManager *)daManager updateCredentialConfigurationForCredential:v12 configuration:v14 completion:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v9);
LABEL_25:
      v5 = v26;
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v7 = [v4 devicePaymentApplications];
    v15 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v25 = v4;
      v26 = v5;
      v17 = *v32;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v20 = [v19 subcredentials];
          v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
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
                  objc_enumerationMutation(v20);
                }

                [(PKDAManager *)self->_daManager updateCredentialConfigurationForCredential:*(*(&v27 + 1) + 8 * k) configuration:0 completion:0];
              }

              v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v22);
          }
        }

        v16 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
      v4 = v25;
      goto LABEL_25;
    }
  }
}

- (void)revokeSubcredentials:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_daManager)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Revoking credentials %@", buf, 0xCu);
    }

    v10 = PDOSTransactionCreate("PDAppletSubcredentialManager.revoke");
    daManager = self->_daManager;
    v12 = [v6 allObjects];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100193998;
    v14[3] = &unk_100842780;
    v15 = v10;
    v16 = v8;
    v13 = v10;
    [(PKDAManager *)daManager deleteCredentials:v12 completion:v14];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)revokeSubcredentialsForIdentifiers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193A8C;
    v10[3] = &unk_100844A90;
    v11 = v7;
    [(PKDAManager *)daManager deleteCredentialsForIdentifiers:v6 completion:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)revokeSubcredentialsForReaderIdentifiers:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193B80;
    v10[3] = &unk_100844A90;
    v11 = v7;
    [(PKDAManager *)daManager deleteCredentialsForReaderIdentifiers:v6 completion:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)revokeSubcredentialForIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  daManager = self->_daManager;
  if (daManager)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100193C74;
    v10[3] = &unk_100845A78;
    v11 = v7;
    [(PKDAManager *)daManager deleteCredential:v6 completion:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)credentialsOnDeviceWithCompletion:(id)a3
{
  v4 = a3;
  daManager = self->_daManager;
  if (daManager)
  {
    v6 = v4;
    [(PKDAManager *)daManager listCredentialsWithCompletion:?];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v4;
    v4[2](v4, 0);
  }

  v4 = v6;
LABEL_6:
}

- (void)requestRegistrationForCredentialWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to register credential: %@", buf, 0xCu);
  }

  v9 = PDOSTransactionCreate("PDAppletSubcredentialManager.credential.register");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100194004;
  v31[3] = &unk_10084A9E8;
  v10 = v7;
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
  v14 = v6;
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

- (void)requestBackgroundRegistrationForCredentialWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100194C54;
  v5[3] = &unk_10084AB50;
  objc_copyWeak(&v6, &location);
  [(PDAppletSubcredentialManager *)self createRegistrationRequestForCredentialWithIdentifier:v4 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)passWillBeRemoved:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 devicePaymentApplications];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) subcredentials];
        if ([v11 count])
        {
          if (v8)
          {
            [v8 unionSet:v11];
          }

          else
          {
            v8 = [v11 mutableCopy];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)restoreSubcredentialsInDatabase:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring credentials in database: %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100194FAC;
  v8[3] = &unk_10083C780;
  v9 = v5;
  v7 = v5;
  [(PDAppletSubcredentialManager *)self _inflateSubcredentialsInDatabaseWithDeviceProperties:v7 withCompletion:v8];
}

- (void)_inflateSubcredentialsInDatabaseWithDeviceProperties:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100195170;
    v8[3] = &unk_100844A68;
    v9 = v6;
    v10 = self;
    v11 = v7;
    [(PDAppletSubcredentialManager *)self credentialsOnDeviceWithCompletion:v8];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 1);
  }
}

- (BOOL)sharingInvitationReceiptWasInvalidated:(id)a3 withCredentialIdentifier:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v9 | v10)
    {
      if (!v9 || v10)
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v8;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sharing invite (%@) failed or was declined: %@", &v18, 0x16u);
        }

        v16 = [NSSet setWithObject:v8];
        v12 = [(PDAppletSubcredentialManager *)self removeSharingInvitationReceiptWithIdentifiers:v16 onCredential:v9];
      }

      else
      {
        v12 = [(PDAppletSubcredentialManager *)self createdSharedSubcredentialWithIdentifier:v9 fromSharingInvitationIdentifier:v8];
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

- (BOOL)removeSharingInvitationReceiptWithIdentifiers:(id)a3 onCredential:(id)a4
{
  v6 = a3;
  v21 = a4;
  v7 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialForSharedCredentialWithIdentifier:?];
  v8 = [v7 identifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithCredentialIdentifier:v8];
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
  v12 = v6;
  v23 = v12;
  v24 = self;
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
      v17 = [v7 identifier];
      *buf = 134218754;
      v31 = v14;
      v32 = 2048;
      v33 = v13;
      v34 = 2112;
      v35 = v17;
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
      v18 = [v7 identifier];
      *buf = 138412546;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to remove sharing invitation receipts from credential (%@): %@", buf, 0x16u);
    }
  }

  v19 = v27[3] == v13;

  _Block_object_dispose(&v26, 8);
  return v19;
}

- (BOOL)createdSharedSubcredentialWithIdentifier:(id)a3 fromSharingInvitationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialForSharedCredentialWithIdentifier:v7];
  databaseManager = self->_databaseManager;
  v10 = [v8 identifier];
  v11 = [(PDDatabaseManager *)databaseManager passUniqueIdentifierWithCredentialIdentifier:v10];

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
  v14 = v7;
  v22 = v14;
  v15 = v6;
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

- (void)startVehicleConnectionSessionWithPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v7[2](v7, 0);
    goto LABEL_8;
  }

  v9 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v6];
  v10 = [v9 secureElementPass];

  v11 = [[PDVehicleConnectionSession alloc] initForSecureElementPass:v10 delegate:self];
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  self->_activeVehicleConnectionSession = v11;
  v13 = v11;

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019600C;
  v14[3] = &unk_100840258;
  v15 = v7;
  [(PDVehicleConnectionSession *)v13 startSessionWithCompletion:v14];

LABEL_8:
}

- (void)invalidateVehicleConnectionSessionForIdentifier:(id)a3
{
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  v5 = a3;
  v6 = [(PDVehicleConnectionSession *)activeVehicleConnectionSession sessionIdentifier];
  v7 = [v6 isEqualToString:v5];

  if (v7)
  {
    [(PDVehicleConnectionSession *)self->_activeVehicleConnectionSession endSession];
    v8 = self->_activeVehicleConnectionSession;
    self->_activeVehicleConnectionSession = 0;
  }
}

- (void)sendRKEPassThroughData:(id)a3 forSessionIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
  v11 = a4;
  v12 = [(PDVehicleConnectionSession *)activeVehicleConnectionSession sessionIdentifier];
  v13 = [v12 isEqualToString:v11];

  if (v13)
  {
    v14 = self->_activeVehicleConnectionSession;
    v20 = 0;
    v15 = [(PDVehicleConnectionSession *)v14 sendData:v8 error:&v20];
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

    if (v9)
    {
      v9[2](v9, v15, v16);
    }
  }

  else if (v9)
  {
    v19 = [NSError errorWithDomain:PKPassKitErrorDomain code:2 userInfo:0];
    v9[2](v9, 0, v19);
  }
}

- (void)registerObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)unregisterObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)sessionDidChangeConnectionStatus:(int64_t)a3
{
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001963C8;
  v6[3] = &unk_10084AB98;
  v6[4] = a3;
  [v5 enumerateObjectsUsingBlock:v6];
}

- (void)sessionDidReceiveData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001964EC;
  v7[3] = &unk_10084ABC0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)createRegistrationRequestForCredentialWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialWithIdentifier:v6];
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating background request to register credential: %@", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001966F8;
    v11[3] = &unk_100845300;
    v12 = v6;
    v13 = self;
    v14 = v8;
    v15 = v7;
    [(PDAppletSubcredentialManager *)self credentialsOnDeviceWithCompletion:v11];

    v9 = v12;
  }

  else if (v10)
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to register unknown credential: %@", buf, 0xCu);
  }
}

- (void)_removeBackgroundRegistrationRequestForCredentials:(id)a3 withPaymentWebService:(id)a4
{
  v21 = a3;
  v5 = a4;
  v6 = [v5 backgroundContext];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 remainingTasks];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v20 = 0;
  v10 = *v24;
  v22 = v7;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 unsignedIntegerValue];
        v14 = [v6 backgroundDownloadRecordForTaskIdentifier:v13];
        if ([v14 taskType] == 5)
        {
          v15 = [v14 credentialIdentifier];
          if (v15)
          {
            v16 = [[PKAppletSubcredential alloc] initWithIdentifier:v15];
            v17 = [v21 member:v16];

            if (v17)
            {
              v18 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v28 = v15;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing background registration request for credential with identifier: %@", buf, 0xCu);
              }

              [v6 removeBackgroundDownloadRecordForTaskIdentifier:v13];
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

          v7 = v22;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v9);

  if (v20)
  {
    v7 = [v5 archiver];
    [v7 archiveBackgroundContext:v6];
LABEL_22:
  }
}

- (void)didUpdateCredential:(id)a3 onPassWithIdentifier:(id)a4 oldShares:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v11 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100196F3C;
    v12[3] = &unk_10084AC10;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

- (void)_downloadPassAtURL:(id)a3 credentialIdentifier:(id)a4 share:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = PDOSTransactionCreate("PDAppletSubcredentialManager.pass.download");
  v11 = [(PDDatabaseManager *)self->_databaseManager passUniqueIdentifierWithCredentialIdentifier:v9];
  v12 = [(PDDatabaseManager *)self->_databaseManager passWithUniqueIdentifier:v11];
  v13 = [v12 secureElementPass];

  v14 = [(PDAssertionManager *)self->_assertionManager hasAssertionsOfType:1];
  if (v10)
  {
    v15 = [v10 activationOptions];
    v16 = [v15 containsPinCode];
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
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
    *&buf[4] = v9;
    if (v16)
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
  v24 = v8;
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
  v31 = self;
  v32 = v48;
  v33 = buf;
  v27 = [v23 evaluateWithInput:v25 completion:v29];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(buf, 8);
}

- (void)paymentWebServiceCoordinator:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v12 || v13)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v38 = v11;
      *&v38[8] = 2112;
      *&v38[10] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to register credential (%@) with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = [(PDDatabaseManager *)self->_databaseManager appletSubcredentialWithIdentifier:v11];
    v16 = [(PDDatabaseManager *)self->_databaseManager passSharesForSubcredentialIdentifier:v11];
    v17 = [v16 firstObject];

    if (v17 && !v15)
    {
      v15 = [[PKAppletSubcredential alloc] initWithIdentifier:v11];
    }

    v18 = [v12 passURL];
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v17 identifier];
      v21 = v18;
      v22 = v20;
      v23 = @"Yes";
      *buf = 138412802;
      *v38 = v11;
      *&v38[8] = 2112;
      if (!v21)
      {
        v23 = @"No";
      }

      *&v38[10] = v20;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received credential (%@) registration response. Share: %@ hasPassURL: %@", buf, 0x20u);

      v18 = v21;
    }

    if (v15)
    {
      v33 = v18;
      v24 = [v12 credentialAttestation];
      if (v24)
      {
        v31 = v17;
        v32 = v10;
        v25 = PDOSTransactionCreate("PDAppletSubcredentialManager.register");
        v26 = [v12 vehicleMobilizationEncryptedContainer];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v15 isOnlineImmobilizerToken];
          v28 = @"Yes";
          if (!v26)
          {
            v28 = @"No";
          }

          *buf = 67109378;
          *v38 = v27;
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
        v36 = v11;
        v30 = v25;
        [(PKDAManager *)daManager updateTrackingAttestation:v24 forCredential:v15 encryptedContainer:v26 completion:v34];

        v17 = v31;
        v10 = v32;
      }

      else
      {
        v26 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = v11;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Credential (%@) registration response missing attestation", buf, 0xCu);
          v26 = v19;
        }
      }

      v18 = v33;
      if (v33)
      {
        [(PDAppletSubcredentialManager *)self _downloadPassAtURL:v33 credentialIdentifier:v11 share:v17];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = v11;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No pass to download after credential (%@) registration!", buf, 0xCu);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v38 = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unable to register credential (%@): credential no longer exists", buf, 0xCu);
      }

      v24 = v19;
    }
  }
}

- (void)updateSubcredentialsForBluetoothPowerChange
{
  v3 = [(PDCarKeyRequirementsChecker *)self->_carKeyRequirementsChecker deviceSupportsCredentials]&& [(PKBluetoothMonitorer *)self->_bluetoothMonitorer state]== 5;

  [(PDAppletSubcredentialManager *)self _updateSubcredentialsForBTEnabled:v3];
}

- (void)_updateSubcredentialsForBTEnabled:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100198904;
  v3[3] = &unk_10084AD70;
  v4 = a3;
  [(PDAppletSubcredentialManager *)self _updateSubcredentialsWithRangingSuspensionReason:v3];
}

- (void)_updateSubcredentialsWithRangingSuspensionReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  databaseManager = self->_databaseManager;
  v7 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100198A0C;
  v9[3] = &unk_10084ADC0;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [(PDDatabaseManager *)databaseManager updateRangingSuspensionReasonForCredentialsWithSecureElementIdentifiers:v7 usingUpdater:v4 withHandler:v9];
}

- (void)bluetoothMonitorerRecievedUpdatedBluetoothState:(int64_t)a3
{
  if ((a3 - 2) <= 3)
  {
    [(PDAppletSubcredentialManager *)self _updateSubcredentialsForBTEnabled:(8u >> ((a3 - 2) & 0xF)) & 1];
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

- (void)rangingDidSuspendWithReasons:(unint64_t)a3
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDAppletSubcredentialManager: Ranging suspended for reasons (%lu)", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100198CEC;
  v6[3] = &unk_10084AE20;
  v6[4] = a3;
  [(PDAppletSubcredentialManager *)self _updateSubcredentialsWithRangingSuspensionReason:v6];
}

- (void)assertionManager:(id)a3 didInvalidateAssertion:(id)a4
{
  if ([a4 type] == 8)
  {
    [(PDVehicleConnectionSession *)self->_activeVehicleConnectionSession endSession];
    activeVehicleConnectionSession = self->_activeVehicleConnectionSession;
    self->_activeVehicleConnectionSession = 0;
  }
}

@end