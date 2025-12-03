@interface THThreadNetworkCredentialsKeychainBackingStore
+ (id)defaultBackingStore;
- (BOOL)DBGstorePreferred:(id)preferred;
- (BOOL)areValidDataSetTLVs:(id)vs creds:(id *)creds updateATS:(BOOL)s isATSAppended:(BOOL *)appended;
- (BOOL)checkIfActiveDatasetRecordIsPresentInTheGivenList:(id)list Missinglist:(id)missinglist record:(id)record;
- (BOOL)checkIfNetworkMatchToMDNSScan:(id)scan borderAgentID:(id)d;
- (BOOL)checkIfPrefEntryForCurrentSignatureIsMissingSSID:(id)d nwSignature:(id)signature;
- (BOOL)checkIfXpanIDMatchToMDNSScan:(id)scan;
- (BOOL)checkWiFiStatus;
- (BOOL)deleteAllRecordsForKeychainAccessGroup:(id)group;
- (BOOL)deleteOldEntryForTheNetworkSignatureIfThreadNetworkIsDifferent:(id)different nwSignature:(id)signature;
- (BOOL)deletePreferredNetworkEntry:(id)entry;
- (BOOL)deletePreferredNetworkEntryWithoutRecords:(id)records;
- (BOOL)fetchRecord:(id)record;
- (BOOL)isEthernetNetwork;
- (BOOL)isFrozenRecord:(id)record;
- (BOOL)isMatchingMdnsRecords:(id)records preferredNw:(id)nw;
- (BOOL)isMatchingNetworkSignature:(id)signature preferredNwSignature:(id)nwSignature preferred:(id)preferred signaturePrefEntries:(id)entries updatedPreferred:(id *)updatedPreferred;
- (BOOL)isPreferred:(id)preferred;
- (BOOL)isWiFiNetwork;
- (BOOL)markAsPreferred:(id)preferred;
- (BOOL)matchPreferredNetworkRecordWithMdns:(id)mdns;
- (BOOL)skipDeleteWithBorderAgent:(id)agent;
- (BOOL)skipDeleteWithUUID:(id)d;
- (BOOL)storeFrozenThreadNetwork:(id)network;
- (BOOL)storePreferred:(id)preferred;
- (BOOL)storePreferredEntryAndCheckForDup:(id)dup isDuplicate:(int *)duplicate;
- (BOOL)storePreferredNetworkWithRecord:(id)record;
- (BOOL)updatePreferredNetwork;
- (BOOL)updatePreferredNetworkEntry:(id)entry;
- (BOOL)updateRecord:(id)record;
- (BOOL)updateRecordToPreferredNetworkEntry:(id)entry credentialsDataSetRecord:(id)record;
- (BOOL)wifiInfoAvailable:(id)available;
- (id)_doFetchActiveDataSetRecords:(id)records error:(id *)error;
- (id)_doFetchFrozenThreadNetworks:(id)networks error:(id *)error;
- (id)_doFetchOneActiveDataSetRecords:(id)records error:(id *)error;
- (id)_doFetchPreferredNetworks:(id)networks error:(id *)error;
- (id)_doFetchRecords:(id)records error:(id *)error;
- (id)appendActiveTimeStampTLV:(id)v;
- (id)checkIfNetworkSignatureUpdateIsRequiredForPreferredNetwork:(id)network nwSignature:(id)signature signaturePrefEntries:(id)entries;
- (id)checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:(id)core nwSignature:(id)signature signaturePrefEntries:(id)entries;
- (id)checkIfPrefItemPresentInTheCleanupList:(id)list cleanupList:(id)cleanupList;
- (id)dataFromHexString:(id)string;
- (id)deleteActiveDataSetRecordForNetworkAndBorderAgentId:(id)id borderAgent:(id)agent;
- (id)generateCredentials;
- (id)getActiveDataSetRecord:(id)record;
- (id)getActiveDataSetRecordForNetworkAndBorderAgentId:(id)id borderAgent:(id)agent;
- (id)getActiveRecords:(id)records;
- (id)getAllPrefEntries;
- (id)getNetworkSignature;
- (id)getNumberOfPrefEntriesForTheCount:(int)count;
- (id)getOneRecordForNetwork:(id)network;
- (id)getPrefEntriesForLabelAsSSID:(id)d;
- (id)getPrefEntriesForSSID:(id)d;
- (id)getPrefEntriesForSSIDAndSignature:(id)signature;
- (id)getPrefEntriesForSignature:(id)signature;
- (id)getPreferredNetworkWithRecords;
- (id)getTheKeyFromPreferredNetworkEntry:(id)entry;
- (id)getTheMdnsMatchingEntryFromTheList:(id)list;
- (id)matchPreferredNetworkWithMdns:(id)mdns;
- (id)matchPreferredNetworkWithNetworkSignature:(id)signature nwSignature:(id)nwSignature;
- (id)sortAndReturnPreferredNetwork:(id)network onlyMdns:(BOOL)mdns;
- (unint64_t)getCountOfThreadBorderRoutersWithMdns:(id)mdns;
- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion;
- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion;
- (void)cleanThreadKeychainDatabase:(id)database;
- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion;
- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion;
- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4;
- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7;
- (void)deletePreferredNetworkWithCompletion:(id)completion;
- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)dispatchRemoveExcessPreferredEntry;
- (void)dispatchRemoveInActiveRecords:(id)records;
- (void)dumpFrozenThreadNetworks:(id)networks;
- (void)dumpPreferredNetwork:(id)network;
- (void)dumpPreferredNetworks:(id)networks;
- (void)dumpPreferredNetworksArray:(id)array;
- (void)errorout:(int)errorout completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion;
- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag compleiton:(id)compleiton;
- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag completion:(id)completion;
- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllRecordsWithCompletion:(id)completion;
- (void)retrieveListOfPreferredNetworksInternallyWithCompletion:(id)completion ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)a8;
- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion;
- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveThirdPartyInfo:(id)info;
- (void)sendCAMetricsForCleanUpRecordInfo:(cleanUpStats *)info;
- (void)storeActiveDataSetRecordAndSync:(id)sync completion:(id)completion;
- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion;
- (void)storeRecord:(id)record waitForSync:(BOOL)sync completion:(id)completion;
- (void)storeRecordAndSync:(id)sync completion:(id)completion;
- (void)storeThreadCredentialActiveDataSetRecord:(id)record waitForSync:(BOOL)sync completion:(id)completion;
- (void)thDumpActiveDatasetRecord:(id)record;
- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)updatePreferredNetworkWithNewDatasetRecord:(id)record completion:(id)completion;
- (void)validateAODInternally:(id)internally completion:(id)completion;
- (void)validateRecordWithMdnsScan:(id)scan borderAgentID:(id)d completion:(id)completion;
@end

@implementation THThreadNetworkCredentialsKeychainBackingStore

+ (id)defaultBackingStore
{
  if (qword_100080820 != -1)
  {
    sub_10003B5C4();
  }

  v3 = qword_100080818;

  return v3;
}

- (id)_doFetchRecords:(id)records error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(records, &result);
  if (v5)
  {
    v6 = v5;
    if (v5 == -25300)
    {
      v7 = +[NSSet set];
    }

    else
    {
      v17 = SecCopyErrorMessageString(v5, 0);
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003B648();
      }

      if (error)
      {
        v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
        *error = [NSError storeError:2 underlyingError:v19 description:v17];
      }

      v7 = 0;
    }
  }

  else
  {
    v8 = result;
    if (result && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003B5D8();
      }

      if (error)
      {
        [NSError storeError:3 description:@"Bad return type from SecItemCopyMatching"];
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [THThreadNetworkCredentialsStoreRecord recordFromKeychainDictionary:*(*(&v23 + 1) + 8 * v14)];
            if (v15)
            {
              [v9 addObject:v15];
            }

            else
            {
              v16 = sub_10001B194(1);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v29 = "[THThreadNetworkCredentialsKeychainBackingStore _doFetchRecords:error:]";
                v30 = 1024;
                v31 = 124;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s:%d: Failed to interpret keychain item! SKIPPING!", buf, 0x12u);
              }
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v12);
      }

      v7 = [NSSet setWithArray:v9];

      v8 = v22;
    }
  }

  return v7;
}

- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B734;
  block[3] = &unk_100078E48;
  v12 = networkCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = networkCopy;
  dispatch_async(v8, block);
}

- (void)retrieveAllRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B94C;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BBA8;
  block[3] = &unk_100078E48;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)errorout:(int)errorout completion:(id)completion
{
  completionCopy = completion;
  v6 = SecCopyErrorMessageString(errorout, 0);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10003B6B8();
  }

  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:errorout userInfo:0];
  v9 = [NSError storeError:2 underlyingError:v8 description:v6];
  completionCopy[2](completionCopy, 0, v9);
}

- (void)storeRecordAndSync:(id)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  keyChainItemRepresentationForAddOperation = [syncCopy keyChainItemRepresentationForAddOperation];
  if (!keyChainItemRepresentationForAddOperation)
  {
    v13 = [NSError storeError:4 description:@"Bad network parameter"];
    completionCopy[2](completionCopy, 0, v13);
    v11 = 0;
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v22 = 0;
  v10 = [CKKSControl controlObject:&v22];
  v11 = v22;
  if (!v10)
  {
    v13 = [NSError storeError:5 description:@"CKKS object allocation failed"];
    completionCopy[2](completionCopy, 0, v13);
    goto LABEL_6;
  }

  v12 = kSecAttrViewHintHome;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C000;
  v14[3] = &unk_100078F38;
  v20 = v23;
  v15 = v8;
  v16 = syncCopy;
  v19 = completionCopy;
  v17 = keyChainItemRepresentationForAddOperation;
  selfCopy = self;
  v21 = 120;
  [v10 rpcKnownBadState:v12 reply:v14];

  v13 = v15;
LABEL_7:

  _Block_object_dispose(v23, 8);
}

- (void)storeRecord:(id)record waitForSync:(BOOL)sync completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001CE7C;
  v13[3] = &unk_100078F60;
  selfCopy = self;
  v16 = completionCopy;
  syncCopy = sync;
  v14 = recordCopy;
  v11 = completionCopy;
  v12 = recordCopy;
  dispatch_async(v10, v13);
}

- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D1DC;
  v10[3] = &unk_100078E70;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  dispatch_async(v7, v10);
}

- (id)_doFetchOneActiveDataSetRecords:(id)records error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(records, &result);
  if (v5 == -25300)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  if (v5)
  {
    v7 = SecCopyErrorMessageString(v5, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B820();
    }

    if (error)
    {
      v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
      *error = [NSError storeError:2 underlyingError:v10 description:v7];
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = result;
  if (!result)
  {
    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003B7A8();
    }

    if (error)
    {
      [NSError storeError:3 description:@"Bad return type from SecItemCopyMatching"];
      *error = v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = [THThreadNetworkCredentialsActiveDataSetRecord activeDataSetRecordFromKeychainDictionary:result];
LABEL_11:

LABEL_12:

  return v8;
}

- (id)_doFetchActiveDataSetRecords:(id)records error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(records, &result);
  if (v5)
  {
    v6 = v5;
    if (v5 == -25300)
    {
      v7 = +[NSSet set];
    }

    else
    {
      v16 = SecCopyErrorMessageString(v5, 0);
      v17 = sub_10001B194(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10003B820();
      }

      if (error)
      {
        v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
        *error = [NSError storeError:2 underlyingError:v18 description:v16];
      }

      v7 = 0;
    }
  }

  else
  {
    v8 = result;
    if (result && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v19 = sub_10001B194(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10003B5D8();
      }

      if (error)
      {
        [NSError storeError:3 description:@"Bad return type from SecItemCopyMatching"];
        *error = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [THThreadNetworkCredentialsActiveDataSetRecord activeDataSetRecordFromKeychainDictionary:*(*(&v21 + 1) + 8 * i), v21];
            if (v15)
            {
              [v9 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v7 = [NSSet setWithArray:v9];
    }
  }

  return v7;
}

- (id)_doFetchPreferredNetworks:(id)networks error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(networks, &result);
  if (v5)
  {
    v6 = v5;
    if (v5 == -25300)
    {
      v7 = sub_10001B194(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003B914();
      }

      v8 = +[NSSet set];
    }

    else
    {
      v17 = SecCopyErrorMessageString(v5, 0);
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003B998();
      }

      if (error)
      {
        v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
        *error = [NSError storeError:9 underlyingError:v19 description:v17];
      }

      v8 = 0;
    }
  }

  else
  {
    v9 = result;
    if (result && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003B890();
      }

      if (error)
      {
        [NSError storeError:9 description:@"Bad return type from SecItemCopyMatching"];
        *error = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [THPreferredThreadNetwork preferredNetworkFromKeychainDictionary:*(*(&v22 + 1) + 8 * i), v22];
            if (v16)
            {
              [v10 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v8 = [NSSet setWithArray:v10];
    }
  }

  return v8;
}

- (id)_doFetchFrozenThreadNetworks:(id)networks error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(networks, &result);
  if (v5)
  {
    v6 = v5;
    if (v5 == -25300)
    {
      v7 = sub_10001B194(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003BA8C();
      }

      v8 = +[NSSet set];
    }

    else
    {
      v17 = SecCopyErrorMessageString(v5, 0);
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003BB10();
      }

      if (error)
      {
        v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
        *error = [NSError storeError:30 underlyingError:v19 description:v17];
      }

      v8 = 0;
    }
  }

  else
  {
    v9 = result;
    if (result && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003BA08();
      }

      if (error)
      {
        [NSError storeError:30 description:@"Bad return type from SecItemCopyMatching"];
        *error = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [THFrozenThreadNetwork frozenThreadNetworkFromKeychainDictionary:*(*(&v22 + 1) + 8 * i), v22];
            if (v16)
            {
              [v10 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v8 = [NSSet setWithArray:v10];
    }
  }

  return v8;
}

- (void)retrieveThirdPartyInfo:(id)info
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10001DFBC;
  v11[4] = sub_10001DFCC;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_10001DFBC;
  v9[4] = sub_10001DFCC;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001DFD4;
  v5[3] = &unk_100078F88;
  v7 = v11;
  v8 = v9;
  infoCopy = info;
  v5[4] = self;
  v6 = infoCopy;
  [(THThreadNetworkCredentialsKeychainBackingStore *)self retrieveAllActiveDataSetRecordsWithCompletion:v5];

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E670;
  block[3] = &unk_100078E48;
  v12 = networkCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = networkCopy;
  dispatch_async(v8, block);
}

- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E908;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB34;
  block[3] = &unk_100078E48;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EDB8;
  block[3] = &unk_100078E48;
  v12 = idCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(v8, block);
}

- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F03C;
  block[3] = &unk_100078E48;
  v12 = idCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(v8, block);
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F350;
  block[3] = &unk_100078E48;
  v12 = agentCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = agentCopy;
  dispatch_async(v8, block);
}

- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F5E4;
  block[3] = &unk_100078E48;
  v12 = agentCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = agentCopy;
  dispatch_async(v8, block);
}

- (void)retrieveListOfPreferredNetworksInternallyWithCompletion:(id)completion ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)a8
{
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v18 = a8;
  v19 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FA0C;
  block[3] = &unk_100078FB0;
  entryCopy = entry;
  block[4] = self;
  v26 = signatureCopy;
  v27 = nwSignatureCopy;
  v28 = dCopy;
  v29 = completionCopy;
  v30 = v18;
  v20 = completionCopy;
  v21 = dCopy;
  v22 = nwSignatureCopy;
  v23 = signatureCopy;
  v24 = v18;
  dispatch_async(v19, block);
}

- (id)getActiveRecords:(id)records
{
  recordsCopy = records;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
    v70 = 1024;
    *v71 = 890;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Entered. Matching records with Mdns records", buf, 0x12u);
  }

  v6 = objc_alloc_init(ThreadBRFinder);
  if (v6)
  {
    v7 = objc_opt_new();
    if (v7)
    {
      v8 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getCountOfThreadBorderRoutersWithMdns:v6];
      if (v8)
      {
        v10 = v8;
        v11 = 0;
        *&v9 = 136315394;
        v53 = v9;
        v12 = &AWDPostMetric_ptr;
        v59 = recordsCopy;
        selfCopy = self;
        v56 = v6;
        v54 = v8;
        do
        {
          v13 = [(ThreadBRFinder *)v6 getBorderAgentForIndex:v11, v53];
          v14 = v13;
          if (v13)
          {
            addresses = [v13 addresses];

            if (addresses)
            {
              v16 = v12[236];
              tXTRecordData = [v14 TXTRecordData];
              v18 = [v16 dictionaryFromTXTRecordData:tXTRecordData];

              if (!v18)
              {
                v29 = sub_10001B194(1);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                  v70 = 1024;
                  *v71 = 924;
                  *&v71[4] = 2112;
                  *&v71[6] = v14;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s : %d No text record data available for the server : %@, continue to next network", buf, 0x1Cu);
                }

                goto LABEL_54;
              }

              v62 = v18;
              v19 = [v18 objectForKey:@"xa"];
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                v70 = 1024;
                *v71 = 931;
                *&v71[4] = 2112;
                *&v71[6] = v62;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s:%d BorderAgent MDNS Text Record Data : %@", buf, 0x1Cu);
              }

              v60 = v14;
              if (v19)
              {
                if ([v19 length] != 16)
                {
                  selfCopy2 = self;
                  v33 = v19;
                  v34 = [v19 length];
                  v24 = sub_10001B194(1);
                  v35 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
                  if (v34 == 8)
                  {
                    v19 = v33;
                    if (v35)
                    {
                      v48 = [v33 length];
                      *buf = 136315650;
                      v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                      v70 = 1024;
                      *v71 = 943;
                      *&v71[4] = 2048;
                      *&v71[6] = v48;
                      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s:%d BorderAgent ID is of NEW format (binary based) with length : %lu", buf, 0x1Cu);
                    }

                    v23 = v33;
                    v61 = 0;
                    self = selfCopy2;
                    recordsCopy = v59;
LABEL_34:
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v24 = recordsCopy;
                    v36 = [v24 countByEnumeratingWithState:&v63 objects:v67 count:16];
                    if (v36)
                    {
                      v37 = v36;
                      v57 = v19;
                      v58 = v11;
                      v38 = *v64;
                      do
                      {
                        for (i = 0; i != v37; i = i + 1)
                        {
                          if (*v64 != v38)
                          {
                            objc_enumerationMutation(v24);
                          }

                          v40 = *(*(&v63 + 1) + 8 * i);
                          borderAgent = [v40 borderAgent];
                          discriminatorId = [borderAgent discriminatorId];
                          v43 = [discriminatorId isEqualToData:v23];

                          if (v43)
                          {
                            v44 = sub_10001B194(1);
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                            {
                              borderAgent2 = [v40 borderAgent];
                              discriminatorId2 = [borderAgent2 discriminatorId];
                              *buf = 136315906;
                              v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                              v70 = 1024;
                              *v71 = 974;
                              *&v71[4] = 2112;
                              *&v71[6] = discriminatorId2;
                              v72 = 2112;
                              v73 = v23;
                              _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s : %d: baID :%@ matches with mdns record :%@", buf, 0x26u);
                            }

                            [v7 addObject:v40];
                          }
                        }

                        v37 = [v24 countByEnumeratingWithState:&v63 objects:v67 count:16];
                      }

                      while (v37);
                      v11 = v58;
                      recordsCopy = v59;
                      self = selfCopy;
                      v6 = v56;
                      v10 = v54;
                      v12 = &AWDPostMetric_ptr;
                      v19 = v57;
                    }

                    else
                    {
                      v12 = &AWDPostMetric_ptr;
                    }
                  }

                  else
                  {
                    if (v35)
                    {
                      v19 = v33;
                      v49 = [v33 length];
                      *buf = 136315650;
                      v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                      v70 = 1024;
                      *v71 = 947;
                      *&v71[4] = 2048;
                      *&v71[6] = v49;
                      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s:%d Continuing... BorderAgent ID length mismatch !!! border agent id length : %lu", buf, 0x1Cu);
                      v23 = 0;
                      v61 = 0;
                    }

                    else
                    {
                      v23 = 0;
                      v61 = 0;
                      v19 = v33;
                    }

                    self = selfCopy2;
                    recordsCopy = v59;
                  }

                  goto LABEL_53;
                }

                v21 = sub_10001B194(1);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v47 = [v19 length];
                  *buf = 136315650;
                  v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                  v70 = 1024;
                  *v71 = 939;
                  *&v71[4] = 2048;
                  *&v71[6] = v47;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s:%d BorderAgent IDis of OLD format (string based) with length : %lu", buf, 0x1Cu);
                }

                v22 = [[NSString alloc] initWithData:v19 encoding:4];
                if (v22)
                {
                  v61 = v22;
                  v23 = [(THThreadNetworkCredentialsKeychainBackingStore *)self dataFromHexString:?];
                  v24 = sub_10001B194(1);
                  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
                  if (v23)
                  {
                    if (v25)
                    {
                      *buf = 136315906;
                      v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                      v70 = 1024;
                      *v71 = 966;
                      *&v71[4] = 2112;
                      *&v71[6] = v61;
                      v72 = 2112;
                      v73 = v23;
                      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s:%d: baid str : %@, foundbaid : %@", buf, 0x26u);
                    }

                    goto LABEL_34;
                  }

                  if (v25)
                  {
                    *buf = 136315650;
                    v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                    v70 = 1024;
                    *v71 = 962;
                    *&v71[4] = 2112;
                    *&v71[6] = v60;
                    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s : %d hex string conversion to nsdata failure for server : %@, continue to next network", buf, 0x1Cu);
                  }

                  v23 = 0;
LABEL_53:

                  v14 = v60;
                  v29 = v61;
                  v18 = v62;
LABEL_54:

                  goto LABEL_55;
                }

                v24 = sub_10001B194(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                  v70 = 1024;
                  *v71 = 955;
                  *&v71[4] = 2112;
                  *&v71[6] = v14;
                  v30 = v24;
                  v31 = "%s : %d baid nsstring conversion failure, server : %@, continue to next network";
LABEL_51:
                  _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x1Cu);
                }
              }

              else
              {
                v24 = sub_10001B194(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
                  v70 = 1024;
                  *v71 = 934;
                  *&v71[4] = 2112;
                  *&v71[6] = v14;
                  v30 = v24;
                  v31 = "%s : %d cannot parse dictionary data for server : %@, continue to next network";
                  goto LABEL_51;
                }
              }

              v23 = 0;
              v61 = 0;
              goto LABEL_53;
            }

            v18 = sub_10001B194(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v53;
              v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
              v70 = 2112;
              *v71 = v14;
              v26 = v18;
              v27 = "%s : No IP address is available for the server : %@, continue to next BR";
              v28 = 22;
              goto LABEL_25;
            }
          }

          else
          {
            v18 = sub_10001B194(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v53;
              v69 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveRecords:]";
              v70 = 1024;
              *v71 = 913;
              v26 = v18;
              v27 = "%s:%d: Failed to get the server";
              v28 = 18;
LABEL_25:
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
            }
          }

