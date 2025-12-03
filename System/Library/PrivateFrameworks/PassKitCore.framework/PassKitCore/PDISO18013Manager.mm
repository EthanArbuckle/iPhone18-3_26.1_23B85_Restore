@interface PDISO18013Manager
- (PDISO18013Manager)initWithSecureElement:(id)element userNotificationManager:(id)manager databaseManager:(id)databaseManager;
- (void)_elementsChanged:(id)changed forPass:(id)pass;
- (void)_getAllCredentialIdsWithCompletion:(id)completion;
- (void)_handleIdentityTokenCleanupIfNeededForPass:(id)pass;
- (void)_handleIdentityTokenCleanupIfNeededForPassID:(id)d;
- (void)_identityPassCredentialPropertiesForPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)_isoCredentialIdentifierForSubCredentialId:(id)id cardType:(int64_t)type store:(id)store completion:(id)completion;
- (void)_performOperationOnCredentials:(id)credentials operation:(id)operation completion:(id)completion;
- (void)_updateCredentialsForCredentialIds:(id)ids toState:(unint64_t)state completion:(id)completion;
- (void)_updateISO18013Blob:(id)blob metadata:(id)metadata paymentApplication:(id)application subcredential:(id)subcredential paymentPass:(id)pass store:(id)store priorSubcredentialIdentifiers:(id)identifiers cardType:(int64_t)self0 completion:(id)self1;
- (void)accessCredentialStoreWithHandler:(id)handler;
- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion;
- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion;
- (void)allCredentialsWithCompletion:(id)completion;
- (void)biometricResetAffectedPassesFrom:(id)from completion:(id)completion;
- (void)createISOBiometricBindingWithCompletion:(id)completion;
- (void)createISOCredentialIdentifierForIdentityPartitionWithCompletion:(id)completion;
- (void)deleteSubCredentialIdentifiers:(id)identifiers cardType:(int64_t)type completion:(id)completion;
- (void)generateAccountKeyAuthorizationForSubcredentialID:(id)d cardType:(int64_t)type accountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion;
- (void)generateISOEncryptionKeyForCardType:(int64_t)type subCredentialId:(id)id attestationType:(int64_t)attestationType completion:(id)completion;
- (void)generateKeySigningKeyForCardType:(int64_t)type subCredentialId:(id)id completion:(id)completion;
- (void)generatePresentmentKeyForCardType:(int64_t)type numberOfKeys:(int64_t)keys subCredentialId:(id)id completion:(id)completion;
- (void)handlePIITokenCleanupIfNeeded;
- (void)handlePaymentPassUpdateFrom:(id)from priorPaymentApplications:(id)applications completion:(id)completion;
- (void)identityPassCacheCredentialsForPassAddedOrUpdated:(id)updated;
- (void)identityPassDeleteCredentialFromCacheWithPassUniqueID:(id)d;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)needsPresentmentKeyRefreshForPass:(id)pass numberOfKeys:(int64_t)keys subCredentialId:(id)id completion:(id)completion;
- (void)passWillBeRemoved:(id)removed;
- (void)processPendingISO18013CredentialsWithIdentityPassCredentialProperties;
@end

@implementation PDISO18013Manager

- (PDISO18013Manager)initWithSecureElement:(id)element userNotificationManager:(id)manager databaseManager:(id)databaseManager
{
  elementCopy = element;
  managerCopy = manager;
  databaseManagerCopy = databaseManager;
  v15.receiver = self;
  v15.super_class = PDISO18013Manager;
  v12 = [(PDISO18013Manager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_secureElement, element);
    objc_storeStrong(&v13->_userNotificationManager, manager);
    objc_storeStrong(&v13->_databaseManager, databaseManager);
  }

  return v13;
}

- (void)identityPassDeleteCredentialFromCacheWithPassUniqueID:(id)d
{
  dCopy = d;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting identity credential cache for pass with unique ID %@", &v6, 0xCu);
  }

  [(PDDatabaseManager *)self->_databaseManager identityPassDeleteCredentialFromCacheWithPassUniqueID:dCopy];
}

