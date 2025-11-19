@interface PDISO18013Manager
- (PDISO18013Manager)initWithSecureElement:(id)a3 userNotificationManager:(id)a4 databaseManager:(id)a5;
- (void)_elementsChanged:(id)a3 forPass:(id)a4;
- (void)_getAllCredentialIdsWithCompletion:(id)a3;
- (void)_handleIdentityTokenCleanupIfNeededForPass:(id)a3;
- (void)_handleIdentityTokenCleanupIfNeededForPassID:(id)a3;
- (void)_identityPassCredentialPropertiesForPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)_isoCredentialIdentifierForSubCredentialId:(id)a3 cardType:(int64_t)a4 store:(id)a5 completion:(id)a6;
- (void)_performOperationOnCredentials:(id)a3 operation:(id)a4 completion:(id)a5;
- (void)_updateCredentialsForCredentialIds:(id)a3 toState:(unint64_t)a4 completion:(id)a5;
- (void)_updateISO18013Blob:(id)a3 metadata:(id)a4 paymentApplication:(id)a5 subcredential:(id)a6 paymentPass:(id)a7 store:(id)a8 priorSubcredentialIdentifiers:(id)a9 cardType:(int64_t)a10 completion:(id)a11;
- (void)accessCredentialStoreWithHandler:(id)a3;
- (void)addISO18013Blobs:(id)a3 cardType:(int64_t)a4 completion:(id)a5;
- (void)addISO18013BlobsFromCredentials:(id)a3 cardType:(int64_t)a4 completion:(id)a5;
- (void)allCredentialsWithCompletion:(id)a3;
- (void)biometricResetAffectedPassesFrom:(id)a3 completion:(id)a4;
- (void)createISOBiometricBindingWithCompletion:(id)a3;
- (void)createISOCredentialIdentifierForIdentityPartitionWithCompletion:(id)a3;
- (void)deleteSubCredentialIdentifiers:(id)a3 cardType:(int64_t)a4 completion:(id)a5;
- (void)generateAccountKeyAuthorizationForSubcredentialID:(id)a3 cardType:(int64_t)a4 accountKeyIdentifier:(id)a5 completion:(id)a6;
- (void)generateISOEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4;
- (void)generateISOEncryptionKeyForCardType:(int64_t)a3 subCredentialId:(id)a4 attestationType:(int64_t)a5 completion:(id)a6;
- (void)generateKeySigningKeyForCardType:(int64_t)a3 subCredentialId:(id)a4 completion:(id)a5;
- (void)generatePresentmentKeyForCardType:(int64_t)a3 numberOfKeys:(int64_t)a4 subCredentialId:(id)a5 completion:(id)a6;
- (void)handlePIITokenCleanupIfNeeded;
- (void)handlePaymentPassUpdateFrom:(id)a3 priorPaymentApplications:(id)a4 completion:(id)a5;
- (void)identityPassCacheCredentialsForPassAddedOrUpdated:(id)a3;
- (void)identityPassDeleteCredentialFromCacheWithPassUniqueID:(id)a3;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)a3 completion:(id)a4;
- (void)needsPresentmentKeyRefreshForPass:(id)a3 numberOfKeys:(int64_t)a4 subCredentialId:(id)a5 completion:(id)a6;
- (void)passWillBeRemoved:(id)a3;
- (void)processPendingISO18013CredentialsWithIdentityPassCredentialProperties;
@end

@implementation PDISO18013Manager

- (PDISO18013Manager)initWithSecureElement:(id)a3 userNotificationManager:(id)a4 databaseManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PDISO18013Manager;
  v12 = [(PDISO18013Manager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_secureElement, a3);
    objc_storeStrong(&v13->_userNotificationManager, a4);
    objc_storeStrong(&v13->_databaseManager, a5);
  }

  return v13;
}

- (void)identityPassDeleteCredentialFromCacheWithPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting identity credential cache for pass with unique ID %@", &v6, 0xCu);
  }

  [(PDDatabaseManager *)self->_databaseManager identityPassDeleteCredentialFromCacheWithPassUniqueID:v4];
}

- (void)identityPassCacheCredentialsForPassAddedOrUpdated:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2CE8;
  v3[3] = &unk_10083DAE0;
  v3[4] = self;
  [(PDISO18013Manager *)self _identityPassCredentialPropertiesForPassUniqueIdentifier:a3 completion:v3];
}

- (void)_identityPassCredentialPropertiesForPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v11 = v8;
  v13 = v14;
  v9 = v7;
  v12 = v9;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];

  _Block_object_dispose(v14, 8);
}

- (void)processPendingISO18013CredentialsWithIdentityPassCredentialProperties
{
  v3 = [(PDDatabaseManager *)self->_databaseManager identityPassCredentialPropertiesForIdentityPasses];
  if ([v3 count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001A344C;
    v4[3] = &unk_10084B3E8;
    v5 = v3;
    v6 = self;
    [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v4];
  }
}

- (void)handlePaymentPassUpdateFrom:(id)a3 priorPaymentApplications:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v67 = a5;
  v69 = self;
  v10 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
  v70 = v8;
  v68 = [v8 cardType];
  v78 = objc_alloc_init(NSMutableSet);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v9;
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
        v16 = [v15 secureElementIdentifier];
        if ([v10 containsObject:v16])
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
          v16 = [v15 subcredentials];
          v18 = [v16 countByEnumeratingWithState:&v110 objects:v125 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v22 = [*(*(&v110 + 1) + 8 * j) identifier];
                [v78 addObject:v22];
              }

              v19 = [v16 countByEnumeratingWithState:&v110 objects:v125 count:16];
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
  v76 = [v70 devicePaymentApplications];
  v23 = [v76 countByEnumeratingWithState:&v106 objects:v124 count:16];
  v71 = v10;
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
          objc_enumerationMutation(v76);
        }

        v27 = *(*(&v106 + 1) + 8 * k);
        if ([v27 paymentType] - 1002 <= 3)
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v28 = [v27 subcredentials];
          v29 = [v28 countByEnumeratingWithState:&v102 objects:v123 count:16];
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
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v102 + 1) + 8 * m);
                v34 = [v33 identifier];
                [v80 addObject:v34];

                v122[0] = v27;
                v122[1] = v33;
                v35 = [NSArray arrayWithObjects:v122 count:2];
                [v79 addObject:v35];
              }

              v30 = [v28 countByEnumeratingWithState:&v102 objects:v123 count:16];
            }

            while (v30);
          }

          v10 = v71;
        }
      }

      v24 = [v76 countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v24);
  }

  v36 = [v70 credentialsAndISO18013BlobsForSecureElementIdentifiers:v10];
  v65 = [v70 iso18013BlobsMetdataForSecureElementIdentifiers:v10];
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
              v47 = [v39 applicationIdentifier];
              v119[0] = v47;
              v48 = [v45 identifier];
              v119[1] = v48;
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
        v57 = [v55 identifier];
        [v66 setObject:v56 forKey:v57];
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
  v86 = v69;
  v87 = v70;
  v88 = v67;
  v89 = v68;
  v59 = v67;
  v60 = v70;
  v61 = v66;
  v62 = v78;
  v63 = v37;
  v64 = v79;
  [(PDISO18013Manager *)v69 accessCredentialStoreWithHandler:v81];
  [(PDISO18013Manager *)v69 deleteSubCredentialIdentifiers:v58 cardType:v68 completion:0];
}

- (void)deleteSubCredentialIdentifiers:(id)a3 cardType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [v8 allObjects];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A497C;
    v16[3] = &unk_10084B528;
    v16[4] = self;
    v18 = a4;
    v17 = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001A4A9C;
    v13[3] = &unk_10084B550;
    v13[4] = self;
    v14 = v17;
    v15 = v9;
    v12 = v17;
    [(PDISO18013Manager *)self _performOperationOnCredentials:v11 operation:v16 completion:v13];
  }
}

- (void)_handleIdentityTokenCleanupIfNeededForPassID:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self->_databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:v4];
  v6 = [v5 anyObject];
  if (v6)
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager primarySubcredentialIdentifiersForPassUniqueIdentifier:v4];
    v8 = v7;
    if (v7 && [v7 count])
    {
      v9 = [(PDDatabaseManager *)self->_databaseManager primaryAccountIdentifierForTransactionSourceIdentifier:v6];
      v10 = PKLogFacilityTypeGetObject();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          *buf = 138412290;
          v17 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting cleanup of the assiciated PII token as the deleted pass %@ relies on one", buf, 0xCu);
        }

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001A4D4C;
        v12[3] = &unk_10084B5A0;
        v13 = v4;
        v14 = v8;
        v15 = v9;
        [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v12];

        v10 = v13;
      }

      else if (v11)
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because primary account identifier is nil for pass %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v4;
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
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because transaction source identifier is nil for pass %@", buf, 0xCu);
    }
  }
}