LABEL_55:

          ++v11;
        }

        while (v11 != v10);
      }

      if ([v7 count])
      {
        v50 = [NSSet setWithArray:v7];
        goto LABEL_70;
      }
    }

    else
    {
      v51 = sub_10001B194(1);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_10003BE08();
      }
    }
  }

  else
  {
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE8C();
    }
  }

  v50 = 0;
LABEL_70:

  return v50;
}

- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000207AC;
  v13[3] = &unk_100078FD8;
  flagCopy = flag;
  v14 = groupCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = groupCopy;
  dispatch_async(v10, v13);
}

- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag compleiton:(id)compleiton
{
  groupCopy = group;
  compleitonCopy = compleiton;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020AF0;
  v13[3] = &unk_100078FD8;
  flagCopy = flag;
  v14 = groupCopy;
  selfCopy = self;
  v16 = compleitonCopy;
  v11 = compleitonCopy;
  v12 = groupCopy;
  dispatch_async(v10, v13);
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020E1C;
  v10[3] = &unk_100078E70;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  dispatch_async(v7, v10);
}

- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021108;
  v10[3] = &unk_100078E70;
  v11 = agentCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = agentCopy;
  dispatch_async(v7, v10);
}

- (void)storeActiveDataSetRecordAndSync:(id)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  keyChainItemRepresentationForActiveDataSetRecordAddOperation = [syncCopy keyChainItemRepresentationForActiveDataSetRecordAddOperation];
  if (!keyChainItemRepresentationForActiveDataSetRecordAddOperation)
  {
    v13 = [NSError storeError:4 description:@"Bad network parameter"];
    completionCopy[2](completionCopy, 0, v13);

    v11 = 0;
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v22 = 0;
  v10 = [CKKSControl controlObject:&v22];
  v11 = v22;
  if (!v10)
  {
    v14 = [NSError storeError:5 description:@"CKKS object allocation failed"];
    completionCopy[2](completionCopy, 0, v14);

    goto LABEL_6;
  }

  v12 = kSecAttrViewHintHome;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021580;
  v15[3] = &unk_100079028;
  v20 = v23;
  v15[4] = self;
  v16 = syncCopy;
  v17 = v8;
  v19 = completionCopy;
  v18 = keyChainItemRepresentationForActiveDataSetRecordAddOperation;
  v21 = 120;
  [v10 rpcKnownBadState:v12 reply:v15];

LABEL_7:
  _Block_object_dispose(v23, 8);
}

- (BOOL)isFrozenRecord:(id)record
{
  recordCopy = record;
  v5 = [THFrozenThreadNetwork alloc];
  credentialsDataSet = [recordCopy credentialsDataSet];
  v7 = [v5 initWithCredentialsDataSet:credentialsDataSet creationDate:0 lastModificationDate:0];

  if (v7)
  {
    v8 = [THFrozenThreadNetwork keyChainQueryForFrozenThreadNetworkRecordOperationForCredentialsDataSet:v7];
    if (v8)
    {
      v18 = 0;
      v9 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchFrozenThreadNetworks:v8 error:&v18];
      v10 = v18;
      v11 = sub_10001B194(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v9 count];
        *buf = 136315650;
        v20 = "[THThreadNetworkCredentialsKeychainBackingStore isFrozenRecord:]";
        v21 = 1024;
        v22 = 1316;
        v23 = 2048;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %d - Frozen network in Database = %lu", buf, 0x1Cu);
      }

      [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpFrozenThreadNetworks:v9];
      if (v9 && [v9 count])
      {
        v13 = 1;
        v14 = sub_10001B194(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          network = [recordCopy network];
          networkName = [network networkName];
          *buf = 136315650;
          v20 = "[THThreadNetworkCredentialsKeychainBackingStore isFrozenRecord:]";
          v21 = 1024;
          v22 = 1326;
          v23 = 2112;
          v24 = networkName;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:%d: Record(name : %@) credentials are marked frozen network in the Database ", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = sub_10001B194(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "[THThreadNetworkCredentialsKeychainBackingStore isFrozenRecord:]";
          v21 = 1024;
          v22 = 1322;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d: No frozen network found in Database ", buf, 0x12u);
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
      v10 = sub_10001B194(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003C080();
      }
    }
  }

  else
  {
    v13 = 1;
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003C104();
    }
  }

  return v13;
}

- (void)updatePreferredNetworkWithNewDatasetRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022758;
  block[3] = &unk_100079050;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(v8, block);
}

- (void)validateAODInternally:(id)internally completion:(id)completion
{
  internallyCopy = internally;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022E7C;
  block[3] = &unk_100078E48;
  v12 = internallyCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = internallyCopy;
  dispatch_async(v8, block);
}

- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000230F4;
  block[3] = &unk_100078E48;
  v12 = networkCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = networkCopy;
  dispatch_async(v8, block);
}

- (void)storeThreadCredentialActiveDataSetRecord:(id)record waitForSync:(BOOL)sync completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000233DC;
  v13[3] = &unk_100078F60;
  selfCopy = self;
  v16 = completionCopy;
  v14 = recordCopy;
  syncCopy = sync;
  v11 = completionCopy;
  v12 = recordCopy;
  dispatch_async(v10, v13);
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion
{
  groupCopy = group;
  accessGroupCopy = accessGroup;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002412C;
  v15[3] = &unk_1000790A0;
  v16 = groupCopy;
  v17 = accessGroupCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = accessGroupCopy;
  v14 = groupCopy;
  dispatch_async(v11, v15);
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion
{
  groupCopy = group;
  accessGroupCopy = accessGroup;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024378;
  v15[3] = &unk_1000790A0;
  v16 = groupCopy;
  v17 = accessGroupCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = accessGroupCopy;
  v14 = groupCopy;
  dispatch_async(v11, v15);
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion
{
  groupCopy = group;
  accessGroupCopy = accessGroup;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000245C8;
  block[3] = &unk_100078E48;
  v15 = groupCopy;
  v16 = accessGroupCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = accessGroupCopy;
  v13 = groupCopy;
  dispatch_async(v10, block);
}

- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group keychainAccessGroup:(id)accessGroup completion:(id)completion
{
  groupCopy = group;
  accessGroupCopy = accessGroup;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000248D8;
  block[3] = &unk_100078E48;
  v15 = groupCopy;
  v16 = accessGroupCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = accessGroupCopy;
  v13 = groupCopy;
  dispatch_async(v10, block);
}

- (BOOL)checkWiFiStatus
{
  v2 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
  if (v2)
  {
    v3 = v2;
    path = [v2 path];
    v5 = [path usesInterfaceType:1];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (BOOL)checkIfXpanIDMatchToMDNSScan:(id)scan
{
  scanCopy = scan;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[THThreadNetworkCredentialsKeychainBackingStore checkIfXpanIDMatchToMDNSScan:]";
    *&buf[12] = 1024;
    *&buf[14] = 1703;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d: Entered. Checking if Network extendedPANID matches with Mdns", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = sub_10001DFBC;
  v22 = sub_10001DFCC;
  v23 = objc_alloc_init(ThreadBRFinder);
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      v17 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfXpanIDMatchToMDNSScan:]";
      v18 = 1024;
      v19 = 1708;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", v16, 0x12u);
    }

    goto LABEL_15;
  }

  if (([v5 dispatchStartScan:0 extendedPanIdToFind:scanCopy borderAgentIdToFind:0] & 1) == 0)
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003C520();
    }

LABEL_15:

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v16 = 136315394;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfXpanIDMatchToMDNSScan:]";
    v18 = 1024;
    v19 = 1717;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: Waiting for extendedPANID network record to match on Mdns meshcop", v16, 0x12u);
  }

  v7 = dispatch_time(0, 10000000000);
  baFinderSemaphore = [*(*&buf[8] + 40) baFinderSemaphore];
  v9 = dispatch_semaphore_wait(baFinderSemaphore, v7);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024F5C;
  block[3] = &unk_1000790C8;
  block[4] = buf;
  dispatch_async(&_dispatch_main_q, block);
  if (v9)
  {
    v10 = sub_10001B194(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003C5A4();
    }

    [*(*&buf[8] + 40) clear];
    goto LABEL_16;
  }

  v14 = sub_10001B194(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v16 = 136315394;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfXpanIDMatchToMDNSScan:]";
    v18 = 1024;
    v19 = 1733;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:%d: extendedPANID network record matches on Mdns meshcop", v16, 0x12u);
  }

  [*(*&buf[8] + 40) clear];
  v12 = 1;
LABEL_17:
  _Block_object_dispose(buf, 8);

  return v12;
}

- (BOOL)checkIfNetworkMatchToMDNSScan:(id)scan borderAgentID:(id)d
{
  scanCopy = scan;
  dCopy = d;
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkMatchToMDNSScan:borderAgentID:]";
    *&buf[12] = 1024;
    *&buf[14] = 1742;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d: Entered. Checking if borderAgentID Network matches with Mdns", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = sub_10001DFBC;
  v28 = sub_10001DFCC;
  v29 = objc_alloc_init(ThreadBRFinder);
  v8 = *(*&buf[8] + 40);
  if (!v8)
  {
    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136315394;
      v23 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkMatchToMDNSScan:borderAgentID:]";
      v24 = 1024;
      v25 = 1747;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", v22, 0x12u);
    }

    goto LABEL_15;
  }

  networkName = [scanCopy networkName];
  extendedPANID = [scanCopy extendedPANID];
  v11 = [v8 dispatchStartScan:networkName extendedPanIdToFind:extendedPANID borderAgentIdToFind:dCopy];

  if ((v11 & 1) == 0)
  {
    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003C628();
    }

LABEL_15:

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v12 = sub_10001B194(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v22 = 136315394;
    v23 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkMatchToMDNSScan:borderAgentID:]";
    v24 = 1024;
    v25 = 1756;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s:%d: Waiting for borderAgentID network record to match on Mdns meshcop", v22, 0x12u);
  }

  v13 = dispatch_time(0, 10000000000);
  baFinderSemaphore = [*(*&buf[8] + 40) baFinderSemaphore];
  v15 = dispatch_semaphore_wait(baFinderSemaphore, v13);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025398;
  block[3] = &unk_1000790C8;
  block[4] = buf;
  dispatch_async(&_dispatch_main_q, block);
  if (v15)
  {
    v16 = sub_10001B194(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003C6AC();
    }

    [*(*&buf[8] + 40) clear];
    goto LABEL_16;
  }

  v20 = sub_10001B194(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v22 = 136315394;
    v23 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkMatchToMDNSScan:borderAgentID:]";
    v24 = 1024;
    v25 = 1771;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d: borderAgentID network record matches on Mdns meshcop", v22, 0x12u);
  }

  [*(*&buf[8] + 40) clear];
  v18 = 1;
LABEL_17:
  _Block_object_dispose(buf, 8);

  return v18;
}

- (void)validateRecordWithMdnsScan:(id)scan borderAgentID:(id)d completion:(id)completion
{
  scanCopy = scan;
  dCopy = d;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000254AC;
  v15[3] = &unk_1000790F0;
  v16 = scanCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = completionCopy;
  v12 = dCopy;
  v13 = completionCopy;
  v14 = scanCopy;
  dispatch_async(v11, v15);
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025754;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026824;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrievePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026B30;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026E60;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027190;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (BOOL)storePreferredNetworkWithRecord:(id)record
{
  recordCopy = record;
  getNetworkSignature = [(THThreadNetworkCredentialsKeychainBackingStore *)self getNetworkSignature];
  if (getNetworkSignature)
  {
    v6 = [THThreadNetwork alloc];
    network = [recordCopy network];
    networkName = [network networkName];
    network2 = [recordCopy network];
    extendedPANID = [network2 extendedPANID];
    v11 = [v6 initWithName:networkName extendedPANID:extendedPANID];

    if (!v11)
    {
      v16 = sub_10001B194(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10003CB48();
      }

      v17 = 0;
      goto LABEL_18;
    }

    borderAgent = [recordCopy borderAgent];
    v13 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getActiveDataSetRecord:borderAgent];

    v14 = [THPreferredThreadNetwork alloc];
    keychainAccessGroup = [recordCopy keychainAccessGroup];
    v16 = [v14 initWithThreadNetwork:v11 networkSignature:getNetworkSignature credentialsDataSetRecord:v13 creationDate:0 lastModificationDate:0 userInfo:keychainAccessGroup];

    v17 = v16 != 0;
    if (v16)
    {
      if (![(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferred:v16])
      {
        v17 = 0;
        goto LABEL_17;
      }

      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003CAC8();
      }
    }

    else
    {
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003CA48();
      }
    }

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v11 = sub_10001B194(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10003CBC8();
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000276E8;
  v7[3] = &unk_100078E70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion
{
  internallyCopy = internally;
  dCopy = d;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  iDCopy = iD;
  passwordCopy = password;
  completionCopy = completion;
  v22 = dispatch_get_global_queue(0, 0);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100027D78;
  v30[3] = &unk_100079180;
  v31 = signatureCopy;
  v32 = nwSignatureCopy;
  v33 = iDCopy;
  v34 = passwordCopy;
  v35 = dCopy;
  selfCopy = self;
  v37 = internallyCopy;
  v38 = completionCopy;
  v23 = internallyCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v26 = passwordCopy;
  v27 = iDCopy;
  v28 = nwSignatureCopy;
  v29 = signatureCopy;
  dispatch_async(v22, v30);
}

- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7
{
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v16 = a7;
  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100028670;
  v23[3] = &unk_1000791A8;
  v24 = signatureCopy;
  v25 = nwSignatureCopy;
  v26 = dCopy;
  v27 = completionCopy;
  selfCopy = self;
  v29 = v16;
  v18 = v16;
  v19 = completionCopy;
  v20 = dCopy;
  v21 = nwSignatureCopy;
  v22 = signatureCopy;
  dispatch_async(v17, v23);
}

- (void)deletePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028EB8;
  v7[3] = &unk_1000791D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000295B8;
  v10[3] = &unk_100078E70;
  v11 = completionCopy;
  v12 = v6;
  v8 = v6;
  v9 = completionCopy;
  dispatch_async(v7, v10);
}

- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029934;
  v7[3] = &unk_1000791D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E5C;
  v7[3] = &unk_1000791D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (id)getOneRecordForNetwork:(id)network
{
  v4 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryFetchForOneActiveDataSetOperationForThreadNetwork:network];
  if (!v4)
  {
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003D960();
    }
  }

  v11 = 0;
  v6 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchOneActiveDataSetRecords:v4 error:&v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003D9E4();
    }
  }

  return v7;
}

- (BOOL)deleteAllRecordsForKeychainAccessGroup:(id)group
{
  v3 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteAllActiveDataSetOperationWithKeychainAccessGroup:group];
  v4 = v3;
  if (v3)
  {
    v5 = SecItemDelete(v3);
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore deleteAllRecordsForKeychainAccessGroup:]";
      v12 = 1024;
      v13 = 2570;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: Deleting all records for com.apple.thread.dataset, Deletion result :(err=%d)", &v10, 0x18u);
    }

    if (!v5)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB00();
    }
  }

  else
  {
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB84();
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)checkIfActiveDatasetRecordIsPresentInTheGivenList:(id)list Missinglist:(id)missinglist record:(id)record
{
  listCopy = list;
  missinglistCopy = missinglist;
  recordCopy = record;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = listCopy;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    selfCopy = self;
    v30 = missinglistCopy;
    v13 = *v37;
    v32 = *v37;
    while (2)
    {
      v14 = 0;
      v33 = v12;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        borderAgent = [v15 borderAgent];
        discriminatorId = [borderAgent discriminatorId];
        borderAgent2 = [recordCopy borderAgent];
        discriminatorId2 = [borderAgent2 discriminatorId];
        if ([discriminatorId isEqualToData:discriminatorId2])
        {
          [v15 credentialsDataSet];
          v20 = v31 = v15;
          dataSetArray = [v20 dataSetArray];
          credentialsDataSet = [recordCopy credentialsDataSet];
          [credentialsDataSet dataSetArray];
          v24 = v23 = recordCopy;
          v35 = [dataSetArray isEqualToData:v24];

          recordCopy = v23;
          v12 = v33;

          v13 = v32;
          if (v35)
          {
            v26 = sub_10001B194(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10003DC08(recordCopy, v31, v26);
            }

            [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy thDumpActiveDatasetRecord:recordCopy];
            [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy thDumpActiveDatasetRecord:v31];
            missinglistCopy = v30;
            [v30 removeObject:v31];
            v25 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v25 = 0;
    missinglistCopy = v30;
  }

  else
  {
    v25 = 0;
  }

LABEL_17:

  return v25;
}

- (void)thDumpActiveDatasetRecord:(id)record
{
  recordCopy = record;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003DDE0();
  }

  uniqueIdentifier = [recordCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003DE1C(recordCopy);
    }
  }

  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10003DEC8(recordCopy);
  }

  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10003DF6C(recordCopy);
  }

  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003E010(recordCopy);
  }

  credentials = [recordCopy credentials];
  pANID = [credentials PANID];

  if (pANID)
  {
    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003E0B4(recordCopy);
    }
  }

  credentials2 = [recordCopy credentials];
  masterKey = [credentials2 masterKey];

  if (masterKey)
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003E158(recordCopy);
    }
  }

  credentials3 = [recordCopy credentials];
  pSKc = [credentials3 PSKc];

  if (pSKc)
  {
    v18 = sub_10001B194(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003E1FC(recordCopy);
    }
  }

  credentials4 = [recordCopy credentials];
  passPhrase = [credentials4 passPhrase];

  if (passPhrase)
  {
    v21 = sub_10001B194(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003E2A0(recordCopy);
    }
  }

  credentials5 = [recordCopy credentials];
  channel = [credentials5 channel];
  v24 = kTHNetworkChannel_None;

  if (channel != v24)
  {
    v25 = sub_10001B194(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003E344(recordCopy);
    }
  }

  v26 = sub_10001B194(1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_10003E3D4(recordCopy);
  }

  credentials6 = [recordCopy credentials];
  userInfo = [credentials6 userInfo];

  if (userInfo)
  {
    v29 = sub_10001B194(1);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10003E478(recordCopy);
    }
  }

  keychainAccessGroup = [recordCopy keychainAccessGroup];

  if (keychainAccessGroup)
  {
    v31 = sub_10001B194(1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10003E51C(recordCopy);
    }
  }

  creationDate = [recordCopy creationDate];

  if (creationDate)
  {
    v33 = sub_10001B194(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10003E5A8(recordCopy);
    }
  }

  lastModificationDate = [recordCopy lastModificationDate];

  if (lastModificationDate)
  {
    v35 = sub_10001B194(1);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10003E634(recordCopy);
    }
  }

  v36 = sub_10001B194(1);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    sub_10003E6C0();
  }
}