- (void)identityPassCacheCredentialsForPassAddedOrUpdated:(id)updated
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2CE8;
  v3[3] = &unk_10083DAE0;
  v3[4] = self;
  [(PDISO18013Manager *)self _identityPassCredentialPropertiesForPassUniqueIdentifier:updated completion:v3];
}

- (void)_identityPassCredentialPropertiesForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100005BC0;
  v14[4] = sub_10000B1EC;
  v15 = objc_alloc_init(NSMutableArray);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A2F20;
  v10[3] = &unk_10084B398;
  v10[4] = self;
  v8 = identifierCopy;
  v11 = v8;
  v13 = v14;
  v9 = completionCopy;
  v12 = v9;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];

  _Block_object_dispose(v14, 8);
}

- (void)processPendingISO18013CredentialsWithIdentityPassCredentialProperties
{
  identityPassCredentialPropertiesForIdentityPasses = [(PDDatabaseManager *)self->_databaseManager identityPassCredentialPropertiesForIdentityPasses];
  if ([identityPassCredentialPropertiesForIdentityPasses count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001A344C;
    v4[3] = &unk_10084B3E8;
    v5 = identityPassCredentialPropertiesForIdentityPasses;
    selfCopy = self;
    [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v4];
  }
}

- (void)handlePaymentPassUpdateFrom:(id)from priorPaymentApplications:(id)applications completion:(id)completion
{
  fromCopy = from;
  applicationsCopy = applications;
  completionCopy = completion;
  selfCopy = self;
  secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v70 = fromCopy;
  cardType = [fromCopy cardType];
  v78 = objc_alloc_init(NSMutableSet);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = applicationsCopy;
  v11 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v115;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v115 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v114 + 1) + 8 * i);
        secureElementIdentifier = [v15 secureElementIdentifier];
        if ([secureElementIdentifiers containsObject:secureElementIdentifier])
        {
          v17 = [v15 paymentType] - 1002;

          if (v17 > 3)
          {
            continue;
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          secureElementIdentifier = [v15 subcredentials];
          v18 = [secureElementIdentifier countByEnumeratingWithState:&v110 objects:v125 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v111;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v111 != v20)
                {
                  objc_enumerationMutation(secureElementIdentifier);
                }

                identifier = [*(*(&v110 + 1) + 8 * j) identifier];
                [v78 addObject:identifier];
              }

              v19 = [secureElementIdentifier countByEnumeratingWithState:&v110 objects:v125 count:16];
            }

            while (v19);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
    }

    while (v12);
  }

  v80 = objc_alloc_init(NSMutableSet);
  v79 = objc_alloc_init(NSMutableSet);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  devicePaymentApplications = [v70 devicePaymentApplications];
  v23 = [devicePaymentApplications countByEnumeratingWithState:&v106 objects:v124 count:16];
  v71 = secureElementIdentifiers;
  if (v23)
  {
    v24 = v23;
    v25 = *v107;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v107 != v25)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v27 = *(*(&v106 + 1) + 8 * k);
        if ([v27 paymentType] - 1002 <= 3)
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          subcredentials = [v27 subcredentials];
          v29 = [subcredentials countByEnumeratingWithState:&v102 objects:v123 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v103;
            do
            {
              for (m = 0; m != v30; m = m + 1)
              {
                if (*v103 != v31)
                {
                  objc_enumerationMutation(subcredentials);
                }

                v33 = *(*(&v102 + 1) + 8 * m);
                identifier2 = [v33 identifier];
                [v80 addObject:identifier2];

                v122[0] = v27;
                v122[1] = v33;
                v35 = [NSArray arrayWithObjects:v122 count:2];
                [v79 addObject:v35];
              }

              v30 = [subcredentials countByEnumeratingWithState:&v102 objects:v123 count:16];
            }

            while (v30);
          }

          secureElementIdentifiers = v71;
        }
      }

      v24 = [devicePaymentApplications countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v24);
  }

  v36 = [v70 credentialsAndISO18013BlobsForSecureElementIdentifiers:secureElementIdentifiers];
  v65 = [v70 iso18013BlobsMetdataForSecureElementIdentifiers:secureElementIdentifiers];
  v37 = objc_alloc_init(NSMutableDictionary);
  v66 = objc_alloc_init(NSMutableDictionary);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v75 = v36;
  v74 = [v75 countByEnumeratingWithState:&v98 objects:v121 count:16];
  if (v74)
  {
    v73 = *v99;
    do
    {
      v38 = 0;
      do
      {
        if (*v99 != v73)
        {
          objc_enumerationMutation(v75);
        }

        v77 = v38;
        v39 = *(*(&v98 + 1) + 8 * v38);
        v40 = [v75 objectForKey:v39];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v41 = [v40 countByEnumeratingWithState:&v94 objects:v120 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v95;
          do
          {
            for (n = 0; n != v42; n = n + 1)
            {
              if (*v95 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v94 + 1) + 8 * n);
              v46 = [v40 objectForKey:v45];
              applicationIdentifier = [v39 applicationIdentifier];
              v119[0] = applicationIdentifier;
              identifier3 = [v45 identifier];
              v119[1] = identifier3;
              v49 = [NSArray arrayWithObjects:v119 count:2];
              [v37 setObject:v46 forKey:v49];
            }

            v42 = [v40 countByEnumeratingWithState:&v94 objects:v120 count:16];
          }

          while (v42);
        }

        v38 = v77 + 1;
      }

      while (v77 + 1 != v74);
      v74 = [v75 countByEnumeratingWithState:&v98 objects:v121 count:16];
    }

    while (v74);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v50 = v65;
  v51 = [v50 countByEnumeratingWithState:&v90 objects:v118 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v91;
    do
    {
      for (ii = 0; ii != v52; ii = ii + 1)
      {
        if (*v91 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v90 + 1) + 8 * ii);
        v56 = [v50 objectForKey:v55];
        identifier4 = [v55 identifier];
        [v66 setObject:v56 forKey:identifier4];
      }

      v52 = [v50 countByEnumeratingWithState:&v90 objects:v118 count:16];
    }

    while (v52);
  }

  v58 = [v78 mutableCopy];
  [v58 minusSet:v80];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1001A3E74;
  v81[3] = &unk_10084B4D8;
  v82 = v79;
  v83 = v37;
  v84 = v78;
  v85 = v66;
  v86 = selfCopy;
  v87 = v70;
  v88 = completionCopy;
  v89 = cardType;
  v59 = completionCopy;
  v60 = v70;
  v61 = v66;
  v62 = v78;
  v63 = v37;
  v64 = v79;
  [(PDISO18013Manager *)selfCopy accessCredentialStoreWithHandler:v81];
  [(PDISO18013Manager *)selfCopy deleteSubCredentialIdentifiers:v58 cardType:cardType completion:0];
}