- (void)_handleIdentityTokenCleanupIfNeededForPass:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 identityType] == 5)
  {
    v6 = [v5 uniqueID];
    v7 = [v5 devicePrimaryPaymentApplication];
    v8 = [v7 subcredentials];
    v9 = [v8 anyObject];

    v10 = [v9 identifier];
    v11 = PKLogFacilityTypeGetObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting cleanup of the assiciated PII token as the deleted pass %@ relies on one", buf, 0xCu);
      }

      v13 = [v5 primaryAccountIdentifier];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001A53A8;
      v14[3] = &unk_10084B5A0;
      v15 = v6;
      v16 = v13;
      v17 = v10;
      v11 = v13;
      [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v14];
    }

    else if (v12)
    {
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No cleanup of PII because subcredential %@ lacks an identifier for pass %@", buf, 0x16u);
    }
  }
}

- (void)passWillBeRemoved:(id)a3
{
  v4 = a3;
  if ([v4 isIdentityPass])
  {
    [(PDISO18013Manager *)self _handleIdentityTokenCleanupIfNeededForPass:v4];
    v5 = [v4 uniqueID];
    [(PDISO18013Manager *)self identityPassDeleteCredentialFromCacheWithPassUniqueID:v5];
  }

  v19 = self;
  v6 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v4;
  v7 = [v4 devicePaymentApplications];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 paymentType] - 1002 <= 3)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = [v12 subcredentials];
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v21 + 1) + 8 * j) identifier];
                [v6 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  -[PDISO18013Manager deleteSubCredentialIdentifiers:cardType:completion:](v19, "deleteSubCredentialIdentifiers:cardType:completion:", v6, [v20 cardType], 0);
}

- (void)addISO18013BlobsFromCredentials:(id)a3 cardType:(int64_t)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A5A34;
  v10[3] = &unk_10084B618;
  v11 = a3;
  v12 = self;
  v13 = a5;
  v14 = a4;
  v8 = v13;
  v9 = v11;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];
}

- (void)addISO18013Blobs:(id)a3 cardType:(int64_t)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A6094;
  v10[3] = &unk_10084B618;
  v11 = a3;
  v12 = self;
  v13 = a5;
  v14 = a4;
  v8 = v13;
  v9 = v11;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v10];
}

- (void)accessCredentialStoreWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
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
    v4[2](v4, self->_isoStorage, v11);

    _Block_object_dispose(v13, 8);
  }
}

- (void)_isoCredentialIdentifierForSubCredentialId:(id)a3 cardType:(int64_t)a4 store:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 == 4)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ISO credential identifier %@ found for identity subCredentialId %@", buf, 0x16u);
    }

    v11[2](v11, v9);
  }

  else
  {
    v13 = [v9 pk_decodeHexadecimal];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A6994;
    v15[3] = &unk_10084B690;
    v16 = v9;
    v19 = v11;
    v17 = v10;
    v18 = v13;
    v14 = v13;
    [v17 credentialIdentifierForPublicKeyIdentifier:v14 completion:v15];
  }
}

- (void)createISOCredentialIdentifierForIdentityPartitionWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A6ED0;
  v5[3] = &unk_10084B6E0;
  v6 = a3;
  v4 = v6;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v5];
}

- (void)createISOBiometricBindingWithCompletion:(id)a3
{
  v3 = a3;
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
  v9 = v3;
  v12 = v9;
  v14 = v28;
  v15 = v26;
  v10 = [v5 evaluateWithInput:v8 completion:v11];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
}

- (void)_updateISO18013Blob:(id)a3 metadata:(id)a4 paymentApplication:(id)a5 subcredential:(id)a6 paymentPass:(id)a7 store:(id)a8 priorSubcredentialIdentifiers:(id)a9 cardType:(int64_t)a10 completion:(id)a11
{
  v47 = a3;
  v48 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = [v18 identifier];
  v24 = [v17 paymentType];
  v25 = [v17 paymentNetworkIdentifier];
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x3032000000;
  v92[3] = sub_100005BC0;
  v92[4] = sub_10000B1EC;
  v93 = 0;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v44 = v17;
  v46 = v24;
  if ([v19 isIdentityPass])
  {
    v26 = [v21 containsObject:v23];
    if (v48)
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

  v28 = v25;
  v45 = v22;
  v43 = v21;
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
  v81[5] = v23;
  v85 = a10;
  v30 = v20;
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
  v33 = v47;
  v72 = v33;
  v34 = v18;
  v76 = v92;
  v73 = v34;
  v74 = v23;
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
  v59 = self;
  v62 = v86;
  v60 = v23;
  [v29 addOperation:v57];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1001A8B4C;
  v52[3] = &unk_10084B870;
  v56 = v90;
  v38 = v48;
  v53 = v38;
  v54 = self;
  v39 = v19;
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

- (void)generateISOEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A8E64;
  v8[3] = &unk_10084B910;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v8];
}