- (id)getTheKeyFromPreferredNetworkEntry:(id)entry
{
  entryCopy = entry;
  networkSignature = [entryCopy networkSignature];
  wifiPassword = [networkSignature wifiPassword];
  if (wifiPassword)
  {
    v6 = wifiPassword;
    networkSignature2 = [entryCopy networkSignature];
    wifiPassword2 = [networkSignature2 wifiPassword];
    v9 = [wifiPassword2 length];

    if (v9)
    {
      networkSignature3 = [entryCopy networkSignature];
      wifiPassword3 = [networkSignature3 wifiPassword];
      v12 = [wifiPassword3 isEqualToString:@"ApplePreferredNetworkRecordLabel"];

      networkSignature4 = [entryCopy networkSignature];
      v14 = networkSignature4;
      if (v12)
      {
        [networkSignature4 wifiSSID];
      }

      else
      {
        [networkSignature4 wifiPassword];
      }
      v20 = ;

      goto LABEL_9;
    }
  }

  else
  {
  }

  networkSignature5 = [entryCopy networkSignature];
  ipv4NwSignature = [networkSignature5 ipv4NwSignature];
  bytes = [ipv4NwSignature bytes];
  networkSignature6 = [entryCopy networkSignature];
  ipv4NwSignature2 = [networkSignature6 ipv4NwSignature];
  sub_1000085B4(bytes, [ipv4NwSignature2 length], v22, 0x29uLL, 0);

  v20 = [NSString stringWithUTF8String:v22];
LABEL_9:

  return v20;
}

- (id)checkIfPrefItemPresentInTheCleanupList:(id)list cleanupList:(id)cleanupList
{
  listCopy = list;
  cleanupListCopy = cleanupList;
  v7 = cleanupListCopy;
  if (!listCopy)
  {
    v31 = 0;
    goto LABEL_30;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = cleanupListCopy;
  v8 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v8)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v9 = v8;
  v33 = v7;
  v10 = *v58;
  v56 = listCopy;
  v53 = *v58;
  while (2)
  {
    v11 = 0;
    v54 = v9;
    do
    {
      if (*v58 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v57 + 1) + 8 * v11);
      if (v12)
      {
        network = [*(*(&v57 + 1) + 8 * v11) network];
        networkName = [network networkName];
        network2 = [listCopy network];
        networkName2 = [network2 networkName];
        if (![networkName isEqualToString:networkName2])
        {
          goto LABEL_15;
        }

        network3 = [v12 network];
        extendedPANID = [network3 extendedPANID];
        network4 = [listCopy network];
        extendedPANID2 = [network4 extendedPANID];
        if (![extendedPANID isEqualToData:extendedPANID2])
        {

          listCopy = v56;
          v10 = v53;
          v9 = v54;
LABEL_15:

          goto LABEL_22;
        }

        v50 = network;
        v47 = extendedPANID2;
        v21 = network3;
        networkSignature = [v12 networkSignature];
        ipv4NwSignature = [networkSignature ipv4NwSignature];
        networkSignature2 = [v56 networkSignature];
        [networkSignature2 ipv4NwSignature];
        v48 = v51 = ipv4NwSignature;
        if ([ipv4NwSignature isEqualToData:?])
        {
          networkSignature3 = [v12 networkSignature];
          ipv6NwSignature = [networkSignature3 ipv6NwSignature];
          networkSignature4 = [v56 networkSignature];
          [networkSignature4 ipv6NwSignature];
          v41 = v44 = ipv6NwSignature;
          v40 = network3;
          if ([ipv6NwSignature isEqualToData:?])
          {
            networkSignature5 = [v12 networkSignature];
            wifiSSID = [networkSignature5 wifiSSID];
            networkSignature6 = [v56 networkSignature];
            wifiSSID2 = [networkSignature6 wifiSSID];
            v39 = wifiSSID;
            v26 = wifiSSID;
            v27 = wifiSSID2;
            if ([v26 isEqualToString:wifiSSID2])
            {
              networkSignature7 = [v12 networkSignature];
              wifiPassword = [networkSignature7 wifiPassword];
              networkSignature8 = [v56 networkSignature];
              wifiPassword2 = [networkSignature8 wifiPassword];
              v28 = [wifiPassword isEqualToString:wifiPassword2];
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }

          v46 = v28;

          v30 = v50;
          v21 = v40;
          v29 = v47;
        }

        else
        {
          v46 = 0;
          v29 = v47;
          v30 = v50;
        }

        listCopy = v56;
        v10 = v53;
        v9 = v54;
        if (v46)
        {
          v31 = v12;
          goto LABEL_27;
        }
      }

LABEL_22:
      v11 = v11 + 1;
    }

    while (v9 != v11);
    v9 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v31 = 0;
LABEL_27:
  v7 = v33;
LABEL_29:

LABEL_30:

  return v31;
}

- (void)sendCAMetricsForCleanUpRecordInfo:(cleanUpStats *)info
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSNumber numberWithUnsignedLongLong:info->var0];
  [v4 setObject:v5 forKey:@"number_of_first_party_BR_records_count"];

  v6 = [NSNumber numberWithUnsignedLongLong:info->var2];
  [v4 setObject:v6 forKey:@"number_of_first_party_BR_records_updated_count"];

  v7 = [NSNumber numberWithUnsignedLongLong:info->var1];
  [v4 setObject:v7 forKey:@"number_of_first_party_BR_records_cleaned_up_count"];

  v8 = [NSNumber numberWithUnsignedLongLong:info->var3];
  [v4 setObject:v8 forKey:@"number_of_pref_nw_records_count"];

  v9 = [NSNumber numberWithUnsignedLongLong:info->var5];
  [v4 setObject:v9 forKey:@"number_of_pref_nw_records_updated_count"];

  v10 = [NSNumber numberWithUnsignedLongLong:info->var4];
  [v4 setObject:v10 forKey:@"number_of_pref_nw_records_cleaned_up_count"];

  v11 = [NSNumber numberWithUnsignedLongLong:info->var6];
  [v4 setObject:v11 forKey:@"number_of_third_party_BR_records_count"];

  v13 = v4;
  v12 = v4;
  AnalyticsSendEventLazy();
}

- (void)cleanThreadKeychainDatabase:(id)database
{
  databaseCopy = database;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B300;
  v7[3] = &unk_1000791D0;
  v7[4] = self;
  v8 = databaseCopy;
  v6 = databaseCopy;
  dispatch_async(v5, v7);
}

- (BOOL)updateRecord:(id)record
{
  recordCopy = record;
  keyChainItemRepresentationForActiveDataSetRecordAddOperation = [recordCopy keyChainItemRepresentationForActiveDataSetRecordAddOperation];
  v5 = keyChainItemRepresentationForActiveDataSetRecordAddOperation;
  if (keyChainItemRepresentationForActiveDataSetRecordAddOperation)
  {
    v6 = SecItemAdd(keyChainItemRepresentationForActiveDataSetRecordAddOperation, 0);
    if (v6 == -25299)
    {
      v7 = sub_10001B194(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[THThreadNetworkCredentialsKeychainBackingStore updateRecord:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Credential exists. Will update instead.", &v12, 0xCu);
      }

      keyChainQueryForActiveDataSetRecordUpdateOperation = [recordCopy keyChainQueryForActiveDataSetRecordUpdateOperation];
      keyChainItemRepresentationForActiveDataSetRecordUpdateOperation = [recordCopy keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
      v6 = SecItemUpdate(keyChainQueryForActiveDataSetRecordUpdateOperation, keyChainItemRepresentationForActiveDataSetRecordUpdateOperation);
    }

    v10 = v6 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isPreferred:(id)preferred
{
  preferredCopy = preferred;
  network = [preferredCopy network];
  v6 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForNetwork:network];

  if (v6)
  {
    v34 = 0;
    v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v6 error:&v34];
    v8 = v34;
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      network2 = [preferredCopy network];
      networkName = [network2 networkName];
      *buf = 136315650;
      v37 = "[THThreadNetworkCredentialsKeychainBackingStore isPreferred:]";
      v38 = 1024;
      v39 = 3215;
      v40 = 2112;
      v41 = networkName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database for Network  = %@", buf, 0x1Cu);
    }

    if (v7 && [v7 count])
    {
      network3 = [preferredCopy network];
      v13 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:network3];

      v33 = 0;
      v14 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:v13 error:&v33];
      v15 = v33;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v26 = v15;
        v27 = v7;
        v28 = v8;
        v19 = 0;
        v20 = *v30;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v16);
            }

            borderAgent = [*(*(&v29 + 1) + 8 * i) borderAgent];
            discriminatorId = [borderAgent discriminatorId];

            if (discriminatorId)
            {
              if (v19)
              {
                v24 = 0;
                goto LABEL_23;
              }

              v19 = 1;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 1;
LABEL_23:
        v7 = v27;
        v8 = v28;
        v15 = v26;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v13 = sub_10001B194(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003EDB8(preferredCopy);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003EE70();
    }
  }

  return v24;
}

- (BOOL)fetchRecord:(id)record
{
  v19 = 0;
  v4 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:record error:&v19];
  v5 = v19;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([(THThreadNetworkCredentialsKeychainBackingStore *)self isPreferred:v12, v15])
        {
          credentials = [v12 credentials];
          [credentials setIsActiveDevice:0];

          v9 |= [(THThreadNetworkCredentialsKeychainBackingStore *)self updateRecord:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (BOOL)skipDeleteWithBorderAgent:(id)agent
{
  v4 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:agent];
  LOBYTE(self) = [(THThreadNetworkCredentialsKeychainBackingStore *)self fetchRecord:v4];

  return self;
}

- (BOOL)skipDeleteWithUUID:(id)d
{
  v4 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifier:d];
  LOBYTE(self) = [(THThreadNetworkCredentialsKeychainBackingStore *)self fetchRecord:v4];

  return self;
}

- (unint64_t)getCountOfThreadBorderRoutersWithMdns:(id)mdns
{
  mdnsCopy = mdns;
  if (!mdnsCopy)
  {
    mdnsCopy = [objc_opt_new() init];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10001DFBC;
  v23 = sub_10001DFCC;
  v4 = mdnsCopy;
  v24 = v4;
  v5 = dispatch_semaphore_create(0);
  v6 = v20[5];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10002EBF8;
  v16 = &unk_100078C60;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  v8 = &_dispatch_main_q;
  [v6 startScan:&v13 queue:&_dispatch_main_q timeInSec:5];

  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003EEF4();
  }

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  findNWs = [v20[5] findNWs];
  v11 = sub_10001B194(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10003EF78();
  }

  _Block_object_dispose(&v19, 8);
  return findNWs;
}

- (id)dataFromHexString:(id)string
{
  lowercaseString = [string lowercaseString];
  v4 = objc_opt_new();
  v15 = 0;
  v5 = [lowercaseString length];
  if (v5 >= 2)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = v6 + 1;
      v9 = [lowercaseString characterAtIndex:v6];
      if (v9 >= 48)
      {
        v10 = v9 & 0x7F;
        v11 = v9 <= 0x39u || v10 >= 0x61;
        v12 = !v11;
        if (v10 <= 0x66 && !v12)
        {
          __str[0] = v9;
          __str[1] = [lowercaseString characterAtIndex:v8];
          HIBYTE(v15) = strtol(__str, 0, 16);
          [v4 appendBytes:&v15 + 1 length:1];
          v8 = v6 + 2;
        }
      }

      v6 = v8;
    }

    while (v8 < v7);
  }

  return v4;
}

- (BOOL)isMatchingMdnsRecords:(id)records preferredNw:(id)nw
{
  recordsCopy = records;
  nwCopy = nw;
  v7 = nwCopy;
  if (!recordsCopy || !nwCopy)
  {
    networkName = sub_10001B194(1);
    if (os_log_type_enabled(networkName, OS_LOG_TYPE_INFO))
    {
      v16 = 136315906;
      v17 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingMdnsRecords:preferredNw:]";
      v18 = 1024;
      v19 = 3318;
      v20 = 2112;
      v21 = recordsCopy;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, networkName, OS_LOG_TYPE_INFO, "%s:%d Nil parameter, mdnsNW : %@, preferredNw : %@ ", &v16, 0x26u);
    }

    goto LABEL_11;
  }

  networkName = [recordsCopy networkName];
  networkName2 = [v7 networkName];
  if (([networkName isEqualToString:networkName2]& 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  extendedPANID = [recordsCopy extendedPANID];
  extendedPANID2 = [v7 extendedPANID];
  v12 = [extendedPANID isEqualToData:extendedPANID2];

  if (!v12)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v13 = sub_10001B194(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10003EFFC(v7, recordsCopy);
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (BOOL)isMatchingNetworkSignature:(id)signature preferredNwSignature:(id)nwSignature preferred:(id)preferred signaturePrefEntries:(id)entries updatedPreferred:(id *)updatedPreferred
{
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  preferredCopy = preferred;
  entriesCopy = entries;
  v136 = entriesCopy;
  if (entriesCopy)
  {
    allObjects = [entriesCopy allObjects];
    v16 = [NSMutableArray arrayWithArray:allObjects];

    if (!v16)
    {
      v18 = sub_10001B194(1);
      v17 = nwSignatureCopy;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003F0C0();
      }

      v20 = 0;
      v19 = 0;
      goto LABEL_47;
    }

    v148 = v16;
    [v16 sortUsingComparator:&stru_100079218];
  }

  else
  {
    v148 = 0;
  }

  v17 = nwSignatureCopy;
  if (![(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:signatureCopy]&& ![(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:nwSignatureCopy])
  {
    v19 = 1;
    v18 = sub_10001B194(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
      v179 = 1024;
      v180 = 3391;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s:%d : Current device WiFi info and Preferred Network WiFi info are empty, no need to update !", buf, 0x12u);
    }

    goto LABEL_46;
  }

  if (![(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:nwSignatureCopy]&& [(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:signatureCopy])
  {
    v18 = sub_10001B194(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003F144();
    }

    v19 = 0;
    goto LABEL_46;
  }

  if (![(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:signatureCopy]&& [(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:nwSignatureCopy])
  {
    v19 = 1;
    v18 = sub_10001B194(1);
    v20 = v148;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003F1C8();
    }

    goto LABEL_47;
  }

  wifiSSID = [signatureCopy wifiSSID];
  wifiSSID2 = [nwSignatureCopy wifiSSID];
  v23 = [wifiSSID isEqualToString:wifiSSID2];

  if (!v23)
  {
    v19 = 0;
    v17 = nwSignatureCopy;
LABEL_50:
    v20 = v148;
    goto LABEL_48;
  }

  v152 = preferredCopy;
  v24 = sub_10001B194(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    wifiSSID3 = [signatureCopy wifiSSID];
    *buf = 136315650;
    v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
    v179 = 1024;
    v180 = 3417;
    v181 = 2112;
    v182 = wifiSSID3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d : Networks SSIDs (%@) are matching!!", buf, 0x1Cu);
  }

  ipv4NwSignature = [nwSignatureCopy ipv4NwSignature];
  ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
  updatedPreferredCopy = updatedPreferred;
  v139 = signatureCopy;
  selfCopy = self;
  if (([ipv4NwSignature isEqualToData:ipv4NwSignature2] & 1) == 0)
  {

LABEL_52:
    v66 = sub_10001B194(1);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_10003F24C(signatureCopy);
    }

    v67 = sub_10001B194(1);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      ipv4NwSignature3 = [signatureCopy ipv4NwSignature];
      ipv6NwSignature = [signatureCopy ipv6NwSignature];
      *buf = 136315906;
      v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
      v179 = 1024;
      v180 = 3425;
      v181 = 2112;
      v182 = ipv4NwSignature3;
      v183 = 2112;
      v184 = ipv6NwSignature;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s:%d: current network signature(ipv4 : %@, ipv6 : %@)", buf, 0x26u);
    }

    v70 = sub_10001B194(1);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      ipv4NwSignature4 = [nwSignatureCopy ipv4NwSignature];
      ipv6NwSignature2 = [nwSignatureCopy ipv6NwSignature];
      *buf = 136315906;
      v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
      v179 = 1024;
      v180 = 3427;
      v181 = 2112;
      v182 = ipv4NwSignature4;
      v183 = 2112;
      v184 = ipv6NwSignature2;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s:%d: preferred network for network signature(ipv4 : %@, ipv6 : %@)", buf, 0x26u);
    }

    if (v136)
    {
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v141 = v148;
      v154 = [v141 countByEnumeratingWithState:&v169 objects:v176 count:16];
      if (!v154)
      {
        goto LABEL_70;
      }

      v145 = *v170;
      while (1)
      {
        for (i = 0; i != v154; i = i + 1)
        {
          if (*v170 != v145)
          {
            objc_enumerationMutation(v141);
          }

          v74 = *(*(&v169 + 1) + 8 * i);
          network = [v74 network];
          networkName = [network networkName];
          network2 = [v152 network];
          networkName2 = [network2 networkName];
          if ([networkName isEqualToString:networkName2])
          {
            network3 = [v74 network];
            extendedPANID = [network3 extendedPANID];
            network4 = [v152 network];
            extendedPANID2 = [network4 extendedPANID];
            v83 = [extendedPANID isEqualToData:extendedPANID2];

            self = selfCopy;
            signatureCopy = v139;

            if (v83)
            {

              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v150 = v141;
              v109 = [v150 countByEnumeratingWithState:&v165 objects:v175 count:16];
              preferredCopy = v152;
              if (!v109)
              {
                goto LABEL_103;
              }

              v110 = v109;
              v111 = *v166;
              v143 = *v166;
              while (2)
              {
                v112 = 0;
                v147 = v110;
LABEL_94:
                if (*v166 != v111)
                {
                  objc_enumerationMutation(v150);
                }

                v113 = *(*(&v165 + 1) + 8 * v112);
                network5 = [v113 network];
                networkName3 = [network5 networkName];
                network6 = [preferredCopy network];
                networkName4 = [network6 networkName];
                if ([networkName3 isEqualToString:networkName4])
                {
                  network7 = [v113 network];
                  extendedPANID3 = [network7 extendedPANID];
                  network8 = [preferredCopy network];
                  extendedPANID4 = [network8 extendedPANID];
                  v156 = [extendedPANID3 isEqualToData:extendedPANID4];

                  preferredCopy = v152;
                  v110 = v147;

                  self = selfCopy;
                  v111 = v143;

                  if (v156)
                  {
LABEL_101:
                    if (v110 == ++v112)
                    {
                      v110 = [v150 countByEnumeratingWithState:&v165 objects:v175 count:16];
                      if (!v110)
                      {
LABEL_103:
                        v20 = v150;

                        v19 = 1;
                        v18 = sub_10001B194(1);
                        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                        {
                          network9 = [preferredCopy network];
                          networkName5 = [network9 networkName];
                          *buf = 136315650;
                          v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
                          v179 = 1024;
                          v180 = 3470;
                          v181 = 2112;
                          v182 = networkName5;
                          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d: No need to update, signature entry for the same thread network exist : %@", buf, 0x1Cu);
                        }

                        signatureCopy = v139;
                        goto LABEL_106;
                      }

                      continue;
                    }

                    goto LABEL_94;
                  }
                }

                else
                {
                }

                break;
              }

              [(THThreadNetworkCredentialsKeychainBackingStore *)self deletePreferredNetworkEntryWithoutRecords:v113];
              goto LABEL_101;
            }
          }

          else
          {
          }
        }

        v154 = [v141 countByEnumeratingWithState:&v169 objects:v176 count:16];
        if (!v154)
        {
LABEL_70:

          updatedPreferred = updatedPreferredCopy;
          break;
        }
      }
    }

    v84 = [THNetworkSignature alloc];
    ipv4NwSignature5 = [signatureCopy ipv4NwSignature];
    ipv6NwSignature3 = [signatureCopy ipv6NwSignature];
    v18 = [v84 initWithSignatures:ipv4NwSignature5 ipv6NwSignature:ipv6NwSignature3 wifSSID:&stru_100079A28 wifiPassword:@"ApplePreferredNetworkRecordLabel"];

    v133 = v18 == 0;
    if (v18)
    {
      v87 = [THPreferredThreadNetwork alloc];
      network10 = [v152 network];
      credentialsDataSetRecord = [v152 credentialsDataSetRecord];
      creationDate = [v152 creationDate];
      userInfo = [v152 userInfo];
      *updatedPreferred = [v87 initWithThreadNetwork:network10 networkSignature:v18 credentialsDataSetRecord:credentialsDataSetRecord creationDate:creationDate lastModificationDate:0 userInfo:userInfo];

      if (![(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferred:*updatedPreferred])
      {
        v19 = 1;
        v17 = nwSignatureCopy;
        preferredCopy = v152;
LABEL_46:
        v20 = v148;
        goto LABEL_47;
      }

      v92 = sub_10001B194(1);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        network11 = [v152 network];
        networkName6 = [network11 networkName];
        *buf = 136315650;
        v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
        v179 = 1024;
        v180 = 3490;
        v181 = 2112;
        v182 = networkName6;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "%s:%d: Original Preferred Network with the name : %@", buf, 0x1Cu);
      }

      preferredCopy = v152;
      [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:v152];
      v95 = sub_10001B194(1);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        network12 = [*updatedPreferred network];
        networkName7 = [network12 networkName];
        *buf = 136315650;
        v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
        v179 = 1024;
        v180 = 3492;
        v181 = 2112;
        v182 = networkName7;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "%s:%d: Stored updated Preferred Network with the name : %@", buf, 0x1Cu);

        preferredCopy = v152;
      }

      [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:*updatedPreferred];
      v17 = nwSignatureCopy;
      if (!v136)
      {
        v20 = v148;
        v19 = v18 == 0;
        goto LABEL_47;
      }

      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v142 = v148;
      v155 = [v142 countByEnumeratingWithState:&v161 objects:v174 count:16];
      if (v155)
      {
        obja = v18;
        v98 = *v162;
        v138 = *v162;
        while (1)
        {
          for (j = 0; j != v155; j = j + 1)
          {
            if (*v162 != v98)
            {
              objc_enumerationMutation(v142);
            }

            v100 = *(*(&v161 + 1) + 8 * j);
            network13 = [v100 network];
            networkName8 = [network13 networkName];
            network14 = [preferredCopy network];
            networkName9 = [network14 networkName];
            if (![networkName8 isEqualToString:networkName9])
            {

LABEL_87:
              [(THThreadNetworkCredentialsKeychainBackingStore *)self deletePreferredNetworkEntryWithoutRecords:v100];
              goto LABEL_88;
            }

            network15 = [v100 network];
            extendedPANID5 = [network15 extendedPANID];
            network16 = [v152 network];
            extendedPANID6 = [network16 extendedPANID];
            v146 = [extendedPANID5 isEqualToData:extendedPANID6];

            signatureCopy = v139;
            self = selfCopy;

            v98 = v138;
            preferredCopy = v152;

            if ((v146 & 1) == 0)
            {
              goto LABEL_87;
            }

LABEL_88:
            v17 = nwSignatureCopy;
          }

          v155 = [v142 countByEnumeratingWithState:&v161 objects:v174 count:16];
          if (!v155)
          {
            v20 = v148;
            v18 = obja;
LABEL_111:
            v19 = v133;

            goto LABEL_47;
          }
        }
      }
    }

    else
    {
      v142 = sub_10001B194(1);
      preferredCopy = v152;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        sub_10003F2EC();
      }

      v17 = nwSignatureCopy;
    }

    v20 = v148;
    goto LABEL_111;
  }

  ipv6NwSignature4 = [nwSignatureCopy ipv6NwSignature];
  ipv6NwSignature5 = [signatureCopy ipv6NwSignature];
  v30 = [ipv6NwSignature4 isEqualToData:ipv6NwSignature5];

  signatureCopy = v139;
  if ((v30 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (!v136)
  {
    v19 = 1;
    v17 = nwSignatureCopy;
    goto LABEL_50;
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v18 = v148;
  v153 = [v18 countByEnumeratingWithState:&v157 objects:v173 count:16];
  if (!v153)
  {
    v19 = 1;
    goto LABEL_115;
  }

  v149 = *v158;
  obj = v18;
  while (2)
  {
    for (k = 0; k != v153; k = k + 1)
    {
      if (*v158 != v149)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v157 + 1) + 8 * k);
      networkSignature = [v32 networkSignature];
      v34 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy wifiInfoAvailable:networkSignature];

      if ((v34 & 1) == 0)
      {
        network17 = [v32 network];
        networkName10 = [network17 networkName];
        network18 = [preferredCopy network];
        networkName11 = [network18 networkName];
        if ([networkName10 isEqualToString:networkName11])
        {
          network19 = [v32 network];
          extendedPANID7 = [network19 extendedPANID];
          network20 = [v152 network];
          extendedPANID8 = [network20 extendedPANID];
          v144 = [extendedPANID7 isEqualToData:extendedPANID8];

          preferredCopy = v152;
          signatureCopy = v139;
          if (v144)
          {
            continue;
          }
        }

        else
        {

          signatureCopy = v139;
        }

        creationDate2 = [v32 creationDate];
        creationDate3 = [preferredCopy creationDate];
        v45 = [creationDate2 compare:creationDate3];

        v46 = sub_10001B194(1);
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
        if (v45 != -1)
        {
          if (v47)
          {
            network21 = [v32 network];
            networkName12 = [network21 networkName];
            *buf = 136315650;
            v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
            v179 = 1024;
            v180 = 3542;
            v181 = 2112;
            v182 = networkName12;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s:%d: No need to update signature for  : %@", buf, 0x1Cu);
          }

          v19 = 1;
          v18 = obj;
          v20 = obj;
          v17 = nwSignatureCopy;
          preferredCopy = v152;
          goto LABEL_47;
        }

        if (v47)
        {
          network22 = [v32 network];
          networkName13 = [network22 networkName];
          *buf = 136315650;
          v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
          v179 = 1024;
          v180 = 3546;
          v181 = 2112;
          v182 = networkName13;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s:%d: WiFi Info is not available for the Preferred Network Entry : %@, updating it", buf, 0x1Cu);
        }

        [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy dumpPreferredNetwork:v32];
        v50 = [THNetworkSignature alloc];
        networkSignature2 = [v32 networkSignature];
        ipv4NwSignature6 = [networkSignature2 ipv4NwSignature];
        networkSignature3 = [v32 networkSignature];
        ipv6NwSignature6 = [networkSignature3 ipv6NwSignature];
        networkSignature4 = [v152 networkSignature];
        wifiSSID4 = [networkSignature4 wifiSSID];
        v57 = [v50 initWithSignatures:ipv4NwSignature6 ipv6NwSignature:ipv6NwSignature6 wifSSID:wifiSSID4 wifiPassword:@"ApplePreferredNetworkRecordLabel"];

        v58 = v57;
        v59 = v57 == 0;
        if (!v57)
        {
          v126 = sub_10001B194(1);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            sub_10003F370();
          }

          v17 = nwSignatureCopy;
          preferredCopy = v152;
          v18 = obj;
          v19 = v59;
          goto LABEL_128;
        }

        v60 = [THPreferredThreadNetwork alloc];
        network23 = [v32 network];
        credentialsDataSetRecord2 = [v32 credentialsDataSetRecord];
        creationDate4 = [v32 creationDate];
        userInfo2 = [v32 userInfo];
        *updatedPreferredCopy = [v60 initWithThreadNetwork:network23 networkSignature:v58 credentialsDataSetRecord:credentialsDataSetRecord2 creationDate:creationDate4 lastModificationDate:0 userInfo:userInfo2];

        if ([(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy storePreferred:*updatedPreferredCopy])
        {
          v127 = sub_10001B194(1);
          preferredCopy = v152;
          v18 = obj;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
          {
            network24 = [v152 network];
            networkName14 = [network24 networkName];
            *buf = 136315650;
            v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
            v179 = 1024;
            v180 = 3560;
            v181 = 2112;
            v182 = networkName14;
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "%s:%d: Original Preferred Network with the name : %@", buf, 0x1Cu);

            preferredCopy = v152;
          }

          [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy dumpPreferredNetwork:preferredCopy];
          v130 = sub_10001B194(1);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
          {
            network25 = [*updatedPreferredCopy network];
            networkName15 = [network25 networkName];
            *buf = 136315650;
            v178 = "[THThreadNetworkCredentialsKeychainBackingStore isMatchingNetworkSignature:preferredNwSignature:preferred:signaturePrefEntries:updatedPreferred:]";
            v179 = 1024;
            v180 = 3562;
            v181 = 2112;
            v182 = networkName15;
            _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_INFO, "%s:%d: Stored updated Preferred Network with the name : %@", buf, 0x1Cu);

            preferredCopy = v152;
          }

          [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy dumpPreferredNetwork:*updatedPreferredCopy];
          [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy deletePreferredNetworkEntryWithoutRecords:v32];
          [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy deletePreferredNetworkEntryWithoutRecords:preferredCopy];
          v17 = nwSignatureCopy;
          v19 = v59;
LABEL_128:

          v20 = v18;
          signatureCopy = v139;
          goto LABEL_47;
        }

        signatureCopy = v139;
        preferredCopy = v152;
      }
    }

    v18 = obj;
    v19 = 1;
    v153 = [obj countByEnumeratingWithState:&v157 objects:v173 count:16];
    if (v153)
    {
      continue;
    }

    break;
  }