- (void)deleteSubCredentialIdentifiers:(id)identifiers cardType:(int64_t)type completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    v10 = objc_alloc_init(NSMutableArray);
    allObjects = [identifiersCopy allObjects];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A497C;
    v16[3] = &unk_10084B528;
    v16[4] = self;
    typeCopy = type;
    v17 = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001A4A9C;
    v13[3] = &unk_10084B550;
    v13[4] = self;
    v14 = v17;
    v15 = completionCopy;
    v12 = v17;
    [(PDISO18013Manager *)self _performOperationOnCredentials:allObjects operation:v16 completion:v13];
  }
}

- (void)_handleIdentityTokenCleanupIfNeededForPassID:(id)d
{
  dCopy = d;
  v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:dCopy];
  anyObject = [v5 anyObject];
  if (anyObject)
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager primarySubcredentialIdentifiersForPassUniqueIdentifier:dCopy];
    v8 = v7;
    if (v7 && [v7 count])
    {
      v9 = [(PDDatabaseManager *)self->_databaseManager primaryAccountIdentifierForTransactionSourceIdentifier:anyObject];
      v10 = PKLogFacilityTypeGetObject();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          *buf = 138412290;
          v17 = dCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting cleanup of the assiciated PII token as the deleted pass %@ relies on one", buf, 0xCu);
        }

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001A4D4C;
        v12[3] = &unk_10084B5A0;
        v13 = dCopy;
        v14 = v8;
        v15 = v9;
        [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v12];

        v10 = v13;
      }

      else if (v11)
      {
        *buf = 138412290;
        v17 = dCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because primary account identifier is nil for pass %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = dCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because subcredential identifiers do not exist for pass %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because transaction source identifier is nil for pass %@", buf, 0xCu);
    }
  }
}