- (void)generateISOEncryptionKeyForCardType:(int64_t)a3 subCredentialId:(id)a4 attestationType:(int64_t)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A93C4;
  v11[3] = &unk_10084B988;
  v12 = self;
  v13 = a4;
  v15 = a3;
  v16 = a5;
  v14 = a6;
  v9 = v14;
  v10 = v13;
  [(PDISO18013Manager *)v12 accessCredentialStoreWithHandler:v11];
}

- (void)generateKeySigningKeyForCardType:(int64_t)a3 subCredentialId:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A9740;
  v9[3] = &unk_10084B618;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v7 = v12;
  v8 = v11;
  [(PDISO18013Manager *)v10 accessCredentialStoreWithHandler:v9];
}

- (void)generatePresentmentKeyForCardType:(int64_t)a3 numberOfKeys:(int64_t)a4 subCredentialId:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A9AB4;
  v11[3] = &unk_10084B988;
  v12 = self;
  v13 = a5;
  v15 = a3;
  v16 = a4;
  v14 = a6;
  v9 = v14;
  v10 = v13;
  [(PDISO18013Manager *)v12 accessCredentialStoreWithHandler:v11];
}

- (void)needsPresentmentKeyRefreshForPass:(id)a3 numberOfKeys:(int64_t)a4 subCredentialId:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 > 1)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001A9EA8;
    v14[3] = &unk_10084BA28;
    v15 = v11;
    v16 = v12;
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

    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)biometricResetAffectedPassesFrom:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AA190;
  v11[3] = &unk_10084BAA0;
  v12 = v6;
  v13 = objc_alloc_init(NSMutableSet);
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v11];
}

- (void)_elementsChanged:(id)a3 forPass:(id)a4
{
  v5 = a3;
  v31 = a4;
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
  obj = v5;
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

  v18 = [v31 identityType];
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
        if (v18 == 2)
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

  if (v18 == 2)
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
    v24 = [v31 uniqueID];
    v25 = [(PDISO18013UpdateUserNotification *)v23 initWithMessage:v22 forPassUniqueIdentifier:v24];

    v26 = [NSString alloc];
    v27 = [v31 uniqueID];
    v28 = [v26 initWithFormat:@"%@-iso18013", v27];
    [(PDUserNotification *)v25 setNotificationIdentifier:v28];

    [(PDUserNotification *)v25 setReissueBannerOnUpdate:1];
    [(PDUserNotificationManager *)self->_userNotificationManager insertUserNotification:v25];
  }

LABEL_37:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

- (void)allCredentialsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001AAF78;
    v6[3] = &unk_100842780;
    v6[4] = self;
    v7 = v4;
    [(PDISO18013Manager *)self _getAllCredentialIdsWithCompletion:v6];
  }
}

- (void)_updateCredentialsForCredentialIds:(id)a3 toState:(unint64_t)a4 completion:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AB810;
  v5[3] = &unk_10084BBA0;
  v5[4] = a4;
  [(PDISO18013Manager *)self _performOperationOnCredentials:a3 operation:v5 completion:a5];
}

- (void)_performOperationOnCredentials:(id)a3 operation:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001ABB4C;
  v11[3] = &unk_10084BC18;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v11];
}

- (void)_getAllCredentialIdsWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AC09C;
  v5[3] = &unk_10084B6E0;
  v6 = a3;
  v4 = v6;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v5];
}

- (void)generateAccountKeyAuthorizationForSubcredentialID:(id)a3 cardType:(int64_t)a4 accountKeyIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AC380;
  v15[3] = &unk_10084BCB8;
  v15[4] = self;
  v16 = v10;
  v18 = a6;
  v19 = a4;
  v17 = v11;
  v12 = v18;
  v13 = v11;
  v14 = v10;
  [(PDISO18013Manager *)self accessCredentialStoreWithHandler:v15];
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AC820;
  v8[3] = &unk_10084BA28;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
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