LABEL_115:
  v20 = v18;
LABEL_106:
  v17 = nwSignatureCopy;
LABEL_47:

LABEL_48:
  return v19;
}

- (BOOL)matchPreferredNetworkRecordWithMdns:(id)mdns
{
  mdnsCopy = mdns;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkRecordWithMdns:]";
    *&buf[12] = 1024;
    *&buf[14] = 3611;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d: Entered. Trying to match Preferred with Mdns records", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = sub_10001DFBC;
  v27 = sub_10001DFCC;
  v28 = objc_alloc_init(ThreadBRFinder);
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    v16 = sub_10001B194(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315394;
      v22 = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkRecordWithMdns:]";
      v23 = 1024;
      v24 = 3615;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", v21, 0x12u);
    }

    goto LABEL_15;
  }

  network = [mdnsCopy network];
  networkName = [network networkName];
  network2 = [mdnsCopy network];
  extendedPANID = [network2 extendedPANID];
  v10 = [v5 dispatchStartScan:networkName extendedPanIdToFind:extendedPANID borderAgentIdToFind:0];

  if ((v10 & 1) == 0)
  {
    v16 = sub_10001B194(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003F3F4();
    }

LABEL_15:

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v11 = sub_10001B194(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315394;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkRecordWithMdns:]";
    v23 = 1024;
    v24 = 3624;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d: Waiting for Preferred network record to match on Mdns meshcop", v21, 0x12u);
  }

  v12 = dispatch_time(0, 10000000000);
  baFinderSemaphore = [*(*&buf[8] + 40) baFinderSemaphore];
  v14 = dispatch_semaphore_wait(baFinderSemaphore, v12);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030804;
  block[3] = &unk_1000790C8;
  block[4] = buf;
  dispatch_async(&_dispatch_main_q, block);
  if (v14)
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003F478();
    }

    [*(*&buf[8] + 40) clear];
    goto LABEL_16;
  }

  v19 = sub_10001B194(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315394;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkRecordWithMdns:]";
    v23 = 1024;
    v24 = 3639;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s:%d: Preferred network record matches on Mdns meshcop", v21, 0x12u);
  }

  [*(*&buf[8] + 40) clear];
  v17 = 1;
LABEL_17:
  _Block_object_dispose(buf, 8);

  return v17;
}

- (id)matchPreferredNetworkWithMdns:(id)mdns
{
  mdnsCopy = mdns;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkWithMdns:]";
    v23 = 1024;
    v24 = 3646;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Entered. Matching Preferred with Mdns records", buf, 0x12u);
  }

  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = mdnsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([(THThreadNetworkCredentialsKeychainBackingStore *)self matchPreferredNetworkRecordWithMdns:v13, v16])
        {
          [v6 addObject:v13];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    if (v10)
    {
      v14 = [NSSet setWithArray:v6];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)getTheMdnsMatchingEntryFromTheList:(id)list
{
  listCopy = list;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10001DFBC;
  v22 = sub_10001DFCC;
  v23 = objc_alloc_init(ThreadBRFinder);
  v4 = v19[5];
  if (!v4)
  {
    v10 = sub_10001B194(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[THThreadNetworkCredentialsKeychainBackingStore getTheMdnsMatchingEntryFromTheList:]";
      v26 = 1024;
      v27 = 3672;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d: baFinder is nil..", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (([v4 disPatchStartScanToMatchListOfPreferredNetworkEntries:listCopy] & 1) == 0)
  {
    v10 = sub_10001B194(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003F4FC();
    }

LABEL_14:

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[THThreadNetworkCredentialsKeychainBackingStore getTheMdnsMatchingEntryFromTheList:]";
    v26 = 1024;
    v27 = 3682;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Waiting for Preferred network records to match on Mdns meshcop", buf, 0x12u);
  }

  v6 = dispatch_time(0, 10000000000);
  baFinderSemaphore = [v19[5] baFinderSemaphore];
  v8 = dispatch_semaphore_wait(baFinderSemaphore, v6);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030DD8;
  block[3] = &unk_1000790C8;
  block[4] = &v18;
  dispatch_async(&_dispatch_main_q, block);
  if (v8)
  {
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F580();
    }

    [v19[5] clear];
    goto LABEL_15;
  }

  preferredRecord = [v19[5] preferredRecord];
  v14 = sub_10001B194(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    network = [preferredRecord network];
    networkName = [network networkName];
    *buf = 136315650;
    v25 = "[THThreadNetworkCredentialsKeychainBackingStore getTheMdnsMatchingEntryFromTheList:]";
    v26 = 1024;
    v27 = 3700;
    v28 = 2112;
    v29 = networkName;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:%d: Preferred network record matches on Mdns meshcop preferred network name : %@", buf, 0x1Cu);
  }

  [v19[5] clear];
  v11 = preferredRecord;
LABEL_16:
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (BOOL)deletePreferredNetworkEntry:(id)entry
{
  entryCopy = entry;
  v4 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:entryCopy];
  v5 = v4;
  if (!v4)
  {
    v10 = sub_10001B194(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003F760();
    }

    goto LABEL_15;
  }

  v6 = SecItemDelete(v4);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    network = [entryCopy network];
    networkName = [network networkName];
    v17 = 136315650;
    v18 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntry:]";
    v19 = 2112;
    v20 = networkName;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network : %@, Deletion result :(err=%d)", &v17, 0x1Cu);
  }

  if (v6)
  {
    v10 = sub_10001B194(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003F604(entryCopy);
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  network2 = [entryCopy network];
  v10 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetwork:network2];

  v12 = SecItemDelete(v10);
  v13 = sub_10001B194(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntry:]";
    v19 = 1024;
    LODWORD(v20) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: GOT: (err=%d)", &v17, 0x12u);
  }

  v14 = v12 == 0;
  if (v12)
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003F6A8(entryCopy);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v14;
}

- (BOOL)deletePreferredNetworkEntryWithoutRecords:(id)records
{
  recordsCopy = records;
  v4 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:recordsCopy];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntryWithoutRecords:]";
      v15 = 1024;
      *v16 = 3745;
      *&v16[4] = 2112;
      *&v16[6] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: SID: Delete keychain query dictionary keyChainDelete: %@", &v13, 0x1Cu);
    }

    v7 = SecItemDelete(v4);
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      network = [recordsCopy network];
      networkName = [network networkName];
      v13 = 136315650;
      v14 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntryWithoutRecords:]";
      v15 = 2112;
      *v16 = networkName;
      *&v16[8] = 1024;
      *&v16[10] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network : %@, Deletion result :(err=%d)", &v13, 0x1Cu);
    }

    if (!v7)
    {
      v11 = 1;
      goto LABEL_13;
    }

    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003F7E4(recordsCopy);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10003F89C();
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)deleteOldEntryForTheNetworkSignatureIfThreadNetworkIsDifferent:(id)different nwSignature:(id)signature
{
  differentCopy = different;
  v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForSignature:signature];
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    v26 = 1;
    goto LABEL_25;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v9)
  {
    v26 = 1;
    goto LABEL_24;
  }

  v10 = v9;
  v28 = v8;
  v11 = *v37;
  selfCopy = self;
  v30 = differentCopy;
  v33 = *v37;
  while (2)
  {
    v12 = 0;
    v34 = v10;
    do
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v36 + 1) + 8 * v12);
      [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:v13];
      networkSignature = [v13 networkSignature];
      if ([(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:networkSignature])
      {
        network = [v13 network];
        networkName = [network networkName];
        network2 = [differentCopy network];
        networkName2 = [network2 networkName];
        if ([networkName isEqualToString:networkName2])
        {
          network3 = [v13 network];
          [network3 extendedPANID];
          v20 = v32 = network;
          network4 = [differentCopy network];
          extendedPANID = [network4 extendedPANID];
          v31 = [v20 isEqualToData:extendedPANID];

          differentCopy = v30;
          self = selfCopy;

          v11 = v33;
          v10 = v34;
          if (v31)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }

        v11 = v33;
        v10 = v34;
      }

LABEL_14:
      v23 = sub_10001B194(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        network5 = [v13 network];
        networkName3 = [network5 networkName];
        *buf = 136315650;
        v41 = "[THThreadNetworkCredentialsKeychainBackingStore deleteOldEntryForTheNetworkSignatureIfThreadNetworkIsDifferent:nwSignature:]";
        v42 = 1024;
        v43 = 3775;
        v44 = 2112;
        v45 = networkName3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d: Deleting the Preferred Network Entry : %@", buf, 0x1Cu);
      }

      if (![(THThreadNetworkCredentialsKeychainBackingStore *)self deletePreferredNetworkEntry:v13])
      {
        v26 = 0;
        goto LABEL_22;
      }

LABEL_17:
      v12 = v12 + 1;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v26 = 1;
LABEL_22:
  v8 = v28;
LABEL_24:

LABEL_25:
  return v26;
}

- (id)checkIfNetworkSignatureUpdateIsRequiredForPreferredNetwork:(id)network nwSignature:(id)signature signaturePrefEntries:(id)entries
{
  networkCopy = network;
  v37 = 0;
  v9 = [(THThreadNetworkCredentialsKeychainBackingStore *)self checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:networkCopy nwSignature:signature signaturePrefEntries:entries];
  if (!v9)
  {
    v9 = networkCopy;
  }

  credentialsDataSetRecord = [v9 credentialsDataSetRecord];
  credentialsDataSet = [credentialsDataSetRecord credentialsDataSet];
  dataSetArray = [credentialsDataSet dataSetArray];
  v36 = 0;
  [(THThreadNetworkCredentialsKeychainBackingStore *)self areValidDataSetTLVs:dataSetArray creds:&v36 updateATS:1 isATSAppended:&v37];
  v13 = v36;

  if (v37)
  {
    keyChainItemRepresentationForActiveDataSetRecordAddOperation = [v13 keyChainItemRepresentationForActiveDataSetRecordAddOperation];
    v15 = keyChainItemRepresentationForActiveDataSetRecordAddOperation;
    if (!keyChainItemRepresentationForActiveDataSetRecordAddOperation)
    {
LABEL_14:
      v24 = 0;
      goto LABEL_15;
    }

    v16 = SecItemAdd(keyChainItemRepresentationForActiveDataSetRecordAddOperation, 0);
    if (v16 == -25299)
    {
      v17 = sub_10001B194(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Credential exists. Update instead.", buf, 2u);
      }

      keyChainQueryForActiveDataSetRecordUpdateOperation = [v13 keyChainQueryForActiveDataSetRecordUpdateOperation];
      keyChainItemRepresentationForActiveDataSetRecordUpdateOperation = [v13 keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
      v16 = SecItemUpdate(keyChainQueryForActiveDataSetRecordUpdateOperation, keyChainItemRepresentationForActiveDataSetRecordUpdateOperation);
    }

    if (v16)
    {
      v20 = sub_10001B194(1);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      *buf = 67109120;
      LODWORD(v39) = v16;
      v21 = "Error during updating the record : (err=%d)";
      v22 = v20;
      v23 = 8;
    }

    else
    {
      v28 = [THPreferredThreadNetwork alloc];
      network = [v9 network];
      networkSignature = [v9 networkSignature];
      creationDate = [v9 creationDate];
      userInfo = [v9 userInfo];
      v24 = [v28 initWithThreadNetwork:network networkSignature:networkSignature credentialsDataSetRecord:v13 creationDate:creationDate lastModificationDate:0 userInfo:userInfo];

      if (v24)
      {
        if ([(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferred:v24])
        {
          v33 = sub_10001B194(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            network2 = [v24 network];
            networkName = [network2 networkName];
            *buf = 138412290;
            v39 = networkName;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Sored Preferred Network with the name : %@", buf, 0xCu);
          }

          v25 = v24;
          v24 = v25;
          goto LABEL_16;
        }

LABEL_15:
        v25 = v9;
LABEL_16:
        v26 = v25;

        goto LABEL_18;
      }

      v20 = sub_10001B194(1);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v21 = "Error during updating the preferred network with";
      v22 = v20;
      v23 = 2;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_13;
  }

  v26 = v9;
LABEL_18:

  return v26;
}

- (id)checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:(id)core nwSignature:(id)signature signaturePrefEntries:(id)entries
{
  coreCopy = core;
  signatureCopy = signature;
  entriesCopy = entries;
  networkSignature = [coreCopy networkSignature];
  v30 = 0;
  v12 = [(THThreadNetworkCredentialsKeychainBackingStore *)self isMatchingNetworkSignature:signatureCopy preferredNwSignature:networkSignature preferred:coreCopy signaturePrefEntries:entriesCopy updatedPreferred:&v30];

  v13 = v30;
  v14 = sub_10001B194(1);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:nwSignature:signaturePrefEntries:]";
      v33 = 1024;
      v34 = 3869;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d: Current Network Signature matches with Preferred Network Signature", buf, 0x12u);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:nwSignature:signaturePrefEntries:]";
    v33 = 1024;
    v34 = 3873;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s:%d: Update is required for the preferred network ssid", buf, 0x12u);
  }

  if (!v13)
  {
    v18 = [THPreferredThreadNetwork alloc];
    network = [coreCopy network];
    credentialsDataSetRecord = [coreCopy credentialsDataSetRecord];
    creationDate = [coreCopy creationDate];
    userInfo = [coreCopy userInfo];
    v13 = [v18 initWithThreadNetwork:network networkSignature:signatureCopy credentialsDataSetRecord:credentialsDataSetRecord creationDate:creationDate lastModificationDate:0 userInfo:userInfo];

    if (!v13)
    {
      v29 = sub_10001B194(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10003F920();
      }

      v13 = 0;
      goto LABEL_5;
    }

    if (![(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferred:v13])
    {
LABEL_5:
      v16 = 0;
      goto LABEL_10;
    }

    v23 = sub_10001B194(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      network2 = [coreCopy network];
      networkName = [network2 networkName];
      *buf = 136315650;
      v32 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:nwSignature:signaturePrefEntries:]";
      v33 = 1024;
      v34 = 3890;
      v35 = 2112;
      v36 = networkName;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d: Original Preferred Network with the name : %@", buf, 0x1Cu);
    }

    [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:coreCopy];
    v26 = sub_10001B194(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      network3 = [v13 network];
      networkName2 = [network3 networkName];
      *buf = 136315650;
      v32 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfNetworkSignatureUpdateIsRequiredForPreferredNetworkCore:nwSignature:signaturePrefEntries:]";
      v33 = 1024;
      v34 = 3892;
      v35 = 2112;
      v36 = networkName2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s:%d: Stored updated Preferred Network with the name : %@", buf, 0x1Cu);
    }

    [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:v13];
  }

  v13 = v13;
  v16 = v13;
LABEL_10:

  return v16;
}