- (void)_handleIdentityTokenCleanupIfNeededForPass:(id)pass
{
  passCopy = pass;
  v5 = passCopy;
  if (passCopy && [passCopy identityType] == 5)
  {
    uniqueID = [v5 uniqueID];
    devicePrimaryPaymentApplication = [v5 devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];

    identifier = [anyObject identifier];
    v11 = PKLogFacilityTypeGetObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (identifier)
    {
      if (v12)
      {
        *buf = 138412290;
        v19 = uniqueID;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting cleanup of the assiciated PII token as the deleted pass %@ relies on one", buf, 0xCu);
      }

      primaryAccountIdentifier = [v5 primaryAccountIdentifier];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001A53A8;
      v14[3] = &unk_10084B5A0;
      v15 = uniqueID;
      v16 = primaryAccountIdentifier;
      v17 = identifier;
      v11 = primaryAccountIdentifier;
      [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v14];
    }

    else if (v12)
    {
      *buf = 138412546;
      v19 = anyObject;
      v20 = 2112;
      v21 = uniqueID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because subcredential %@ lacks an identifier for pass %@", buf, 0x16u);
    }
  }
}

- (void)passWillBeRemoved:(id)removed
{
  removedCopy = removed;
  if ([removedCopy isIdentityPass])
  {
    [(PDISO18013Manager *)self _handleIdentityTokenCleanupIfNeededForPass:removedCopy];
    uniqueID = [removedCopy uniqueID];
    [(PDISO18013Manager *)self identityPassDeleteCredentialFromCacheWithPassUniqueID:uniqueID];
  }

  selfCopy = self;
  v6 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = removedCopy;
  devicePaymentApplications = [removedCopy devicePaymentApplications];
  v8 = [devicePaymentApplications countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 paymentType] - 1002 <= 3)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          subcredentials = [v12 subcredentials];
          v14 = [subcredentials countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(subcredentials);
                }

                identifier = [*(*(&v21 + 1) + 8 * j) identifier];
                [v6 addObject:identifier];
              }

              v15 = [subcredentials countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }
        }
      }

      v9 = [devicePaymentApplications countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  -[PDISO18013Manager deleteSubCredentialIdentifiers:cardType:completion:](selfCopy, "deleteSubCredentialIdentifiers:cardType:completion:", v6, [v20 cardType], 0);
}

- (void)addISO18013BlobsFromCredentials:(id)credentials cardType:(int64_t)type completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A5A34;
  v10[3] = &unk_10084B618;
  credentialsCopy = credentials;
  selfCopy = self;
  completionCopy = completion;
  typeCopy = type;
  v8 = completionCopy;
  v9 = credentialsCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];
}

- (void)addISO18013Blobs:(id)blobs cardType:(int64_t)type completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A6094;
  v10[3] = &unk_10084B618;
  blobsCopy = blobs;
  selfCopy = self;
  completionCopy = completion;
  typeCopy = type;
  v8 = completionCopy;
  v9 = blobsCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];
}

- (void)accessCredentialStoreWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockStorage);
    isoStorage = self->_isoStorage;
    ++self->_storageUseCounter;
    if (!isoStorage)
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:3];
      [v6 addObject:PKISO18013CredentialStoragePartitionIdentity];
      [v6 addObject:PKISO18013CredentialStoragePartitionUnifiedAccess];
      v7 = [DCCredentialStore alloc];
      v8 = [v6 copy];
      v9 = [v7 initWithPartitions:v8];
      v10 = self->_isoStorage;
      self->_isoStorage = v9;
    }

    os_unfair_lock_unlock(&self->_lockStorage);
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A6700;
    v12[3] = &unk_100849FD8;
    v12[4] = self;
    v12[5] = v13;
    v11 = objc_retainBlock(v12);
    handlerCopy[2](handlerCopy, self->_isoStorage, v11);

    _Block_object_dispose(v13, 8);
  }
}

- (void)_isoCredentialIdentifierForSubCredentialId:(id)id cardType:(int64_t)type store:(id)store completion:(id)completion
{
  idCopy = id;
  storeCopy = store;
  completionCopy = completion;
  if (type == 4)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = idCopy;
      v22 = 2112;
      v23 = idCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ISO credential identifier %@ found for identity subCredentialId %@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, idCopy);
  }

  else
  {
    pk_decodeHexadecimal = [idCopy pk_decodeHexadecimal];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A6994;
    v15[3] = &unk_10084B690;
    v16 = idCopy;
    v19 = completionCopy;
    v17 = storeCopy;
    v18 = pk_decodeHexadecimal;
    v14 = pk_decodeHexadecimal;
    [v17 credentialIdentifierForPublicKeyIdentifier:v14 completion:v15];
  }
}

- (void)createISOCredentialIdentifierForIdentityPartitionWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6ED0;
  v5[3] = &unk_10084B6E0;
  completionCopy = completion;
  v4 = completionCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v5];
}

- (void)createISOBiometricBindingWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(DCBiometricStore);
  v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100005BC0;
  v28[4] = sub_10000B1EC;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100005BC0;
  v26[4] = sub_10000B1EC;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100005BC0;
  v24[4] = sub_10000B1EC;
  v25 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A7428;
  v20[3] = &unk_100844D98;
  v6 = v4;
  v21 = v6;
  v22 = v24;
  v23 = v28;
  [v5 addOperation:v20];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001A75DC;
  v16[3] = &unk_100844D98;
  v7 = v6;
  v17 = v7;
  v18 = v24;
  v19 = v26;
  [v5 addOperation:v16];
  v8 = +[NSNull null];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A77A8;
  v11[3] = &unk_10084B730;
  v13 = v24;
  v9 = completionCopy;
  v12 = v9;
  v14 = v28;
  v15 = v26;
  v10 = [v5 evaluateWithInput:v8 completion:v11];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
}

- (void)_updateISO18013Blob:(id)blob metadata:(id)metadata paymentApplication:(id)application subcredential:(id)subcredential paymentPass:(id)pass store:(id)store priorSubcredentialIdentifiers:(id)identifiers cardType:(int64_t)self0 completion:(id)self1
{
  blobCopy = blob;
  metadataCopy = metadata;
  applicationCopy = application;
  subcredentialCopy = subcredential;
  passCopy = pass;
  storeCopy = store;
  identifiersCopy = identifiers;
  completionCopy = completion;
  identifier = [subcredentialCopy identifier];
  paymentType = [applicationCopy paymentType];
  paymentNetworkIdentifier = [applicationCopy paymentNetworkIdentifier];
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x3032000000;
  v92[3] = sub_100005BC0;
  v92[4] = sub_10000B1EC;
  v93 = 0;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v44 = applicationCopy;
  v46 = paymentType;
  if ([passCopy isIdentityPass])
  {
    v26 = [identifiersCopy containsObject:identifier];
    if (metadataCopy)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = paymentNetworkIdentifier;
  v45 = completionCopy;
  v43 = identifiersCopy;
  v91 = v27;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = sub_100005BC0;
  v88[4] = sub_10000B1EC;
  v89 = 0;
  v29 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = sub_100005BC0;
  v86[4] = sub_10000B1EC;
  v87 = 0;
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1001A7E00;
  v81[3] = &unk_10084B780;
  v81[4] = self;
  v81[5] = identifier;
  typeCopy = type;
  v30 = storeCopy;
  v82 = v30;
  v83 = v86;
  v84 = v92;
  [v29 addOperation:v81];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_1001A7F98;
  v77[3] = &unk_100844D98;
  v31 = v30;
  v78 = v31;
  v79 = v86;
  v80 = v88;
  [v29 addOperation:v77];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001A80D8;
  v70[3] = &unk_10084B7F8;
  v32 = v31;
  v71 = v32;
  v75 = v86;
  v33 = blobCopy;
  v72 = v33;
  v34 = subcredentialCopy;
  v76 = v92;
  v73 = v34;
  v74 = identifier;
  [v29 addOperation:v70];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1001A84A8;
  v66[3] = &unk_10083EAD8;
  v35 = v32;
  v67 = v35;
  v69 = v86;
  v36 = v34;
  v68 = v36;
  [v29 addOperation:v66];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001A869C;
  v57[3] = &unk_10084B848;
  v61 = v90;
  v64 = v28;
  v65 = v46;
  v37 = v35;
  v63 = v88;
  v58 = v37;
  selfCopy = self;
  v62 = v86;
  v60 = identifier;
  [v29 addOperation:v57];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1001A8B4C;
  v52[3] = &unk_10084B870;
  v56 = v90;
  v38 = metadataCopy;
  v53 = v38;
  selfCopy2 = self;
  v39 = passCopy;
  v55 = v39;
  [v29 addOperation:v52];
  v40 = +[NSNull null];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1001A8D84;
  v49[3] = &unk_10083C8E8;
  v41 = v45;
  v50 = v41;
  v51 = v92;
  v42 = [v29 evaluateWithInput:v40 completion:v49];

  _Block_object_dispose(v86, 8);
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(v90, 8);
  _Block_object_dispose(v92, 8);
}

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)id completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A8E64;
  v8[3] = &unk_10084B910;
  idCopy = id;
  completionCopy = completion;
  v8[4] = self;
  v6 = idCopy;
  v7 = completionCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v8];
}