- (id)matchPreferredNetworkWithNetworkSignature:(id)signature nwSignature:(id)nwSignature
{
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[THThreadNetworkCredentialsKeychainBackingStore matchPreferredNetworkWithNetworkSignature:nwSignature:]";
    v29 = 1024;
    v30 = 3902;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d: Entered. Matching Preferred with Network Signatures ", buf, 0x12u);
  }

  if (!nwSignatureCopy)
  {
    v21 = sub_10001B194(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003F9A4();
    }

    goto LABEL_18;
  }

  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = signatureCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {

LABEL_18:
    v18 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  v20 = signatureCopy;
  v12 = 0;
  v13 = *v23;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v22 + 1) + 8 * i);
      networkSignature = [v15 networkSignature];
      v17 = [(THThreadNetworkCredentialsKeychainBackingStore *)self isMatchingNetworkSignature:nwSignatureCopy preferredNwSignature:networkSignature];

      if (v17)
      {
        [v21 addObject:v15];
        v12 = 1;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v11);

  if (v12)
  {
    v18 = [NSSet setWithArray:v21];
  }

  else
  {
    v18 = 0;
  }

  signatureCopy = v20;
LABEL_21:

  return v18;
}

- (void)dumpPreferredNetwork:(id)network
{
  networkCopy = network;
  v4 = sub_10001B194(1);
  v5 = v4;
  if (networkCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      network = [networkCopy network];
      networkName = [network networkName];
      v27 = 136315650;
      v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
      v29 = 1024;
      v30 = 3934;
      v31 = 2112;
      v32 = networkName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network Name : %@", &v27, 0x1Cu);
    }

    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      network2 = [networkCopy network];
      extendedPANID = [network2 extendedPANID];
      v27 = 136315650;
      v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
      v29 = 1024;
      v30 = 3936;
      v31 = 2112;
      v32 = extendedPANID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d: Preferred Network Extended Pan Id : %@", &v27, 0x1Cu);
    }

    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      networkSignature = [networkCopy networkSignature];
      ipv4NwSignature = [networkSignature ipv4NwSignature];
      v27 = 136315650;
      v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
      v29 = 1024;
      v30 = 3938;
      v31 = 2112;
      v32 = ipv4NwSignature;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network IPv4 NwSignature : %@", &v27, 0x1Cu);
    }

    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      networkSignature2 = [networkCopy networkSignature];
      ipv6NwSignature = [networkSignature2 ipv6NwSignature];
      v27 = 136315650;
      v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
      v29 = 1024;
      v30 = 3940;
      v31 = 2112;
      v32 = ipv6NwSignature;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network IPv6 NwSignature : %@", &v27, 0x1Cu);
    }

    networkSignature3 = [networkCopy networkSignature];
    wifiSSID = [networkSignature3 wifiSSID];
    if (wifiSSID)
    {
      v19 = wifiSSID;
      networkSignature4 = [networkCopy networkSignature];
      wifiPassword = [networkSignature4 wifiPassword];

      if (!wifiPassword)
      {
LABEL_15:
        v24 = sub_10001B194(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          creationDate = [networkCopy creationDate];
          v27 = 136315650;
          v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
          v29 = 1024;
          v30 = 3946;
          v31 = 2112;
          v32 = creationDate;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network creation dated : %@", &v27, 0x1Cu);
        }

        v5 = sub_10001B194(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          lastModificationDate = [networkCopy lastModificationDate];
          v27 = 136315650;
          v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
          v29 = 1024;
          v30 = 3948;
          v31 = 2112;
          v32 = lastModificationDate;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network last modified : %@", &v27, 0x1Cu);
        }

        goto LABEL_21;
      }

      networkSignature3 = sub_10001B194(1);
      if (os_log_type_enabled(networkSignature3, OS_LOG_TYPE_DEFAULT))
      {
        networkSignature5 = [networkCopy networkSignature];
        wifiSSID2 = [networkSignature5 wifiSSID];
        v27 = 136315650;
        v28 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetwork:]";
        v29 = 1024;
        v30 = 3943;
        v31 = 2112;
        v32 = wifiSSID2;
        _os_log_impl(&_mh_execute_header, networkSignature3, OS_LOG_TYPE_DEFAULT, "%s:%d: Preferred Network wifi ssid : %@", &v27, 0x1Cu);
      }
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003FA28();
  }

LABEL_21:
}

- (void)dumpPreferredNetworksArray:(id)array
{
  arrayCopy = array;
  v5 = arrayCopy;
  if (arrayCopy && [arrayCopy count])
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetworksArray:]";
      v22 = 1024;
      v23 = 3959;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: === Sorted List of Preferred Networks  ===", buf, 0x12u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          if (v10 == 10)
          {
            v14 = sub_10001B194(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10003FAAC();
            }

            goto LABEL_19;
          }

          [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:*(*(&v15 + 1) + 8 * i), v15];
          ++v10;
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v13 = sub_10001B194(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetworksArray:]";
      v22 = 1024;
      v23 = 3971;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d: ==================================", buf, 0x12u);
    }
  }

  else
  {
    v13 = sub_10001B194(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003FB30();
    }
  }
}

- (void)dumpPreferredNetworks:(id)networks
{
  networksCopy = networks;
  v5 = networksCopy;
  if (networksCopy && [networksCopy count])
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetworks:]";
      v22 = 1024;
      v23 = 3983;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: === List of Preferred Networks ===", buf, 0x12u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          if (v10 == 10)
          {
            v14 = sub_10001B194(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10003FBB4();
            }

            goto LABEL_19;
          }

          [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetwork:*(*(&v15 + 1) + 8 * i), v15];
          ++v10;
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v13 = sub_10001B194(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[THThreadNetworkCredentialsKeychainBackingStore dumpPreferredNetworks:]";
      v22 = 1024;
      v23 = 3995;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d: ==================================", buf, 0x12u);
    }
  }

  else
  {
    v13 = sub_10001B194(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003FC38();
    }
  }
}

- (void)dumpFrozenThreadNetworks:(id)networks
{
  networksCopy = networks;
  v4 = networksCopy;
  if (networksCopy && [networksCopy count])
  {
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[THThreadNetworkCredentialsKeychainBackingStore dumpFrozenThreadNetworks:]";
      v24 = 1024;
      v25 = 4007;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: === List of Frozen Thread Networks ===", buf, 0x12u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = sub_10001B194(1);
          v14 = v13;
          if (v9 == 10)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_10003FCBC();
            }

            goto LABEL_21;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            credentialsDataSet = [v12 credentialsDataSet];
            dataSetArray = [credentialsDataSet dataSetArray];
            *buf = 136315906;
            v23 = "[THThreadNetworkCredentialsKeychainBackingStore dumpFrozenThreadNetworks:]";
            v24 = 1024;
            v25 = 4015;
            v26 = 1024;
            v27 = v9;
            v28 = 2112;
            v29 = dataSetArray;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s:%d: %d> Frozen Thread Network  : %@", buf, 0x22u);
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[THThreadNetworkCredentialsKeychainBackingStore dumpFrozenThreadNetworks:]";
      v24 = 1024;
      v25 = 4020;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s:%d: ==================================", buf, 0x12u);
    }
  }

  else
  {
    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[THThreadNetworkCredentialsKeychainBackingStore dumpFrozenThreadNetworks:]";
      v24 = 1024;
      v25 = 4003;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d: Frozen thread network records empty ", buf, 0x12u);
    }
  }
}

- (id)sortAndReturnPreferredNetwork:(id)network onlyMdns:(BOOL)mdns
{
  mdnsCopy = mdns;
  networkCopy = network;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v48 = "[THThreadNetworkCredentialsKeychainBackingStore sortAndReturnPreferredNetwork:onlyMdns:]";
    v49 = 1024;
    *v50 = 4042;
    *&v50[4] = 2048;
    *&v50[6] = [networkCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %d - Networks in the Database = %lu", buf, 0x1Cu);
  }

  allObjects = [networkCopy allObjects];
  v10 = [NSMutableArray arrayWithArray:allObjects];

  if (!v10)
  {
    v13 = sub_10001B194(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003FE58();
    }

    v14 = 0;
    goto LABEL_11;
  }

  [v10 sortUsingComparator:&stru_100079238];
  [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetworksArray:v10];
  if (mdnsCopy)
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD40(networkCopy);
    }

    v12 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getTheMdnsMatchingEntryFromTheList:v10];
  }

  else
  {
    if (![v10 count])
    {
      v14 = 0;
      goto LABEL_32;
    }

    v12 = [v10 objectAtIndexedSubscript:0];
  }

  v14 = v12;
  if (v12)
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      network = [v14 network];
      networkName = [network networkName];
      *buf = 136315650;
      v48 = "[THThreadNetworkCredentialsKeychainBackingStore sortAndReturnPreferredNetwork:onlyMdns:]";
      v49 = 1024;
      *v50 = 4088;
      *&v50[4] = 2112;
      *&v50[6] = networkName;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d: Found the Preferred Network : %@", buf, 0x1Cu);
    }

    credentialsDataSetRecord = [v14 credentialsDataSetRecord];
    if (credentialsDataSetRecord)
    {
      v13 = credentialsDataSetRecord;
      credentialsDataSetRecord2 = [v14 credentialsDataSetRecord];
      credentialsDataSet = [credentialsDataSetRecord2 credentialsDataSet];
      dataSetArray = [credentialsDataSet dataSetArray];
      if (!dataSetArray)
      {

LABEL_11:
        goto LABEL_32;
      }

      v22 = dataSetArray;
      selfCopy = self;
      v46 = v7;
      credentialsDataSetRecord3 = [v14 credentialsDataSetRecord];
      credentialsDataSet2 = [credentialsDataSetRecord3 credentialsDataSet];
      dataSetArray2 = [credentialsDataSet2 dataSetArray];
      v45 = [dataSetArray2 length];

      if (v45)
      {
        v26 = sub_10001B194(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          credentialsDataSetRecord4 = [v14 credentialsDataSetRecord];
          network2 = [credentialsDataSetRecord4 network];
          networkName2 = [network2 networkName];
          credentialsDataSetRecord5 = [v14 credentialsDataSetRecord];
          credentialsDataSet3 = [credentialsDataSetRecord5 credentialsDataSet];
          dataSetArray3 = [credentialsDataSet3 dataSetArray];
          *buf = 136315906;
          v48 = "[THThreadNetworkCredentialsKeychainBackingStore sortAndReturnPreferredNetwork:onlyMdns:]";
          v49 = 1024;
          *v50 = 4095;
          *&v50[4] = 2112;
          *&v50[6] = networkName2;
          v51 = 2112;
          v52 = dataSetArray3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s:%d: This preferred network entry has a record associated with it, record name : %@, dataset : %@, check if it is frozen or not", buf, 0x26u);
        }

        credentialsDataSetRecord6 = [v14 credentialsDataSetRecord];
        v34 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy isFrozenRecord:credentialsDataSetRecord6];

        if (v34)
        {
          v35 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:v14];
          v36 = v35;
          if (v35)
          {
            v37 = SecItemDelete(v35);
            v38 = sub_10001B194(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              network3 = [v14 network];
              networkName3 = [network3 networkName];
              *buf = 136315650;
              v48 = "[THThreadNetworkCredentialsKeychainBackingStore sortAndReturnPreferredNetwork:onlyMdns:]";
              v49 = 2112;
              *v50 = networkName3;
              *&v50[8] = 1024;
              *&v50[10] = v37;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: Frozen Preferred Network : %@, Deletion result :(err=%d)", buf, 0x1Cu);
            }

            if (!v37)
            {
              goto LABEL_39;
            }

            v41 = SecCopyErrorMessageString(v37, 0);
            v42 = sub_10001B194(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_10003D048();
            }
          }

          else
          {
            v41 = sub_10001B194(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_10003FDD4();
            }
          }

LABEL_39:
          v13 = v14;
          v14 = 0;
          v7 = v46;
          goto LABEL_11;
        }
      }

      v7 = v46;
    }
  }

LABEL_32:

  objc_autoreleasePoolPop(v7);

  return v14;
}

- (BOOL)wifiInfoAvailable:(id)available
{
  availableCopy = available;
  wifiSSID = [availableCopy wifiSSID];
  if (wifiSSID)
  {
    wifiSSID2 = [availableCopy wifiSSID];
    v6 = [wifiSSID2 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPrefEntriesForLabelAsSSID:(id)d
{
  dCopy = d;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForLabelAsSSID:]";
    v18 = 1024;
    v19 = 4140;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Get preferred network for SSID", buf, 0x12u);
  }

  v6 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForLabelAsSSID:dCopy];
  if (v6)
  {
    v15 = 0;
    v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v6 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = sub_10001B194(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 count];
        wifiSSID = [dCopy wifiSSID];
        *buf = 136315906;
        v17 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForLabelAsSSID:]";
        v18 = 1024;
        v19 = 4150;
        v20 = 2048;
        v21 = v10;
        v22 = 2112;
        v23 = wifiSSID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database = %lu, for network ssid :(%@)", buf, 0x26u);
      }
    }

    v12 = v7;

    v13 = v12;
  }

  else
  {
    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FEDC();
    }

    v13 = 0;
  }

  return v13;
}

- (id)getPrefEntriesForSSIDAndSignature:(id)signature
{
  signatureCopy = signature;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSSIDAndSignature:]";
    v20 = 1024;
    v21 = 4160;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Get preferred network for SSID and signature", buf, 0x12u);
  }

  v6 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForWifiNetworkWithSignature:signatureCopy];
  if (v6)
  {
    v17 = 0;
    v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v6 error:&v17];
    v8 = v17;
    if (v7)
    {
      v9 = sub_10001B194(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 count];
        wifiSSID = [signatureCopy wifiSSID];
        ipv4NwSignature = [signatureCopy ipv4NwSignature];
        ipv6NwSignature = [signatureCopy ipv6NwSignature];
        *buf = 136316418;
        v19 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSSIDAndSignature:]";
        v20 = 1024;
        v21 = 4170;
        v22 = 2048;
        v23 = v10;
        v24 = 2112;
        v25 = wifiSSID;
        v26 = 2112;
        v27 = ipv4NwSignature;
        v28 = 2112;
        v29 = ipv6NwSignature;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database = %lu, for network ssid :(%@), and network signature(ipv4 : %@, ipv6 : %@)", buf, 0x3Au);
      }
    }

    v14 = v7;

    v15 = v14;
  }

  else
  {
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF60();
    }

    v15 = 0;
  }

  return v15;
}

- (id)getPrefEntriesForSSID:(id)d
{
  dCopy = d;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSSID:]";
    v18 = 1024;
    v19 = 4180;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Get preferred network for SSID", buf, 0x12u);
  }

  v6 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForWifiNetwork:dCopy];
  if (v6)
  {
    v15 = 0;
    v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v6 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = sub_10001B194(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v7 count];
        wifiSSID = [dCopy wifiSSID];
        *buf = 136315906;
        v17 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSSID:]";
        v18 = 1024;
        v19 = 4190;
        v20 = 2048;
        v21 = v10;
        v22 = 2112;
        v23 = wifiSSID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database = %lu, for network ssid :(%@)", buf, 0x26u);
      }
    }

    v12 = v7;

    v13 = v12;
  }

  else
  {
    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FFE4(dCopy);
    }

    v13 = 0;
  }

  return v13;
}

- (id)getPrefEntriesForSignature:(id)signature
{
  signatureCopy = signature;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    ipv4NwSignature = [signatureCopy ipv4NwSignature];
    ipv6NwSignature = [signatureCopy ipv6NwSignature];
    *buf = 136315906;
    v20 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSignature:]";
    v21 = 1024;
    v22 = 4200;
    v23 = 2112;
    v24 = ipv4NwSignature;
    v25 = 2112;
    v26 = ipv6NwSignature;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Get preferred network for network signature(ipv4 : %@, ipv6 : %@)", buf, 0x26u);
  }

  v8 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForNetworkSignature:signatureCopy];
  if (v8)
  {
    v18 = 0;
    v9 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v8 error:&v18];
    v10 = v18;
    if (v9)
    {
      v11 = sub_10001B194(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v9 count];
        ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
        ipv6NwSignature2 = [signatureCopy ipv6NwSignature];
        *buf = 136316162;
        v20 = "[THThreadNetworkCredentialsKeychainBackingStore getPrefEntriesForSignature:]";
        v21 = 1024;
        v22 = 4211;
        v23 = 2048;
        v24 = v12;
        v25 = 2112;
        v26 = ipv4NwSignature2;
        v27 = 2112;
        v28 = ipv6NwSignature2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database = %lu, for network signature(ipv4 : %@, ipv6 : %@)", buf, 0x30u);
      }
    }

    v15 = v9;

    v16 = v15;
  }

  else
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100040084();
    }

    v16 = 0;
  }

  return v16;
}

- (id)getAllPrefEntries
{
  v3 = +[THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperation];
  if (v3)
  {
    v11 = 0;
    v4 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v3 error:&v11];
    v5 = v11;
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 136315650;
      v13 = "[THThreadNetworkCredentialsKeychainBackingStore getAllPrefEntries]";
      v14 = 1024;
      v15 = 4232;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : %d - Total Preferred Networks in the Database = %lu", buf, 0x1Cu);
    }

    if (v4 && [v4 count])
    {
      v8 = v4;
    }

    else
    {
      v9 = sub_10001B194(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100040108();
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004018C();
    }

    v8 = 0;
  }

  return v8;
}

- (id)getNumberOfPrefEntriesForTheCount:(int)count
{
  v4 = [THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperationForTheCount:?];
  if (v4)
  {
    v11 = 0;
    v5 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v4 error:&v11];
    v6 = v11;
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100040210(v5);
    }

    if (v5 && [v5 count])
    {
      v8 = v5;
    }

    else
    {
      v9 = sub_10001B194(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000402BC();
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040340();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)checkIfPrefEntryForCurrentSignatureIsMissingSSID:(id)d nwSignature:(id)signature
{
  v5 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForSignature:signature];
  v6 = v5;
  if (v5 && [v5 count] && (-[THThreadNetworkCredentialsKeychainBackingStore sortAndReturnPreferredNetwork:](self, "sortAndReturnPreferredNetwork:", v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    networkSignature = [v7 networkSignature];
    v10 = [(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:networkSignature];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updatePreferredNetwork
{
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetwork]";
    v23 = 1024;
    v24 = 4291;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d: Update preferred NW", &v21, 0x12u);
  }

  getNetworkSignature = [(THThreadNetworkCredentialsKeychainBackingStore *)self getNetworkSignature];
  if (!getNetworkSignature)
  {
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000403C4();
    }

    goto LABEL_29;
  }

  if ([(THThreadNetworkCredentialsKeychainBackingStore *)self wifiInfoAvailable:getNetworkSignature])
  {
    v5 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForSSID:getNetworkSignature];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForSignature:getNetworkSignature];
      goto LABEL_12;
    }

    v11 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForLabelAsSSID:getNetworkSignature];

    v7 = 0;
    v9 = 0;
    v10 = 0;
    v6 = v11;
    if (v11)
    {
LABEL_12:
      v9 = v6;
      v10 = v7;
      if ([v6 count])
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v6 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPrefEntriesForSignature:getNetworkSignature];

  if (!v6)
  {
LABEL_23:
    v18 = 0;
    v8 = 0;
LABEL_26:
    v19 = sub_10001B194(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 136315394;
      v22 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetwork]";
      v23 = 1024;
      v24 = 4353;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %d Preferred Network update is not required", &v21, 0x12u);
    }

LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_14:
  if (![v6 count])
  {
    goto LABEL_23;
  }

  [(THThreadNetworkCredentialsKeychainBackingStore *)self dumpPreferredNetworks:v6];
  v6 = v6;
  v12 = sub_10001B194(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 count];
    v21 = 136315650;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetwork]";
    v23 = 1024;
    v24 = 4331;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : %d - Matching Networks in Database for Network = %lu", &v21, 0x1Cu);
  }

  if (![v6 count])
  {
    v8 = 0;
LABEL_25:
    v18 = v6;
    goto LABEL_26;
  }

  v8 = [(THThreadNetworkCredentialsKeychainBackingStore *)self sortAndReturnPreferredNetwork:v6];
  if (!v8)
  {
    goto LABEL_25;
  }

  v14 = [(THThreadNetworkCredentialsKeychainBackingStore *)self checkIfNetworkSignatureUpdateIsRequiredForPreferredNetwork:v8 nwSignature:getNetworkSignature signaturePrefEntries:v10];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v16 = sub_10001B194(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetwork]";
    v23 = 1024;
    v24 = 4347;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %d Updated Preferred Network", &v21, 0x12u);
  }

  v17 = 1;