- (void)generateISOEncryptionKeyForCardType:(int64_t)type subCredentialId:(id)id attestationType:(int64_t)attestationType completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A93C4;
  v11[3] = &unk_10084B988;
  selfCopy = self;
  idCopy = id;
  typeCopy = type;
  attestationTypeCopy = attestationType;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = idCopy;
  [(PDISO18013Manager *)selfCopy accessCredentialStoreWithHandler:v11];
}

- (void)generateKeySigningKeyForCardType:(int64_t)type subCredentialId:(id)id completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A9740;
  v9[3] = &unk_10084B618;
  selfCopy = self;
  idCopy = id;
  completionCopy = completion;
  typeCopy = type;
  v7 = completionCopy;
  v8 = idCopy;
  [(PDISO18013Manager *)selfCopy accessCredentialStoreWithHandler:v9];
}

- (void)generatePresentmentKeyForCardType:(int64_t)type numberOfKeys:(int64_t)keys subCredentialId:(id)id completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A9AB4;
  v11[3] = &unk_10084B988;
  selfCopy = self;
  idCopy = id;
  typeCopy = type;
  keysCopy = keys;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = idCopy;
  [(PDISO18013Manager *)selfCopy accessCredentialStoreWithHandler:v11];
}

- (void)needsPresentmentKeyRefreshForPass:(id)pass numberOfKeys:(int64_t)keys subCredentialId:(id)id completion:(id)completion
{
  passCopy = pass;
  idCopy = id;
  completionCopy = completion;
  if (keys > 1)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001A9EA8;
    v14[3] = &unk_10084BA28;
    v15 = idCopy;
    v16 = completionCopy;
    [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v14];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "needsPresentmentKeyRefreshForPass not refreshing because numberOfKeys < 2", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)biometricResetAffectedPassesFrom:(id)from completion:(id)completion
{
  fromCopy = from;
  completionCopy = completion;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AA190;
  v11[3] = &unk_10084BAA0;
  v12 = fromCopy;
  v13 = objc_alloc_init(NSMutableSet);
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = v13;
  v10 = fromCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v11];
}

- (void)_elementsChanged:(id)changed forPass:(id)pass
{
  changedCopy = changed;
  passCopy = pass;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001AAD98;
  v45[3] = &unk_10084BAC8;
  v45[4] = &v46;
  v45[5] = &v50;
  v6 = objc_retainBlock(v45);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = changedCopy;
  v33 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (v33)
  {
    v32 = *v42;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [obj objectForKey:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v8 = v35;
            v9 = [v8 countByEnumeratingWithState:&v37 objects:v58 count:16];
            if (v9)
            {
              v10 = *v38;
              do
              {
                for (j = 0; j != v9; j = j + 1)
                {
                  if (*v38 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = *(*(&v37 + 1) + 8 * j);
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v14 = PKLogFacilityTypeGetObject();
                  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
                  if (isKindOfClass)
                  {
                    if (v15)
                    {
                      *buf = 138412546;
                      v55 = v7;
                      v56 = 2112;
                      v57 = v12;
                      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Element has changed %@ - %@", buf, 0x16u);
                    }

                    v16 = PKISO_CategoryFromField();
                    (v6[2])(v6, v16);
                  }

                  else
                  {
                    if (v15)
                    {
                      *buf = 138412290;
                      v55 = v12;
                      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Element identifier is not a string: %@", buf, 0xCu);
                    }
                  }
                }

                v9 = [v8 countByEnumeratingWithState:&v37 objects:v58 count:16];
              }

              while (v9);
            }
          }

          else
          {
            v8 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v35;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Namespace does not contain an array: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v17 = PKLogFacilityTypeGetObject();
          v35 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v7;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Namespace is not a string: %@", buf, 0xCu);
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v33);
  }

  identityType = [passCopy identityType];
  if (*(v51 + 24) == 1)
  {
    v19 = @"NOTIFICATION_DL_INFO_CHANGE";
    v20 = @"NOTIFICATION_STATE_ID_INFO_CHANGE";
  }

  else
  {
    v29 = v47[3];
    switch(v29)
    {
      case 1:
        v19 = @"NOTIFICATION_DL_PERSONAL_INFO_CHANGE";
        v20 = @"NOTIFICATION_STATE_ID_PERSONAL_INFO_CHANGE";
        break;
      case 3:
        if (identityType == 2)
        {
          goto LABEL_37;
        }

        v21 = @"NOTIFICATION_DL_DRIVING_INFO_CHANGE";
        goto LABEL_35;
      case 2:
        v19 = @"NOTIFICATION_DL_ID_INFO_CHANGE";
        v20 = @"NOTIFICATION_STATE_ID_ID_INFO_CHANGE";
        break;
      default:
        goto LABEL_37;
    }
  }

  if (identityType == 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

LABEL_35:
  v22 = PKLocalizedIdentityString(&v21->isa);
  if (v22)
  {
    v23 = [PDISO18013UpdateUserNotification alloc];
    uniqueID = [passCopy uniqueID];
    v25 = [(PDISO18013UpdateUserNotification *)v23 initWithMessage:v22 forPassUniqueIdentifier:uniqueID];

    v26 = [NSString alloc];
    uniqueID2 = [passCopy uniqueID];
    v28 = [v26 initWithFormat:@"%@-iso18013", uniqueID2];
    [(PDUserNotification *)v25 setNotificationIdentifier:v28];

    [(PDUserNotification *)v25 setReissueBannerOnUpdate:1];
    [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v25];
  }

LABEL_37:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

- (void)allCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001AAF78;
    v6[3] = &unk_100842780;
    v6[4] = self;
    v7 = completionCopy;
    [(PDISO18013Manager *)self _getAllCredentialIdsWithCompletion:v6];
  }
}

- (void)_updateCredentialsForCredentialIds:(id)ids toState:(unint64_t)state completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AB810;
  v5[3] = &unk_10084BBA0;
  v5[4] = state;
  [(PDISO18013Manager *)self _performOperationOnCredentials:ids operation:v5 completion:completion];
}

- (void)_performOperationOnCredentials:(id)credentials operation:(id)operation completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001ABB4C;
  v11[3] = &unk_10084BC18;
  credentialsCopy = credentials;
  operationCopy = operation;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = operationCopy;
  v10 = credentialsCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v11];
}

- (void)_getAllCredentialIdsWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AC09C;
  v5[3] = &unk_10084B6E0;
  completionCopy = completion;
  v4 = completionCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v5];
}

- (void)generateAccountKeyAuthorizationForSubcredentialID:(id)d cardType:(int64_t)type accountKeyIdentifier:(id)identifier completion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AC380;
  v15[3] = &unk_10084BCB8;
  v15[4] = self;
  v16 = dCopy;
  completionCopy = completion;
  typeCopy = type;
  v17 = identifierCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = dCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v15];
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AC820;
  v8[3] = &unk_10084BA28;
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = identifierCopy;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v8];
}

- (void)handlePIITokenCleanupIfNeeded
{
  databaseManager = self->_databaseManager;
  v4 = [[NSSet alloc] initWithObjects:{&off_1008A2FD8, 0}];
  v5 = [(PDDatabaseManager *)databaseManager identityPassUniqueIDsOfTypes:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDISO18013Manager *)self _handleIdentityTokenCleanupIfNeededForPassID:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end