LABEL_30:

  return v17;
}

- (BOOL)DBGstorePreferred:(id)preferred
{
  preferredCopy = preferred;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    network = [preferredCopy network];
    networkName = [network networkName];
    network2 = [preferredCopy network];
    extendedPANID = [network2 extendedPANID];
    credentialsDataSetRecord = [preferredCopy credentialsDataSetRecord];
    network3 = [credentialsDataSetRecord network];
    networkName2 = [network3 networkName];
    credentialsDataSetRecord2 = [preferredCopy credentialsDataSetRecord];
    credentialsDataSet = [credentialsDataSetRecord2 credentialsDataSet];
    dataSetArray = [credentialsDataSet dataSetArray];
    *buf = 136316418;
    v33 = "[THThreadNetworkCredentialsKeychainBackingStore DBGstorePreferred:]";
    v34 = 1024;
    v35 = 4460;
    v36 = 2112;
    v37 = networkName;
    v38 = 2112;
    v39 = extendedPANID;
    v40 = 2112;
    v41 = networkName2;
    v42 = 2112;
    v43 = dataSetArray;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d:Request to store Preferred Network (networkName=%@, xpanid=%@), with record name : %@ dataset : %@", buf, 0x3Au);
  }

  dEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation = [preferredCopy DEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation];
  v14 = dEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation;
  if (!dEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation)
  {
    v23 = sub_10001B194(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004074C();
    }

    goto LABEL_17;
  }

  v15 = SecItemAdd(dEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation, 0);
  if (v15 == -25299)
  {
    v16 = sub_10001B194(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      network4 = [preferredCopy network];
      networkName3 = [network4 networkName];
      *buf = 136315650;
      v33 = "[THThreadNetworkCredentialsKeychainBackingStore DBGstorePreferred:]";
      v34 = 1024;
      v35 = 4473;
      v36 = 2112;
      v37 = networkName3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d: Preferred network (name : %@) already exists. Updating the existing entry", buf, 0x1Cu);
    }

    dEBUGkeyChainQueryForpreferredNetworkUpdateOperation = [preferredCopy DEBUGkeyChainQueryForpreferredNetworkUpdateOperation];
    keyChainItemRepresentationForpreferredNetworkUpdateOperation = [preferredCopy keyChainItemRepresentationForpreferredNetworkUpdateOperation];
    v15 = SecItemUpdate(dEBUGkeyChainQueryForpreferredNetworkUpdateOperation, keyChainItemRepresentationForpreferredNetworkUpdateOperation);
    if (v15)
    {
      v21 = sub_10001B194(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "[THThreadNetworkCredentialsKeychainBackingStore DBGstorePreferred:]";
        v34 = 1024;
        v35 = 4479;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s:%d SecItemUpdate returned error while updating preferred network entry", buf, 0x12u);
      }
    }
  }

  v22 = sub_10001B194(1);
  v23 = v22;
  if (v15)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100040668();
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v24 = 1;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    network5 = [preferredCopy network];
    networkName4 = [network5 networkName];
    network6 = [preferredCopy network];
    extendedPANID2 = [network6 extendedPANID];
    *buf = 136315906;
    v33 = "[THThreadNetworkCredentialsKeychainBackingStore DBGstorePreferred:]";
    v34 = 1024;
    v35 = 4488;
    v36 = 2112;
    v37 = networkName4;
    v38 = 2112;
    v39 = extendedPANID2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d:#mOS:Successfully stored Preferred Network (networkName=%@, xpanid=%@)", buf, 0x26u);
  }

LABEL_18:

  return v24;
}

- (BOOL)storePreferred:(id)preferred
{
  preferredCopy = preferred;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    network = [preferredCopy network];
    networkName = [network networkName];
    network2 = [preferredCopy network];
    extendedPANID = [network2 extendedPANID];
    credentialsDataSetRecord = [preferredCopy credentialsDataSetRecord];
    network3 = [credentialsDataSetRecord network];
    networkName2 = [network3 networkName];
    [preferredCopy credentialsDataSetRecord];
    v11 = v10 = preferredCopy;
    credentialsDataSet = [v11 credentialsDataSet];
    dataSetArray = [credentialsDataSet dataSetArray];
    *buf = 136316418;
    v33 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferred:]";
    v34 = 1024;
    v35 = 4494;
    v36 = 2112;
    v37 = networkName;
    v38 = 2112;
    v39 = extendedPANID;
    v40 = 2112;
    v41 = networkName2;
    v42 = 2112;
    v43 = dataSetArray;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d:Request to store Preferred Network (networkName=%@, xpanid=%@), with record name : %@ dataset : %@", buf, 0x3Au);

    preferredCopy = v10;
  }

  keyChainItemRepresentationForpreferredNetworkAddOperation = [preferredCopy keyChainItemRepresentationForpreferredNetworkAddOperation];
  v15 = sub_10001B194(1);
  v16 = v15;
  if (!keyChainItemRepresentationForpreferredNetworkAddOperation)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000409CC();
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v33 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferred:]";
    v34 = 1024;
    v35 = 4503;
    v36 = 2112;
    v37 = keyChainItemRepresentationForpreferredNetworkAddOperation;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d: SIA: Add keychain query dictionary keychainAddDict: %@", buf, 0x1Cu);
  }

  v17 = SecItemAdd(keyChainItemRepresentationForpreferredNetworkAddOperation, 0);
  if (v17 == -25299)
  {
    v18 = sub_10001B194(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100040830(preferredCopy);
    }

    keyChainQueryForpreferredNetworkUpdateOperation = [preferredCopy keyChainQueryForpreferredNetworkUpdateOperation];
    keyChainItemRepresentationForpreferredNetworkUpdateOperation = [preferredCopy keyChainItemRepresentationForpreferredNetworkUpdateOperation];
    v21 = sub_10001B194(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v33 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferred:]";
      v34 = 1024;
      v35 = 4514;
      v36 = 2112;
      v37 = keyChainQueryForpreferredNetworkUpdateOperation;
      v38 = 2112;
      v39 = keyChainItemRepresentationForpreferredNetworkUpdateOperation;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:%d: SIU: Update keychain query dictionary keychainQueryDict: %@, representation keychainUpdateDict : %@", buf, 0x26u);
    }

    v17 = SecItemUpdate(keyChainQueryForpreferredNetworkUpdateOperation, keyChainItemRepresentationForpreferredNetworkUpdateOperation);
    if (v17)
    {
      v22 = sub_10001B194(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v33 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferred:]";
        v34 = 1024;
        v35 = 4518;
        v36 = 1024;
        LODWORD(v37) = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s:%d SecItemUpdate returned error while updating preferred network entry err=%d", buf, 0x18u);
      }
    }
  }

  v23 = sub_10001B194(1);
  v16 = v23;
  if (v17)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000408E8();
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v24 = 1;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    network4 = [preferredCopy network];
    networkName3 = [network4 networkName];
    network5 = [preferredCopy network];
    extendedPANID2 = [network5 extendedPANID];
    *buf = 136315906;
    v33 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferred:]";
    v34 = 1024;
    v35 = 4527;
    v36 = 2112;
    v37 = networkName3;
    v38 = 2112;
    v39 = extendedPANID2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d:#mOS:Successfully stored Preferred Network (networkName=%@, xpanid=%@)", buf, 0x26u);
  }

LABEL_22:

  return v24;
}

- (BOOL)storePreferredEntryAndCheckForDup:(id)dup isDuplicate:(int *)duplicate
{
  dupCopy = dup;
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    network = [dupCopy network];
    networkName = [network networkName];
    network2 = [dupCopy network];
    extendedPANID = [network2 extendedPANID];
    [dupCopy credentialsDataSetRecord];
    v9 = v36 = duplicate;
    network3 = [v9 network];
    networkName2 = [network3 networkName];
    credentialsDataSetRecord = [dupCopy credentialsDataSetRecord];
    [credentialsDataSetRecord credentialsDataSet];
    v14 = v13 = dupCopy;
    dataSetArray = [v14 dataSetArray];
    *buf = 136316418;
    v38 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferredEntryAndCheckForDup:isDuplicate:]";
    v39 = 1024;
    v40 = 4534;
    v41 = 2112;
    *v42 = networkName;
    *&v42[8] = 2112;
    v43 = extendedPANID;
    v44 = 2112;
    v45 = networkName2;
    v46 = 2112;
    v47 = dataSetArray;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d:Request to store Preferred Network (networkName=%@, xpanid=%@), with record name : %@ dataset : %@", buf, 0x3Au);

    dupCopy = v13;
    duplicate = v36;
  }

  keyChainItemRepresentationForpreferredNetworkAddOperation = [dupCopy keyChainItemRepresentationForpreferredNetworkAddOperation];
  v17 = sub_10001B194(1);
  v18 = v17;
  if (!keyChainItemRepresentationForpreferredNetworkAddOperation)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100040CD0();
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferredEntryAndCheckForDup:isDuplicate:]";
    v39 = 1024;
    v40 = 4543;
    v41 = 2112;
    *v42 = keyChainItemRepresentationForpreferredNetworkAddOperation;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d: SIA: Add keychain query dictionary keychainAddDict: %@", buf, 0x1Cu);
  }

  v19 = SecItemAdd(keyChainItemRepresentationForpreferredNetworkAddOperation, 0);
  if (v19 == -25299)
  {
    v20 = sub_10001B194(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100040AB0(dupCopy);
    }

    keyChainQueryForpreferredNetworkUpdateOperation = [dupCopy keyChainQueryForpreferredNetworkUpdateOperation];
    keyChainItemRepresentationForpreferredNetworkUpdateOperation = [dupCopy keyChainItemRepresentationForpreferredNetworkUpdateOperation];
    v23 = sub_10001B194(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v38 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferredEntryAndCheckForDup:isDuplicate:]";
      v39 = 1024;
      v40 = 4554;
      v41 = 2112;
      *v42 = keyChainQueryForpreferredNetworkUpdateOperation;
      *&v42[8] = 2112;
      v43 = keyChainItemRepresentationForpreferredNetworkUpdateOperation;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d: SIU: Update keychain query dictionary keychainQueryDict: %@, representation keychainUpdateDict : %@", buf, 0x26u);
    }

    v19 = SecItemUpdate(keyChainQueryForpreferredNetworkUpdateOperation, keyChainItemRepresentationForpreferredNetworkUpdateOperation);
    if (v19)
    {
      v24 = sub_10001B194(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100040B68();
      }
    }

    else
    {
      *duplicate = 1;
      v24 = sub_10001B194(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *duplicate;
        *buf = 136315906;
        v38 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferredEntryAndCheckForDup:isDuplicate:]";
        v39 = 1024;
        v40 = 4561;
        v41 = 1024;
        *v42 = 0;
        *&v42[4] = 1024;
        *&v42[6] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s:%d SecItemUpdate is successful in updating preferred network entry !!  (err=%d) isDuplicate : %d", buf, 0x1Eu);
      }
    }
  }

  v26 = sub_10001B194(1);
  v18 = v26;
  if (v19)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100040BEC();
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  v27 = 1;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    network4 = [dupCopy network];
    networkName3 = [network4 networkName];
    [dupCopy network];
    v32 = v31 = dupCopy;
    extendedPANID2 = [v32 extendedPANID];
    *buf = 136315906;
    v38 = "[THThreadNetworkCredentialsKeychainBackingStore storePreferredEntryAndCheckForDup:isDuplicate:]";
    v39 = 1024;
    v40 = 4571;
    v41 = 2112;
    *v42 = networkName3;
    *&v42[8] = 2112;
    v43 = extendedPANID2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d:#mOS:Successfully stored Preferred Network (networkName=%@, xpanid=%@)", buf, 0x26u);

    dupCopy = v31;
  }

LABEL_23:

  return v27;
}

- (BOOL)storeFrozenThreadNetwork:(id)network
{
  networkCopy = network;
  v4 = sub_10001B194(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    credentialsDataSet = [networkCopy credentialsDataSet];
    dataSetArray = [credentialsDataSet dataSetArray];
    v16 = 136315650;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore storeFrozenThreadNetwork:]";
    v18 = 1024;
    v19 = 4577;
    v20 = 2112;
    v21 = dataSetArray;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d: Request to freeze thread network with dataset %@", &v16, 0x1Cu);
  }

  keyChainItemRepresentationForFrozenThreadNetworkAddOperation = [networkCopy keyChainItemRepresentationForFrozenThreadNetworkAddOperation];
  v8 = keyChainItemRepresentationForFrozenThreadNetworkAddOperation;
  if (!keyChainItemRepresentationForFrozenThreadNetworkAddOperation)
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100040EF0(networkCopy);
    }

    goto LABEL_15;
  }

  v9 = SecItemAdd(keyChainItemRepresentationForFrozenThreadNetworkAddOperation, 0);
  v10 = sub_10001B194(1);
  v11 = v10;
  if (v9)
  {
    if (v9 == -25299)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100040DB4();
      }

      v12 = 1;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040E38(networkCopy);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    credentialsDataSet2 = [networkCopy credentialsDataSet];
    dataSetArray2 = [credentialsDataSet2 dataSetArray];
    v16 = 136315650;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore storeFrozenThreadNetwork:]";
    v18 = 1024;
    v19 = 4599;
    v20 = 2112;
    v21 = dataSetArray2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s:%d: Successfully stored frozen thread network to keychain : %@", &v16, 0x1Cu);
  }

LABEL_16:

  return v12;
}

- (BOOL)isWiFiNetwork
{
  v2 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
  if (v2)
  {
    v3 = v2;
    path = [v2 path];
    v5 = [path usesInterfaceType:1];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (BOOL)isEthernetNetwork
{
  v2 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
  if (v2)
  {
    v3 = v2;
    path = [v2 path];
    v5 = [path usesInterfaceType:3];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (id)getNetworkSignature
{
  v51 = 20;
  v50 = 20;
  v3 = [NSMutableData dataWithLength:20];
  if (SecRandomCopyBytes(kSecRandomDefault, [v3 length], objc_msgSend(v3, "mutableBytes")))
  {
    v4 = sub_10001B194(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100040FA8();
    }

LABEL_4:
    v5 = 0;
    goto LABEL_75;
  }

  v6 = [[NSData alloc] initWithBytes:objc_msgSend(v3 length:{"bytes"), objc_msgSend(v3, "length")}];
  if (!v6)
  {
    v4 = sub_10001B194(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004123C();
    }

    goto LABEL_4;
  }

  v4 = v6;
  v7 = [NSMutableData dataWithLength:20];
  if (SecRandomCopyBytes(kSecRandomDefault, [v7 length], objc_msgSend(v7, "mutableBytes")))
  {
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004102C();
    }

    v5 = 0;
    goto LABEL_74;
  }

  v8 = [[NSData alloc] initWithBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];
  v9 = sub_10001B194(1);
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000411B8();
    }

    v5 = 0;
    v8 = v10;
    goto LABEL_74;
  }

  v47 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
    v54 = 1024;
    v55 = 4677;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d Entered to get the nw signature ", buf, 0x12u);
  }

  isEthernetNetwork = [(THThreadNetworkCredentialsKeychainBackingStore *)self isEthernetNetwork];
  if (isEthernetNetwork)
  {
    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4684;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s:%d Device is on Ethernet", buf, 0x12u);
    }
  }

  if ([(THThreadNetworkCredentialsKeychainBackingStore *)self isWiFiNetwork])
  {
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4689;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d Device is on WiFi", buf, 0x12u);
    }
  }

  else if (isEthernetNetwork != 1)
  {
    v43 = sub_10001B194(1);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1000410B0();
    }

    v5 = 0;
    goto LABEL_74;
  }

  v46 = v8;
  v15 = 0;
  v16 = 0;
  v49 = 0;
  v17 = 0;
  *&v13 = 136315906;
  v45 = v13;
  do
  {
    v18 = v16;
    if (v15)
    {
      sleep(2u);
    }

    v16 = +[NetworkPathFinder getNetworkPath];

    v19 = sub_10001B194(1);
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
        v54 = 1024;
        v55 = 4710;
        v56 = 2112;
        *v57 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:%d Network path = %@", buf, 0x1Cu);
      }

      v20 = nw_path_copy_interface();
      has_ipv4 = nw_path_has_ipv4(v16);
      has_ipv6 = nw_path_has_ipv6(v16);
      v23 = sub_10001B194(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
        v54 = 1024;
        v55 = 4715;
        v56 = 2112;
        *v57 = v20;
        *&v57[8] = 1024;
        *&v57[10] = has_ipv4;
        v58 = 1024;
        v59 = has_ipv6;
        v60 = 1024;
        LODWORD(v61) = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d Network path Interface = %@, has_ipv4 = %d, has_ipv6 = %d, retry : %d", buf, 0x2Eu);
      }

      if (!has_ipv4 && !has_ipv6)
      {
        v27 = sub_10001B194(1);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_53:

          goto LABEL_54;
        }

        *buf = 136315394;
        v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
        v54 = 1024;
        v55 = 4718;
        v28 = v27;
        v29 = "%s:%d Error : doesn't have ipv4 and ipv6 network signatures, retrying...";
LABEL_49:
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
        goto LABEL_53;
      }

      ipv4_network_signature = nw_path_get_ipv4_network_signature();
      ipv6_network_signature = nw_path_get_ipv6_network_signature();
      v17 = ipv6_network_signature;
      v49 = ipv4_network_signature;
      if (ipv4_network_signature)
      {
        if ((ipv6_network_signature & 1) == 0)
        {
          v50 = 0;
          v26 = 1;
          goto LABEL_45;
        }
      }

      else
      {
        v51 = 0;
        if (!ipv6_network_signature)
        {
          v50 = 0;
          v27 = sub_10001B194(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = v45;
            v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
            v54 = 1024;
            v55 = 4730;
            v56 = 1024;
            *v57 = 0;
            *&v57[4] = 1024;
            *&v57[6] = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s:%d Error : doesn't have the correct ipv4 [ret = %d] and ipv6 [ret = %d] network signatures, retrying..", buf, 0x1Eu);
            v17 = 0;
          }

          v49 = 0;
          goto LABEL_53;
        }
      }

      v26 = v50 == 0;
LABEL_45:
      v30 = 1;
      if (v51 || !v26)
      {
        goto LABEL_58;
      }

      v27 = sub_10001B194(1);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4735;
      v28 = v27;
      v29 = "%s:%d Error : ipv4 and ipv6 network signature length is zero, retrying";
      goto LABEL_49;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4706;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s:%d Failed to create Network Path Finder", buf, 0x12u);
    }

LABEL_54:

    ++v15;
  }

  while (v15 != 5);
  v20 = sub_10001B194(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100041134();
  }

  v30 = 0;
LABEL_58:
  v31 = v46;

  v32 = WiFiCopyCurrentNetworkInfoEx();
  v33 = &stru_100079A28;
  if (v32)
  {
    v34 = sub_10001B194(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v32 objectForKey:@"ssid"];
      *buf = 136315650;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4756;
      v56 = 2112;
      *v57 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s:%d Network Information Wifi SSID : %@", buf, 0x1Cu);

      v7 = v47;
    }

    v36 = [v32 objectForKey:@"ssid"];
    if (v36)
    {
      v33 = v36;
    }
  }

  v48 = v32;
  v37 = [THNetworkSignature alloc];
  if (v30)
  {
    v38 = [v37 initSignaturesWithArrays:v65 ipv4BytesLen:v51 ipv6Bytes:v64 ipv6BytesLen:v50 wifSSID:v33 wifiPassword:@"ApplePreferredNetworkRecordLabel"];
  }

  else
  {
    v38 = [v37 initWithSignatures:v4 ipv6NwSignature:v46 wifSSID:v33 wifiPassword:@"ApplePreferredNetworkRecordLabel"];
  }

  v5 = v38;
  if (v38)
  {
    v39 = sub_10001B194(1);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      ipv4NwSignature = [v5 ipv4NwSignature];
      v41 = v17 & 1;
      ipv6NwSignature = [v5 ipv6NwSignature];
      *buf = 136316674;
      v53 = "[THThreadNetworkCredentialsKeychainBackingStore getNetworkSignature]";
      v54 = 1024;
      v55 = 4772;
      v56 = 1024;
      *v57 = v49 & 1;
      v7 = v47;
      *&v57[4] = 2112;
      *&v57[6] = ipv4NwSignature;
      v58 = 1024;
      v59 = v41;
      v31 = v46;
      v60 = 2112;
      v61 = ipv6NwSignature;
      v62 = 2112;
      v63 = v33;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s:%d ipv4 signature : [ret = %d]%@, ipv6 signature : [ret = %d]%@ , ssid : %@", buf, 0x3Cu);
    }
  }

  v8 = v16;
LABEL_74:

LABEL_75:

  return v5;
}

- (void)dispatchRemoveInActiveRecords:(id)records
{
  recordsCopy = records;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    network = [recordsCopy network];
    networkName = [network networkName];
    *buf = 136315650;
    v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
    v63 = 1024;
    *v64 = 4781;
    *&v64[4] = 2112;
    *&v64[6] = networkName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d: Remove inactive records for Preferred network Network Name : %@", buf, 0x1Cu);
  }

  network2 = [recordsCopy network];
  v10 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:network2];

  v59 = 0;
  v11 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:v10 error:&v59];
  v12 = v59;
  v13 = sub_10001B194(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 count];
    *buf = 136315650;
    v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
    v63 = 1024;
    *v64 = 4790;
    *&v64[4] = 2048;
    *&v64[6] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d: : Size of record list : %lu", buf, 0x1Cu);
  }

  v54 = v11;
  if ([v11 count] > 1)
  {
    v51 = v5;
    v52 = v12;
    v53 = v10;
    if ([v11 count] >= 0x191)
    {
      allObjects = [v11 allObjects];
      v19 = [NSMutableArray arrayWithArray:allObjects];

      if (v19)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
          v63 = 1024;
          *v64 = 4807;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d: Deleting excess active dataset record", buf, 0x12u);
        }

        [v19 sortUsingComparator:&stru_100079258];
        if ([v11 count] != 400)
        {
          v21 = 0;
          do
          {
            v22 = [v19 objectAtIndexedSubscript:v21];
            borderAgent = [v22 borderAgent];
            v24 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:borderAgent];

            if (v24)
            {
              v25 = SecItemDelete(v24);
              v26 = sub_10001B194(1);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v19 objectAtIndexedSubscript:0];
                borderAgent2 = [v27 borderAgent];
                discriminatorId = [borderAgent2 discriminatorId];
                *buf = 136315650;
                v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
                v63 = 2112;
                *v64 = discriminatorId;
                *&v64[8] = 1024;
                *&v64[10] = v25;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : Deleting excess record BA ID : %@, got on deletion : (err=%d)", buf, 0x1Cu);

                v11 = v54;
              }
            }

            ++v21;
          }

          while (v21 < [v11 count] - 400);
        }
      }

      v12 = v52;
      v10 = v53;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = v11;
    v30 = [v15 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v56;
      v33 = &AWDPostMetric_ptr;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v15);
          }

          v35 = *(*(&v55 + 1) + 8 * i);
          credentials = [v35 credentials];
          isActiveDevice = [credentials isActiveDevice];

          if ((isActiveDevice & 1) == 0)
          {
            borderAgent3 = [v35 borderAgent];
            discriminatorId2 = [borderAgent3 discriminatorId];

            if (discriminatorId2)
            {
              v40 = v33[194];
              borderAgent4 = [v35 borderAgent];
              v42 = [v40 keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:borderAgent4];

              if (v42)
              {
                v43 = SecItemDelete(v42);
                v44 = sub_10001B194(1);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  borderAgent5 = [v35 borderAgent];
                  discriminatorId3 = [borderAgent5 discriminatorId];
                  *buf = 136315650;
                  v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
                  v63 = 2112;
                  *v64 = discriminatorId3;
                  *&v64[8] = 1024;
                  *&v64[10] = v43;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s : BA ID : %@, got on deletion : (err=%d)", buf, 0x1Cu);

                  v33 = &AWDPostMetric_ptr;
                }
              }

              else
              {
                v44 = sub_10001B194(1);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  network3 = [v35 network];
                  networkName2 = [network3 networkName];
                  *buf = 136315394;
                  v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
                  v63 = 2112;
                  *v64 = networkName2;
                  _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s : Could not form Keychain Query for Network : %@, continue..", buf, 0x16u);
                }
              }
            }

            else
            {
              v42 = sub_10001B194(1);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                network4 = [v35 network];
                networkName3 = [network4 networkName];
                *buf = 136315394;
                v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
                v63 = 2112;
                *v64 = networkName3;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : Border Agent DiscriminatorId is Nil.. for Network : %@, continue..", buf, 0x16u);
              }
            }
          }
        }

        v31 = [v15 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v31);
      v5 = v51;
      v12 = v52;
      v10 = v53;
    }
  }

  else
  {
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      network5 = [recordsCopy network];
      networkName4 = [network5 networkName];
      *buf = 136315650;
      v62 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveInActiveRecords:]";
      v63 = 1024;
      *v64 = 4794;
      *&v64[4] = 2112;
      *&v64[6] = networkName4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d: Skip clearing it: %@", buf, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)dispatchRemoveExcessPreferredEntry
{
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveExcessPreferredEntry]";
    v21 = 1024;
    v22 = 4864;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d: Remove Excess preferred network entry", buf, 0x12u);
  }

  v4 = +[THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperation];
  if (v4)
  {
    v18 = 0;
    v5 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchPreferredNetworks:v4 error:&v18];
    if (v5)
    {
      v6 = sub_10001B194(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000412C0(v5);
      }

      if ([v5 count]>= 0xC9)
      {
        allObjects = [v5 allObjects];
        v8 = [NSMutableArray arrayWithArray:allObjects];

        if (v8)
        {
          [v8 sortUsingComparator:&stru_100079278];
          v9 = sub_10001B194(1);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v20 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveExcessPreferredEntry]";
            v21 = 1024;
            v22 = 4914;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d: Deleting excess preferred entry", buf, 0x12u);
          }

          if ([v5 count]!= 200)
          {
            v11 = 0;
            *&v10 = 136315650;
            v17 = v10;
            do
            {
              v12 = [v8 objectAtIndexedSubscript:{0, v17}];
              v13 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:v12];

              if (v13)
              {
                v14 = SecItemDelete(v13);
                v15 = sub_10001B194(1);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = v17;
                  v20 = "[THThreadNetworkCredentialsKeychainBackingStore dispatchRemoveExcessPreferredEntry]";
                  v21 = 1024;
                  v22 = 4923;
                  v23 = 1024;
                  v24 = v14;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s:%d: Deleting excess preferred entry, got on deletion : (err=%d)", buf, 0x18u);
                }
              }

              ++v11;
            }

            while (v11 < [v5 count]- 200);
          }
        }

        else
        {
          v16 = sub_10001B194(1);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100041354();
          }
        }
      }
    }
  }

  else
  {
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000413D8();
    }
  }
}

- (id)getPreferredNetworkWithRecords
{
  v3 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPreferredNetwork:0];
  v4 = v3;
  if (v3)
  {
    credentialsDataSetRecord = [v3 credentialsDataSetRecord];

    v6 = sub_10001B194(1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (credentialsDataSetRecord)
    {
      if (v7)
      {
        network = [v4 network];
        networkName = [network networkName];
        network2 = [v4 network];
        extendedPANID = [network2 extendedPANID];
        credentialsDataSetRecord2 = [v4 credentialsDataSetRecord];
        network3 = [credentialsDataSetRecord2 network];
        networkName2 = [network3 networkName];
        credentialsDataSetRecord3 = [v4 credentialsDataSetRecord];
        credentialsDataSet = [credentialsDataSetRecord3 credentialsDataSet];
        dataSetArray = [credentialsDataSet dataSetArray];
        *buf = 136316418;
        v40 = "[THThreadNetworkCredentialsKeychainBackingStore getPreferredNetworkWithRecords]";
        v41 = 1024;
        *v42 = 4939;
        *&v42[4] = 2112;
        *&v42[6] = networkName;
        v43 = 2112;
        v44 = extendedPANID;
        v45 = 2112;
        v46 = networkName2;
        v47 = 2112;
        v48 = dataSetArray;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: This preferred network entry has record associated with it, returning the same preferred network : (networkName=%@, xpanid=%@), with record name : %@ dataset : %@", buf, 0x3Au);
      }

      v16 = v4;
      goto LABEL_26;
    }

    if (v7)
    {
      network4 = [v4 network];
      networkName3 = [network4 networkName];
      network5 = [v4 network];
      extendedPANID2 = [network5 extendedPANID];
      *buf = 136315906;
      v40 = "[THThreadNetworkCredentialsKeychainBackingStore getPreferredNetworkWithRecords]";
      v41 = 1024;
      *v42 = 4947;
      *&v42[4] = 2112;
      *&v42[6] = networkName3;
      v43 = 2112;
      v44 = extendedPANID2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Request to check how many active dataset records are present for preferred network (name=%@, xpanid=%@)", buf, 0x26u);
    }

    network6 = [v4 network];
    v23 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:network6];

    v38 = 0;
    v24 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:v23 error:&v38];
    v25 = v38;
    v26 = sub_10001B194(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v24 count];
      *buf = 136315650;
      v40 = "[THThreadNetworkCredentialsKeychainBackingStore getPreferredNetworkWithRecords]";
      v41 = 1024;
      *v42 = 4954;
      *&v42[4] = 2048;
      *&v42[6] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s:%d: Preferred Network present and the matching Active dataset records size is: %lu", buf, 0x1Cu);
    }

    if ([v24 count])
    {
      v16 = v4;
LABEL_25:

      goto LABEL_26;
    }

    v28 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:v4];
    v29 = v28;
    if (v28)
    {
      v30 = SecItemDelete(v28);
      v31 = sub_10001B194(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        network7 = [v4 network];
        networkName4 = [network7 networkName];
        *buf = 136315650;
        v40 = "[THThreadNetworkCredentialsKeychainBackingStore getPreferredNetworkWithRecords]";
        v41 = 2112;
        *v42 = networkName4;
        *&v42[8] = 1024;
        *&v42[10] = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network : %@, Deletion result :(err=%d)", buf, 0x1Cu);
      }

      if (!v30)
      {
        goto LABEL_24;
      }

      v34 = sub_10001B194(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10004145C(v4);
      }
    }

    else
    {
      v34 = sub_10001B194(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100041500();
      }
    }

LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  v17 = sub_10001B194(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100041584();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (BOOL)updatePreferredNetworkEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy || ([entryCopy credentialsDataSet], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000417F4();
    }

    goto LABEL_16;
  }

  v7 = v6;
  credentialsDataSet = [v5 credentialsDataSet];
  dataSetArray = [credentialsDataSet dataSetArray];
  if (!dataSetArray)
  {

    goto LABEL_14;
  }

  v10 = dataSetArray;
  credentialsDataSet2 = [v5 credentialsDataSet];
  dataSetArray2 = [credentialsDataSet2 dataSetArray];
  v13 = [dataSetArray2 length];

  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPreferredNetwork:0];
  if (v14)
  {
    network = [v5 network];
    borderAgent = [v5 borderAgent];
    v17 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getActiveDataSetRecordForNetworkAndBorderAgentId:network borderAgent:borderAgent];

    v18 = [THPreferredThreadNetwork alloc];
    network2 = [v17 network];
    networkSignature = [v14 networkSignature];
    userInfo = [v14 userInfo];
    v22 = [v18 initWithThreadNetwork:network2 networkSignature:networkSignature credentialsDataSetRecord:v17 creationDate:0 lastModificationDate:0 userInfo:userInfo];

    if (v22)
    {
      v23 = [(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferred:v22];
      v24 = sub_10001B194(1);
      v25 = v24;
      if (v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          network3 = [v22 network];
          networkName = [network3 networkName];
          *buf = 136315650;
          v42 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetworkEntry:]";
          v43 = 1024;
          v44 = 5006;
          v45 = 2112;
          v46 = networkName;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d: Updated Preferred Network with the name : %@", buf, 0x1Cu);
        }

        network4 = [v14 network];
        networkName2 = [network4 networkName];
        network5 = [v5 network];
        networkName3 = [network5 networkName];
        if ([networkName2 isEqualToString:networkName3])
        {
          network6 = [v14 network];
          [network6 extendedPANID];
          v32 = v40 = network4;
          network7 = [v5 network];
          [network7 extendedPANID];
          v34 = v39 = networkName2;
          v37 = [v32 isEqualToData:v34];

          if (v37)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }

        if ([(THThreadNetworkCredentialsKeychainBackingStore *)self deletePreferredNetworkEntry:v14])
        {
LABEL_27:
          v35 = 1;
          goto LABEL_24;
        }

        v35 = 1;
        v25 = sub_10001B194(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10004168C();
        }

LABEL_23:

LABEL_24:
        goto LABEL_17;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100041608();
      }
    }

    else
    {
      v25 = sub_10001B194(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100041770();
      }
    }

    v35 = 0;
    goto LABEL_23;
  }

LABEL_16:
  v35 = 0;
LABEL_17:

  return v35;
}

- (BOOL)updateRecordToPreferredNetworkEntry:(id)entry credentialsDataSetRecord:(id)record
{
  entryCopy = entry;
  recordCopy = record;
  v8 = recordCopy;
  if (!recordCopy || ([recordCopy credentialsDataSet], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_18:
    v51 = sub_10001B194(1);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_100041D60();
    }

    goto LABEL_20;
  }

  v10 = v9;
  credentialsDataSet = [v8 credentialsDataSet];
  dataSetArray = [credentialsDataSet dataSetArray];
  if (!dataSetArray)
  {

    goto LABEL_18;
  }

  v13 = dataSetArray;
  credentialsDataSet2 = [v8 credentialsDataSet];
  dataSetArray2 = [credentialsDataSet2 dataSetArray];
  v16 = [dataSetArray2 length];

  if (!v16)
  {
    goto LABEL_18;
  }

  selfCopy = self;
  network = [entryCopy network];
  networkName = [network networkName];
  network2 = [v8 network];
  networkName2 = [network2 networkName];
  if (![networkName isEqualToString:networkName2])
  {

    goto LABEL_23;
  }

  network3 = [entryCopy network];
  extendedPANID = [network3 extendedPANID];
  [v8 network];
  v23 = v89 = entryCopy;
  extendedPANID2 = [v23 extendedPANID];
  v25 = [extendedPANID isEqualToData:extendedPANID2];

  entryCopy = v89;
  if (!v25)
  {
LABEL_23:
    network4 = [entryCopy network];
    borderAgent = [v8 borderAgent];
    v55 = selfCopy;
    v51 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy getActiveDataSetRecordForNetworkAndBorderAgentId:network4 borderAgent:borderAgent];

    if (!v51)
    {
LABEL_50:
      v50 = 1;
      goto LABEL_21;
    }

    network5 = [v8 network];
    borderAgent2 = [v8 borderAgent];
    v58 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy getActiveDataSetRecordForNetworkAndBorderAgentId:network5 borderAgent:borderAgent2];

    v59 = [THPreferredThreadNetwork alloc];
    network6 = [v58 network];
    networkSignature = [entryCopy networkSignature];
    userInfo = [entryCopy userInfo];
    v63 = [v59 initWithThreadNetwork:network6 networkSignature:networkSignature credentialsDataSetRecord:v58 creationDate:0 lastModificationDate:0 userInfo:userInfo];

    if (v63)
    {
      v64 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy storePreferred:v63];
      v65 = sub_10001B194(1);
      v66 = v65;
      if (v64)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          network7 = [v63 network];
          networkName3 = [network7 networkName];
          *buf = 136315650;
          v92 = "[THThreadNetworkCredentialsKeychainBackingStore updateRecordToPreferredNetworkEntry:credentialsDataSetRecord:]";
          v93 = 1024;
          v94 = 5090;
          v95 = 2112;
          v96 = networkName3;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s:%d: Updated Preferred Network with the name : %@", buf, 0x1Cu);

          v55 = selfCopy;
        }

        if ([(THThreadNetworkCredentialsKeychainBackingStore *)v55 deletePreferredNetworkEntry:entryCopy])
        {
          network8 = [v51 network];
          borderAgent3 = [v51 borderAgent];
          v71 = [(THThreadNetworkCredentialsKeychainBackingStore *)v55 deleteActiveDataSetRecordForNetworkAndBorderAgentId:network8 borderAgent:borderAgent3];

          if (!v71)
          {

LABEL_49:
            goto LABEL_50;
          }

          v66 = sub_10001B194(1);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_1000419B4(v51);
          }
        }

        else
        {
          v66 = sub_10001B194(1);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_1000418FC(entryCopy);
          }
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_100041878();
      }
    }

    else
    {
      v66 = sub_10001B194(1);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        sub_100041A6C();
      }
    }

    goto LABEL_56;
  }

  v26 = sub_10001B194(1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    network9 = [v89 network];
    networkName4 = [network9 networkName];
    network10 = [v89 network];
    extendedPANID3 = [network10 extendedPANID];
    network11 = [v8 network];
    networkName5 = [network11 networkName];
    network12 = [v8 network];
    extendedPANID4 = [network12 extendedPANID];
    *buf = 136316418;
    v92 = "[THThreadNetworkCredentialsKeychainBackingStore updateRecordToPreferredNetworkEntry:credentialsDataSetRecord:]";
    v93 = 1024;
    v94 = 5038;
    v95 = 2112;
    v96 = networkName4;
    v97 = 2112;
    v98 = extendedPANID3;
    v99 = 2112;
    v100 = networkName5;
    v101 = 2112;
    v102 = extendedPANID4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s:%d:Preferred network entry (name : %@, xpanid : %@) And record netowrk (name : %@, xpanid : %@) are matching, update record to Preferred Network", buf, 0x3Au);

    entryCopy = v89;
  }

  credentialsDataSetRecord = [entryCopy credentialsDataSetRecord];
  v36 = selfCopy;
  if (!credentialsDataSetRecord)
  {
    goto LABEL_44;
  }

  v37 = credentialsDataSetRecord;
  credentialsDataSetRecord2 = [entryCopy credentialsDataSetRecord];
  credentialsDataSet3 = [credentialsDataSetRecord2 credentialsDataSet];
  if (!credentialsDataSet3)
  {
    goto LABEL_43;
  }

  v40 = credentialsDataSet3;
  credentialsDataSet4 = [v8 credentialsDataSet];
  if (!credentialsDataSet4)
  {
LABEL_42:

LABEL_43:
    goto LABEL_44;
  }

  v42 = credentialsDataSet4;
  credentialsDataSetRecord3 = [entryCopy credentialsDataSetRecord];
  credentialsDataSet5 = [credentialsDataSetRecord3 credentialsDataSet];
  dataSetArray3 = [credentialsDataSet5 dataSetArray];
  if (![dataSetArray3 length])
  {
LABEL_41:

    entryCopy = v89;
    goto LABEL_42;
  }

  credentialsDataSet6 = [v8 credentialsDataSet];
  dataSetArray4 = [credentialsDataSet6 dataSetArray];
  if (![dataSetArray4 length])
  {

    goto LABEL_41;
  }

  credentialsDataSetRecord4 = [v89 credentialsDataSetRecord];
  credentialsDataSet7 = [credentialsDataSetRecord4 credentialsDataSet];
  [credentialsDataSet7 dataSetArray];
  v47 = v86 = credentialsDataSetRecord3;
  credentialsDataSet8 = [v8 credentialsDataSet];
  [credentialsDataSet8 dataSetArray];
  v49 = v84 = credentialsDataSet6;
  v87 = [v47 isEqualToData:v49];

  v36 = selfCopy;
  entryCopy = v89;

  if (!v87)
  {
LABEL_44:
    borderAgent4 = [v8 borderAgent];
    v51 = [(THThreadNetworkCredentialsKeychainBackingStore *)v36 getActiveDataSetRecord:borderAgent4];

    v73 = [THPreferredThreadNetwork alloc];
    [entryCopy network];
    v75 = v74 = v36;
    networkSignature2 = [entryCopy networkSignature];
    userInfo2 = [entryCopy userInfo];
    v58 = [v73 initWithThreadNetwork:v75 networkSignature:networkSignature2 credentialsDataSetRecord:v51 creationDate:0 lastModificationDate:0 userInfo:userInfo2];

    if (v58)
    {
      v78 = [(THThreadNetworkCredentialsKeychainBackingStore *)v74 storePreferred:v58];
      v79 = sub_10001B194(1);
      v80 = v79;
      if (v78)
      {
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          network13 = [v58 network];
          networkName6 = [network13 networkName];
          *buf = 136315650;
          v92 = "[THThreadNetworkCredentialsKeychainBackingStore updateRecordToPreferredNetworkEntry:credentialsDataSetRecord:]";
          v93 = 1024;
          v94 = 5064;
          v95 = 2112;
          v96 = networkName6;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "%s:%d: Updated Preferred Network with the name : %@", buf, 0x1Cu);
        }

        goto LABEL_49;
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_100041C58();
      }
    }

    else
    {
      v80 = sub_10001B194(1);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_100041CDC();
      }
    }

LABEL_56:
LABEL_20:
    v50 = 0;
    goto LABEL_21;
  }

  v50 = 1;
  v51 = sub_10001B194(1);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    sub_100041AF0(v89, v8, v51);
  }

LABEL_21:

  return v50;
}

- (id)deleteActiveDataSetRecordForNetworkAndBorderAgentId:(id)id borderAgent:(id)agent
{
  idCopy = id;
  agentCopy = agent;
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    networkName = [idCopy networkName];
    extendedPANID = [idCopy extendedPANID];
    discriminatorId = [agentCopy discriminatorId];
    v19 = 136316162;
    v20 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForNetworkAndBorderAgentId:borderAgent:]";
    v21 = 1024;
    v22 = 5115;
    v23 = 2112;
    v24 = networkName;
    v25 = 2112;
    v26 = extendedPANID;
    v27 = 2112;
    v28 = discriminatorId;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d: Fetch active dataset record with network name : %@, network xpanid : %@, borderAgent %@", &v19, 0x30u);
  }

  v11 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForNetworkAndBorderAgent:idCopy borderAgent:agentCopy];
  v12 = SecItemDelete(v11);
  v13 = sub_10001B194(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForNetworkAndBorderAgentId:borderAgent:]";
    v21 = 1024;
    v22 = 5120;
    v23 = 1024;
    LODWORD(v24) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%d Result for deletion operation : (err=%d)", &v19, 0x18u);
  }

  if (v12)
  {
    v14 = SecCopyErrorMessageString(v12, 0);
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100041DE4();
    }

    v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:0];
    v17 = [NSError storeError:2 underlyingError:v16 description:v14];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)getActiveDataSetRecordForNetworkAndBorderAgentId:(id)id borderAgent:(id)agent
{
  idCopy = id;
  agentCopy = agent;
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    networkName = [idCopy networkName];
    extendedPANID = [idCopy extendedPANID];
    discriminatorId = [agentCopy discriminatorId];
    *buf = 136316162;
    v19 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveDataSetRecordForNetworkAndBorderAgentId:borderAgent:]";
    v20 = 1024;
    v21 = 5136;
    v22 = 2112;
    v23 = networkName;
    v24 = 2112;
    v25 = extendedPANID;
    v26 = 2112;
    v27 = discriminatorId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d: Fetch active dataset record with network name : %@, network xpanid : %@, borderAgent %@", buf, 0x30u);
  }

  v12 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForNetworkAndBorderAgent:idCopy borderAgent:agentCopy];
  v17 = 0;
  v13 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:v12 error:&v17];
  v14 = v13;
  anyObject = 0;
  if (!v17)
  {
    anyObject = [v13 anyObject];
  }

  return anyObject;
}

- (id)getActiveDataSetRecord:(id)record
{
  recordCopy = record;
  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    discriminatorId = [recordCopy discriminatorId];
    *buf = 136315650;
    v14 = "[THThreadNetworkCredentialsKeychainBackingStore getActiveDataSetRecord:]";
    v15 = 1024;
    v16 = 5147;
    v17 = 2112;
    v18 = discriminatorId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d: Fetch active dataset record with borderAgent %@", buf, 0x1Cu);
  }

  v7 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:recordCopy];
  v12 = 0;
  v8 = [(THThreadNetworkCredentialsKeychainBackingStore *)self _doFetchActiveDataSetRecords:v7 error:&v12];
  v9 = v8;
  anyObject = 0;
  if (!v12)
  {
    anyObject = [v8 anyObject];
  }

  return anyObject;
}

- (BOOL)markAsPreferred:(id)preferred
{
  preferredCopy = preferred;
  if (!preferredCopy)
  {
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100041E68();
    }
  }

  v6 = [(THThreadNetworkCredentialsKeychainBackingStore *)self getPreferredNetwork:0];
  if (v6)
  {
    if ([(THThreadNetworkCredentialsKeychainBackingStore *)self updateRecordToPreferredNetworkEntry:v6 credentialsDataSetRecord:preferredCopy])
    {
      [(THThreadNetworkCredentialsKeychainBackingStore *)self dispatchRemoveInActiveRecords:v6];
      v7 = 1;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100041EEC();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = [(THThreadNetworkCredentialsKeychainBackingStore *)self storePreferredNetworkWithRecord:preferredCopy];
  }

  return v7;
}

- (BOOL)areValidDataSetTLVs:(id)vs creds:(id *)creds updateATS:(BOOL)s isATSAppended:(BOOL *)appended
{
  sCopy = s;
  vsCopy = vs;
  bytes = [vsCopy bytes];
  v87 = vsCopy;
  v8 = [vsCopy length];
  v93 = +[NSMutableSet set];
  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Validating Dataset", buf, 2u);
  }

  v10 = sub_10001B194(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v97 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "data_len : %d", buf, 8u);
  }

  sub_1000085B4(bytes, v8, buf, 0x3E8uLL, 0);
  v11 = sub_10001B194(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v98 = 136642819;
    v99 = buf;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "dump: %{sensitive}s", v98, 0xCu);
  }

  if (v8)
  {
    v12 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    LOBYTE(v85) = 0;
    v88 = 0;
    v13 = 0;
    v14 = v93;
    while (1)
    {
      v15 = v13 + 1;
      if (v15 >= v8)
      {
        v21 = sub_10001B194(1);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_128;
        }

        goto LABEL_117;
      }

      v16 = bytes[v15];
      v17 = v13 + 2;
      v18 = v13 + 2 + v16;
      if (v18 > v8)
      {
        v21 = sub_10001B194(1);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_128;
        }

LABEL_117:
        sub_100041F70();
        goto LABEL_128;
      }

      v19 = v12;
      v20 = bytes[v13];
      v21 = [NSNumber numberWithChar:v20];
      if ([v14 containsObject:v21])
      {
        v24 = sub_10001B194(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100042554();
        }

        v12 = v19;
LABEL_127:

LABEL_128:
        v45 = sub_10001B194(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100042590();
        }

LABEL_130:

        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
LABEL_131:
        v58 = 0;
        goto LABEL_132;
      }

      [v14 addObject:v21];
      if (v20 > 4)
      {
        if (v20 <= 11)
        {
          if (v20 != 5)
          {
            if (v20 == 7)
            {
              v31 = sub_10001B194(1);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v94 = 0;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "==> Decoded mesh local prefix", v94, 2u);
              }

              v12 = v19;
              if (v16 != 8)
              {
                v24 = sub_10001B194(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_10004201C();
                }

                goto LABEL_127;
              }

              goto LABEL_78;
            }

LABEL_91:
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v94 = 67109120;
              LODWORD(v95) = v20;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, " ==> Unknown type : %d", v94, 8u);
            }

            v40 = v19;
            goto LABEL_77;
          }

          v34 = sub_10001B194(1);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "==> Decoded master key", v94, 2u);
          }

          v12 = v19;
          if (v16 != 16)
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100042138();
            }

            goto LABEL_127;
          }

          v35 = [NSData dataWithBytes:&bytes[v17] length:16];

          v24 = sub_10001B194(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 138739971;
            v95 = v35;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Master Key: %{sensitive}@", v94, 0xCu);
          }

          v92 = v35;
        }

        else
        {
          if (v20 != 12)
          {
            if (v20 == 14)
            {
              v43 = sub_10001B194(1);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *v94 = 0;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", v94, 2u);
              }

              v12 = v19;
              if (v16 != 8)
              {
                v24 = sub_10001B194(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_100041FAC();
                }

                goto LABEL_127;
              }

              v44 = [NSData dataWithBytes:&bytes[v17] length:8];

              if (!v44)
              {
                v24 = sub_10001B194(1);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_100041FAC();
                }

                v88 = 0;
                goto LABEL_127;
              }

              v88 = v44;
              goto LABEL_78;
            }

            if (v20 == 53)
            {
              v25 = sub_10001B194(1);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v94 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "==> Decoded Channel Mask TLV", v94, 2u);
              }

              v26 = v13 + 3;
              v12 = v19;
              v14 = v93;
              while (v26 - 1 < v18)
              {
                if (v26 >= v18 || v26 + 5 > v18)
                {
                  v24 = sub_10001B194(1);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    sub_100042518();
                  }

                  goto LABEL_127;
                }

                if ((bytes[v26 - 1] & 0xFD) != 0)
                {
                  v24 = sub_10001B194(1);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000424A0();
                  }

                  goto LABEL_127;
                }

                v28 = bytes[v26];
                v26 += 6;
                if (v28 != 4)
                {
                  v24 = sub_10001B194(1);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000424DC();
                  }

                  goto LABEL_127;
                }
              }

              goto LABEL_79;
            }

            goto LABEL_91;
          }

          v38 = sub_10001B194(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 67109120;
            LODWORD(v95) = v16;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "==> Decoded security policy  , len : %d", v94, 8u);
          }

          v12 = v19;
          if ((v16 - 3) >= 2)
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_10004208C();
            }

            goto LABEL_127;
          }

          if (!bytes[v17] && !bytes[v13 + 3])
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1000420FC();
            }

            goto LABEL_127;
          }

          v24 = sub_10001B194(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [NSData dataWithBytes:&bytes[v17] length:v16];
            *v94 = 138412290;
            v95 = v39;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "security policy : %@", v94, 0xCu);
          }
        }
      }

      else if (v20 <= 1)
      {
        if (v20)
        {
          v29 = sub_10001B194(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "==> Decoded pan id  ", v94, 2u);
          }

          v12 = v19;
          if (v16 != 2)
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100042288();
            }

            goto LABEL_127;
          }

          v30 = [NSData dataWithBytes:&bytes[v17] length:2];

          v24 = sub_10001B194(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 138412290;
            v95 = v30;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PANID : %@", v94, 0xCu);
          }

          v89 = v30;
        }

        else
        {
          v32 = sub_10001B194(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "==> Decoded channel  ", v94, 2u);
          }

          v12 = v19;
          if (v16 != 3)
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1000422F8();
            }

            goto LABEL_127;
          }

          if (bytes[v17])
          {
            v24 = sub_10001B194(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_100042368(&bytes[v17]);
            }

            goto LABEL_127;
          }

          v85 = bytes[v13 + 4];
          v33 = sub_10001B194(1);
          v24 = v33;
          if ((v85 - 27) <= 0xEFu)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_1000423F4();
            }

            goto LABEL_127;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 67109120;
            LODWORD(v95) = v85;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Channel : %d", v94, 8u);
          }
        }
      }

      else if (v20 == 2)
      {
        v36 = sub_10001B194(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "==> Decoded XPAN ID", v94, 2u);
        }

        v12 = v19;
        if (v16 != 8)
        {
          v24 = sub_10001B194(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100042218();
          }

          goto LABEL_127;
        }

        v37 = [NSData dataWithBytes:&bytes[v17] length:8];

        v24 = sub_10001B194(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 138412290;
          v95 = v37;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "XPAN ID: %@", v94, 0xCu);
        }

        v90 = v37;
      }

      else
      {
        if (v20 == 3)
        {
          __memcpy_chk();
          v98[v16] = 0;
          v41 = sub_10001B194(1);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "==> Decoded Network Name  ", v94, 2u);
          }

          v40 = [NSString stringWithUTF8String:v98];

          v42 = sub_10001B194(1);
          v24 = v42;
          if (!v40)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_100042464();
            }

            v12 = 0;
            goto LABEL_127;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 138412290;
            v95 = v40;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Network Name : %@", v94, 0xCu);
          }

          goto LABEL_77;
        }

        v22 = sub_10001B194(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "==> Decoded pskc", v94, 2u);
        }

        v12 = v19;
        if (v16 != 16)
        {
          v24 = sub_10001B194(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000421A8();
          }

          goto LABEL_127;
        }

        v23 = [NSData dataWithBytes:&bytes[v17] length:16];

        v24 = sub_10001B194(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 138739971;
          v95 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PSKc : %{sensitive}@", v94, 0xCu);
        }

        v91 = v23;
      }

      v40 = v12;
LABEL_77:

      v12 = v40;
LABEL_78:
      v14 = v93;
LABEL_79:

      v13 += 2 + v16;
      if (v18 >= v8)
      {
        goto LABEL_95;
      }
    }
  }

  v88 = 0;
  v89 = 0;
  LOBYTE(v85) = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v12 = 0;
LABEL_95:
  v45 = sub_10001B194(1);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
  if (!v12 || !v90 || !v92 || !v91 || !v89 || !v85)
  {
    if (v46)
    {
      sub_1000425CC();
    }

    goto LABEL_130;
  }

  v47 = v12;
  v48 = v87;
  if (v46)
  {
    sub_100042608();
  }

  if (!v88 && !sCopy)
  {
    v49 = sub_10001B194(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100042644();
    }

    v88 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_154;
  }

  v55 = 0;
  if (!v88 && sCopy)
  {
    v56 = [(THThreadNetworkCredentialsKeychainBackingStore *)self appendActiveTimeStampTLV:v87];
    if (v56)
    {
      v55 = v56;

      v48 = v55;
    }

    else
    {
      v55 = 0;
    }
  }

  LOBYTE(v76) = 1;
  v54 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v92 passPhrase:0 PSKc:v91 channel:v85 PANID:v89 userInfo:0 credentialDataSet:0 isActiveDevice:v76];
  v60 = sub_10001B194(1);
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
  v87 = v48;
  if (!v54)
  {
    if (v61)
    {
      sub_1000427E0();
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    goto LABEL_154;
  }

  if (v61)
  {
    sub_100042680();
  }

  v62 = [[THThreadNetwork alloc] initWithName:v47 extendedPANID:v90];
  if (!v62)
  {
    v71 = sub_10001B194(1);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_1000427A4();
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_153;
  }

  v52 = v62;
  v63 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v48 userInfo:0];
  if (!v63)
  {
    v72 = sub_10001B194(1);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      sub_100042768();
    }

    v50 = 0;
    v51 = 0;
LABEL_153:
    v53 = 0;
LABEL_154:
    v58 = 0;
    v12 = v47;
    goto LABEL_132;
  }

  v53 = v63;
  v64 = [THThreadNetworkBorderAgent alloc];
  v65 = sub_100039F40();
  v66 = [(THThreadNetworkCredentialsKeychainBackingStore *)self dataFromHexString:v65];
  v51 = [v64 initWithBaDiscrId:v66];

  if (!v51)
  {
    v73 = sub_10001B194(1);
    v12 = v47;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10004272C();
    }

    v50 = 0;
    v51 = 0;
    goto LABEL_131;
  }

  v50 = [THThreadNetworkCredentialsActiveDataSetRecord computedUniqueIdentifierForNetwork:v52 keychainAccessGroup:@"com.apple.thread.dataset"];
  v67 = [[THThreadNetworkCredentialsActiveDataSetRecord alloc] initWithBorderAgent:v51 credentialsDataSet:v53 network:v52 credentials:v54 uniqueIdentifier:v50 keychainAccessGroup:@"0000000000" creationDate:0 lastModificationDate:0];
  *creds = v67;
  v12 = v47;
  if (!v67)
  {
    v75 = sub_10001B194(1);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_1000426F0();
    }

    goto LABEL_131;
  }

  [v67 credentials];
  v68 = v58 = 1;
  [v68 setIsActiveDevice:1];

  v78 = [THThreadNetworkCredentialsDataSet alloc];
  credentialsDataSet = [*creds credentialsDataSet];
  dataSetArray = [credentialsDataSet dataSetArray];
  credentials = [*creds credentials];
  userInfo = [credentials userInfo];
  v69 = [v78 initWithDataSetArray:dataSetArray userInfo:userInfo];
  credentials2 = [*creds credentials];
  [credentials2 setCredentialsDataSet:v69];

  if (v55 && sCopy)
  {
    *appended = 1;
  }

LABEL_132:

  return v58;
}

- (id)appendActiveTimeStampTLV:(id)v
{
  memset(v20, 0, 254);
  vCopy = v;
  bytes = [vCopy bytes];
  v5 = [vCopy length];

  bzero(v19, 0x3E8uLL);
  __memcpy_chk();
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Appending Dataset with Active Timestamp TLV", &buf, 2u);
  }

  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.tv_sec) = 67109120;
    HIDWORD(buf.tv_sec) = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " data_len : %d", &buf, 8u);
  }

  sub_1000085B4(bytes, v5, v19, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.tv_sec) = 136315138;
    *(&buf.tv_sec + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Before appending - dataset: %s", &buf, 0xCu);
  }

  buf.tv_sec = 0;
  *&buf.tv_usec = 0;
  gettimeofday(&buf, 0);
  tv_sec = buf.tv_sec;
  v10 = v20 + v5;
  *v10 = 2062;
  *(v10 + 2) = bswap64(tv_sec) >> 16;
  v11 = v5 + 10;
  sub_1000085B4(v20, v5 + 10, v19, 0x3E8uLL, 0);
  v12 = sub_10001B194(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Append complete : dataset: %s", &v16, 0xCu);
  }

  v13 = [[NSData alloc] initWithBytes:v20 length:v11];
  v14 = sub_10001B194(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Append complete : datasetTlvs : %@", &v16, 0xCu);
  }

  return v13;
}

- (id)generateCredentials
{
  v43 = 0;
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "[THThreadNetworkCredentialsKeychainBackingStore generateCredentials]";
    v50 = 1024;
    v51 = 5796;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d Generating Credentials", buf, 0x12u);
  }

  if ([(THThreadNetworkCredentialsKeychainBackingStore *)self isEthernetNetwork])
  {
    v4 = sub_10001B194(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000428A0();
    }

    if (![(THThreadNetworkCredentialsKeychainBackingStore *)self isWiFiNetwork])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([(THThreadNetworkCredentialsKeychainBackingStore *)self isWiFiNetwork])
  {
LABEL_9:
    v5 = sub_10001B194(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "[THThreadNetworkCredentialsKeychainBackingStore generateCredentials]";
      v50 = 1024;
      v51 = 5805;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d Device is on WiFi", buf, 0x12u);
    }

LABEL_12:
    memset(v69, 0, sizeof(v69));
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v52 = -1610480628;
    [(THThreadNetworkCredentialsKeychainBackingStore *)self getSecFlags:&v43];
    v53 = v43;
    v6 = [(THThreadNetworkCredentialsKeychainBackingStore *)self dataFromHexString:@"0004001fffc0"];
    v54 = ([v6 length] << 8) | 0x35;
    [v6 bytes];
    [v6 length];
    __memcpy_chk();
    v37 = [v6 length];
    v7 = [v6 length];
    v38 = sub_10003AB38();
    selfCopy = self;
    v8 = [(THThreadNetworkCredentialsKeychainBackingStore *)self dataFromHexString:?];
    *(&v52 + (v7 + 8)) = ([v8 length] << 8) | 2;
    memcpy(&v52 + (v7 + 10), [v8 bytes], objc_msgSend(v8, "length"));
    v36 = [v8 length];
    v9 = v7 + 10 + [v8 length];
    v10 = sub_10003AC40();
    *(&v52 + v9) = ([v10 length] << 8) | 5;
    v11 = v9 + 2;
    memcpy(&v52 + (v9 + 2), [v10 bytes], objc_msgSend(v10, "length"));
    v35 = [v10 length];
    v12 = [v10 length];
    v13 = v9 + 2 + v12;
    *(&v52 + (v11 + v12)) = 768;
    *(&v52 + (v11 + v12 + 2)) = 0;
    *(&v52 + (v11 + v12 + 3)) = 6400;
    v14 = v11 + v12 + 5;
    v15 = arc4random();
    *(&v52 + v14) = 513;
    *(&v52 + (v13 + 7)) = v15 + ((v15 / 0xF) & 0xF000) + 4096;
    v16 = sub_10003ADD4();
    *(&v52 + (v13 + 9)) = ([v16 length] << 8) | 3;
    v17 = v13 + 11;
    memcpy(&v52 + (v13 + 11), [v16 cStringUsingEncoding:4], objc_msgSend(v16, "length"));
    LOBYTE(v13) = [v16 length];
    v18 = v17 + [v16 length];
    v19 = sub_10003AC40();
    *(&v52 + v18) = ([v19 length] << 8) | 4;
    v20 = v18 + 2;
    memcpy(&v52 + (v18 + 2), [v19 bytes], objc_msgSend(v19, "length"));
    LOBYTE(v18) = [v19 length];
    v21 = v20 + [v19 length];
    v42.tv_sec = 0;
    *&v42.tv_usec = 0;
    gettimeofday(&v42, 0);
    tv_sec = v42.tv_sec;
    *(&v52 + v21) = 2062;
    *(&v52 + (v21 + 2)) = bswap64(tv_sec) >> 16;
    v41 = 0uLL;
    arc4random_buf(&v41 + 1, 5uLL);
    *(&v52 + (v21 + 10)) = 2055;
    LOBYTE(v41) = -3;
    *(&v52 + (v21 + 12)) = v41;
    v23 = v13 + v18;
    v24 = v37 + v36 + v35 + v13 + v18 + 45;
    sub_1000085B4(&v52, (v37 + v36 + v35 + v23 + 45), buf, 0x3E8uLL, 0);
    v25 = sub_10001B194(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 136315394;
      v45 = buf;
      v46 = 1024;
      v47 = 6047;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "dump: %s, Line : %d", v44, 0x12u);
    }

    v26 = [[NSData alloc] initWithBytes:&v52 length:v24];
    v27 = sub_10001B194(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 138412546;
      v45 = v26;
      v46 = 1024;
      v47 = 6051;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "datasetTlvs : %@, Line : %d", v44, 0x12u);
    }

    v40 = 0;
    v28 = [(THThreadNetworkCredentialsKeychainBackingStore *)selfCopy areValidDataSetTLVs:v26 creds:&v40];
    v29 = v40;
    v30 = sub_10001B194(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = "InValid";
      if (v28)
      {
        v31 = "Valid";
      }

      *v44 = 136315394;
      v45 = v31;
      v46 = 1024;
      v47 = 6055;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "isValid : %s, Line : %d", v44, 0x12u);
    }

    if (v28)
    {
      v32 = v29;
    }

    else
    {
      v33 = sub_10001B194(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100042924();
      }

      v32 = 0;
    }

    goto LABEL_29;
  }

  v29 = sub_10001B194(1);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10004281C();
  }

  v32 = 0;
LABEL_29:

  return v32;
}

@end