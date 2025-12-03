@interface THThreadNetworkCredentialsStoreLocalClient
- (THThreadNetworkCredentialsBackingStore)backingStore;
- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store;
- (id)parseActiveOperationalDataSet:(id)set;
- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseThreadNetworkActiveDataSet:(id)set;
- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion;
- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion;
- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion;
- (void)cleanThreadKeychainDatabase:(id)database;
- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion;
- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4;
- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7;
- (void)deletePreferredNetworkWithCompletion:(id)completion;
- (void)deleteRecordForNetwork:(id)network completion:(id)completion;
- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion;
- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllRecordsWithCompletion:(id)completion;
- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion;
- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveThirdPartyInfo:(id)info;
- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion;
- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion;
- (void)validateAODInternally:(id)internally completion:(id)completion;
- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion;
@end

@implementation THThreadNetworkCredentialsStoreLocalClient

- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store
{
  groupCopy = group;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsStoreLocalClient;
  v9 = [(THThreadNetworkCredentialsStoreLocalClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainAccessGroup, group);
    objc_storeWeak(&v10->_backingStore, storeCopy);
  }

  return v10;
}

- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A224;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A1B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A3F0;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A37C;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004A760;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A6EC;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A998;
    v13[3] = &unk_100079338;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A924;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)deleteRecordForNetwork:(id)network completion:(id)completion
{
  completionCopy = completion;
  networkCopy = network;
  keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
  v9 = [THThreadNetworkCredentialsStoreRecord computedUniqueIdentifierForNetwork:networkCopy keychainAccessGroup:keychainAccessGroup];

  if (v9)
  {
    [(THThreadNetworkCredentialsStoreLocalClient *)self deleteRecordWithUniqueIdentifier:v9 completion:completionCopy];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AB20;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004AF94;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AF24;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B15C;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B0EC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B328;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B2B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004B544;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B4D0;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B77C;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B708;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveThirdPartyInfo:(id)info
{
  infoCopy = info;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  v6 = backingStore;
  if (backingStore)
  {
    [backingStore retrieveThirdPartyInfo:infoCopy];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B8C0;
    block[3] = &unk_100078F10;
    v9 = infoCopy;
    dispatch_async(v7, block);
  }
}

- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BAF8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BA84;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BD20;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BCAC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BF48;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BED4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004C170;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C0FC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (!backingStore)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C7FC;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
    goto LABEL_5;
  }

  if (_os_feature_enabled_impl())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004C814;
    v9[3] = &unk_100079388;
    v10 = completionCopy;
    [backingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:v9];
    v6 = v10;
LABEL_5:

    goto LABEL_9;
  }

  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100053590();
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_9:
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CA40;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithNoScanWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100053614();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C9CC;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CCEC;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005371C();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CC78;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CF98;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100053824();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CF24;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D244;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkOfAnyDSFormatWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005392C();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D1D0;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D4CC;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000539B0();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D458;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
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
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10004D764;
    v27[3] = &unk_1000792E8;
    v23 = &v28;
    v28 = completionCopy;
    v24 = completionCopy;
    [backingStore addPreferredNetworkWithCompletionInternally:internallyCopy borderAgentID:dCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:iDCopy wifiPassword:passwordCopy completion:v27];
  }

  else
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D6F4;
    block[3] = &unk_100078F10;
    v23 = &v30;
    v30 = completionCopy;
    v26 = completionCopy;
    dispatch_async(v25, block);
  }
}

- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7
{
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v16 = a7;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004D970;
    v22[3] = &unk_1000792E8;
    v18 = &v23;
    v23 = v16;
    v19 = v16;
    [backingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:completionCopy ipv4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy completion:v22];
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D900;
    block[3] = &unk_100078F10;
    v18 = &v25;
    v25 = v16;
    v21 = v16;
    dispatch_async(v20, block);
  }
}

- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004DB38;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [backingStore deletePreferredNetworkEntryWithCompletion:completionCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DAC8;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)deletePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DCE4;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredNetworkWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DC74;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DE90;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredAndFrozenThreadNetworksWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DE20;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004E05C;
    v13[3] = &unk_100079078;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore storeCachedAODasPreferredNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DFE8;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion
{
  datasetCopy = dataset;
  networkCopy = network;
  setCopy = set;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    dataSetArray = [setCopy dataSetArray];
    v16 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseThreadNetworkActiveDataSet:dataSetArray];

    if (v16)
    {
      v17 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
      keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
      v19 = [v17 initWithBorderAgent:datasetCopy credentialsDataSet:setCopy network:networkCopy credentials:v16 uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004E78C;
      v23[3] = &unk_1000793B0;
      v24 = completionCopy;
      [backingStore updatePreferredNetworkWithNewDatasetRecord:v19 completion:v23];
    }

    else
    {
      v21 = sub_10001B194(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100053A34();
      }

      v22 = dispatch_get_global_queue(0, 0);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004E714;
      v25[3] = &unk_100078F10;
      v26 = completionCopy;
      dispatch_async(v22, v25);

      v19 = v26;
    }
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E69C;
    block[3] = &unk_100078F10;
    v28 = completionCopy;
    dispatch_async(v20, block);

    v16 = v28;
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EBD4;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EB60;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EE10;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004ED9C;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F048;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EFD8;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F224;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F1B4;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion
{
  setCopy = set;
  dCopy = d;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v12 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseActiveOperationalDataSet:setCopy];
    v13 = v12;
    if (v12)
    {
      network = [v12 network];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004F538;
      v18[3] = &unk_1000793D8;
      v15 = &v20;
      v20 = completionCopy;
      v19 = v13;
      [backingStore validateRecordWithMdnsScan:network borderAgentID:dCopy completion:v18];

      v16 = v19;
    }

    else
    {
      v16 = dispatch_get_global_queue(0, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10004F4C0;
      v21[3] = &unk_100078F10;
      v15 = &v22;
      v22 = completionCopy;
      dispatch_async(v16, v21);
    }
  }

  else
  {
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F448;
    block[3] = &unk_100078F10;
    v24 = completionCopy;
    dispatch_async(v17, block);

    v13 = v24;
  }
}

- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion
{
  datasetCopy = dataset;
  completionCopy = completion;
  if (datasetCopy)
  {
    backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
    if (!backingStore)
    {
      v11 = dispatch_get_global_queue(0, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004F860;
      v16[3] = &unk_100078F10;
      v17 = completionCopy;
      dispatch_async(v11, v16);

      v9 = v17;
      goto LABEL_7;
    }

    if (_os_feature_enabled_impl())
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004F8C0;
      v13[3] = &unk_100079400;
      v14 = datasetCopy;
      v15 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v13];

      v9 = v14;
LABEL_7:

      goto LABEL_11;
    }

    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100053A70();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F800;
    block[3] = &unk_100078F10;
    v19 = completionCopy;
    dispatch_async(v10, block);

    backingStore = v19;
  }

LABEL_11:
}

- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004FB30;
    v6[3] = &unk_100079428;
    v7 = completionCopy;
    [backingStore updatePreferredNetworkInternallyWithCompletion:v6];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)cleanThreadKeychainDatabase:(id)database
{
  databaseCopy = database;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004FCDC;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = databaseCopy;
    v7 = databaseCopy;
    [backingStore cleanThreadKeychainDatabase:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FC6C;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = databaseCopy;
    v9 = databaseCopy;
    dispatch_async(v8, block);
  }
}

- (void)validateAODInternally:(id)internally completion:(id)completion
{
  internallyCopy = internally;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004FEA8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore validateAODInternally:internallyCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FE34;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (id)parseActiveOperationalDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseDataSetFromTLVs:bytes data_len:v8];
}

- (id)parseThreadNetworkActiveDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseCredsFromTLVs:bytes data_len:v8];
}

- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000542A8();
  }

  sub_1000085B4(vs, data_len, v73, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10005432C();
  }

  if (data_len)
  {
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    LOBYTE(v62) = 0;
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (v10 >= data_len)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000543B0();
        }

        goto LABEL_113;
      }

      v11 = vs[v10];
      v12 = v9 + 2;
      v13 = v9 + 2 + v11;
      if (v13 > data_len)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_100054B5C();
        }

LABEL_113:

        v50 = 0;
        v52 = 0;
        v46 = 0;
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        v45 = v63;
        goto LABEL_130;
      }

      v14 = vs[v9];
      v15 = [NSNumber numberWithChar:v14];
      if ([v6 containsObject:v15])
      {
        v18 = sub_10001B194(1);
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100042554();
        }

        goto LABEL_127;
      }

      [v6 addObject:v15];
      if (v14 <= 4)
      {
        break;
      }

      if (v14 <= 11)
      {
        if (v14 == 5)
        {
          v31 = sub_10001B194(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = 1579;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v11 != 16)
          {
            v18 = sub_10001B194(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000545C0();
            }

LABEL_126:
            v42 = v66;
            v41 = v67;
            v44 = v64;
            v43 = v65;
LABEL_127:
            v45 = v63;
            goto LABEL_128;
          }

          v32 = [NSData dataWithBytes:&vs[v12] length:16];

          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 2117;
            *v72 = v32;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v65 = v32;
          goto LABEL_84;
        }

        if (v14 != 7)
        {
          goto LABEL_83;
        }

        v25 = sub_10001B194(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1609;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100054434();
          }

          goto LABEL_126;
        }
      }

      else
      {
        switch(v14)
        {
          case 12:
            v35 = sub_10001B194(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1594;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v11 - 3) >= 2)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_1000544B8();
              }

              goto LABEL_126;
            }

            if (!vs[v12] && !vs[v9 + 3])
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10005453C();
              }

              goto LABEL_126;
            }

            break;
          case 14:
            v39 = sub_10001B194(1);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v11 != 8)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              goto LABEL_126;
            }

            v40 = [NSData dataWithBytes:&vs[v12] length:8];

            if (!v40)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              v45 = 0;
              v42 = v66;
              v41 = v67;
              v44 = v64;
              v43 = v65;
LABEL_128:

LABEL_129:
              v50 = 0;
              v52 = 0;
              v46 = 0;
              goto LABEL_130;
            }

            v63 = v40;
            break;
          case 53:
            v19 = sub_10001B194(1);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1450;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v20 = v9 + 3;
            while (v20 - 1 < v13)
            {
              if (v20 >= v13 || v20 + 5 > v13)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100054AD8();
                }

                goto LABEL_126;
              }

              if ((vs[v20 - 1] & 0xFD) != 0)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_1000549D0();
                }

                goto LABEL_126;
              }

              v22 = vs[v20];
              v20 += 6;
              if (v22 != 4)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100054A54();
                }

                goto LABEL_126;
              }
            }

            break;
          default:
LABEL_83:
            v18 = sub_10001B194(1);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_84;
            }

            *buf = 136315650;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = v14;
            *&v72[4] = 1024;
            *&v72[6] = 1633;
            v28 = v18;
            v29 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
            v30 = 24;
LABEL_89:
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
            goto LABEL_84;
        }
      }

LABEL_86:

      v9 = v13;
      if (v13 >= data_len)
      {
        goto LABEL_91;
      }
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = sub_10001B194(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1533;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v11 != 2)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10005474C();
          }

          goto LABEL_126;
        }

        v24 = [NSData dataWithBytes:&vs[v12] length:2];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v24;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v66 = v24;
        goto LABEL_84;
      }

      v26 = sub_10001B194(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1499;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
      }

      if (v11 != 3)
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000547D0();
        }

        goto LABEL_126;
      }

      if (vs[v12])
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100054854(&vs[v12]);
        }

        goto LABEL_126;
      }

      v62 = vs[v9 + 4];
      v18 = sub_10001B194(1);
      v27 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if ((v62 - 27) <= 0xEFu)
      {
        if (v27)
        {
          sub_1000548D4();
        }

        goto LABEL_126;
      }

      if (v27)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = v62;
        v28 = v18;
        v29 = "%s: #MOS : Channel : %d";
        v30 = 18;
        goto LABEL_89;
      }

LABEL_84:
      v37 = v68;
    }

    else
    {
      if (v14 == 2)
      {
        v33 = sub_10001B194(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1548;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000546C8();
          }

          goto LABEL_126;
        }

        v34 = [NSData dataWithBytes:&vs[v12] length:8];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v34;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v67 = v34;
        goto LABEL_84;
      }

      if (v14 != 3)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1563;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        if (v11 != 16)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100054644();
          }

          goto LABEL_126;
        }

        v17 = [NSData dataWithBytes:&vs[v12] length:16];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2117;
          *v72 = v17;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v64 = v17;
        goto LABEL_84;
      }

      __memcpy_chk();
      v74[v11] = 0;
      v36 = sub_10001B194(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1488;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v37 = [NSString stringWithUTF8String:v74];

      v18 = sub_10001B194(1);
      v38 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (!v37)
      {
        if (v38)
        {
          sub_100054950();
        }

        v68 = 0;
        goto LABEL_126;
      }

      if (v38)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 2112;
        *v72 = v37;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }
    }

    v68 = v37;
    goto LABEL_86;
  }

  v63 = 0;
  v64 = 0;
  LOBYTE(v62) = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
LABEL_91:
  v42 = v66;
  v41 = v67;
  v44 = v64;
  v43 = v65;
  v45 = v63;
  if (!v68 || !v67 || !v65 || !v64 || !v66 || !v62 || !v63)
  {
    v53 = sub_10001B194(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100054BE0();
    }

    goto LABEL_129;
  }

  LOBYTE(v61) = 1;
  v46 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v65 passPhrase:0 PSKc:v64 channel:v62 PANID:v66 userInfo:0 credentialDataSet:0 isActiveDevice:v61];
  v47 = sub_10001B194(1);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  if (!v46)
  {
    if (v48)
    {
      sub_10005426C();
    }

    goto LABEL_129;
  }

  if (v48)
  {
    sub_100054C64();
  }

  v49 = [[THThreadNetwork alloc] initWithName:v68 extendedPANID:v67];
  if (v49)
  {
    v50 = v49;
    v51 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v49 credentials:v46 uniqueIdentifier:0 keychainAccessGroup:@"com.apple.thread.network" creationDate:0 lastModificationDate:0];
    if (v51)
    {
      v52 = v51;
      goto LABEL_130;
    }

    v58 = sub_10001B194(1);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1000541F4();
    }
  }

  else
  {
    v55 = sub_10001B194(1);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_100054230();
    }

    v50 = 0;
  }

  v52 = 0;
LABEL_130:

  return v52;
}

- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100054CDC();
  }

  sub_1000085B4(vs, data_len, v67, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100054D60();
  }

  if (data_len)
  {
    v9 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    LOBYTE(v57) = 0;
    v62 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (v11 >= data_len)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100054DE4();
        }

        goto LABEL_111;
      }

      v12 = vs[v11];
      v13 = v10 + 2;
      v14 = v10 + 2 + v12;
      if (v14 > data_len)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100055590();
        }

LABEL_111:
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        goto LABEL_120;
      }

      v15 = vs[v10];
      v16 = [NSNumber numberWithChar:v15];
      if ([v6 containsObject:v16])
      {
        v17 = v9;
        v20 = sub_10001B194(1);
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100042554();
        }

        goto LABEL_119;
      }

      [v6 addObject:v16];
      if (v15 <= 4)
      {
        break;
      }

      if (v15 <= 11)
      {
        if (v15 == 5)
        {
          v17 = v9;
          v30 = sub_10001B194(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1895;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v12 != 16)
          {
            v20 = sub_10001B194(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100054FF4();
            }

LABEL_118:
            v44 = v60;
            v43 = v61;
            v46 = v58;
            v45 = v59;
LABEL_119:

            v9 = v17;
LABEL_120:

LABEL_121:
            v49 = sub_10001B194(1);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_100055710();
            }

            v48 = 0;
            goto LABEL_124;
          }

          v31 = [NSData dataWithBytes:&vs[v13] length:16];

          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 2117;
            *v66 = v31;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v59 = v31;
LABEL_67:
          v34 = v17;
          goto LABEL_68;
        }

        if (v15 == 7)
        {
          v17 = v9;
          v27 = sub_10001B194(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1925;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
          }

          if (v12 != 8)
          {
            v20 = sub_10001B194(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100054E68();
            }

            goto LABEL_118;
          }

          goto LABEL_85;
        }
      }

      else
      {
        switch(v15)
        {
          case 12:
            v17 = v9;
            v35 = sub_10001B194(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1910;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v12 - 3) >= 2)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100054EEC();
              }

              goto LABEL_118;
            }

            if (!vs[v13] && !vs[v10 + 3])
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100054F70();
              }

              goto LABEL_118;
            }

            goto LABEL_85;
          case 14:
            v17 = v9;
            v41 = sub_10001B194(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v12 != 8)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              goto LABEL_118;
            }

            v42 = [NSData dataWithBytes:&vs[v13] length:8];

            if (!v42)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              v62 = 0;
              goto LABEL_118;
            }

            v62 = v42;
LABEL_85:
            v9 = v17;
            goto LABEL_86;
          case 53:
            v21 = sub_10001B194(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1766;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v22 = v10 + 3;
            while (v22 - 1 < v14)
            {
              if (v22 >= v14 || v22 + 5 > v14)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_10005550C();
                }

                goto LABEL_118;
              }

              if ((vs[v22 - 1] & 0xFD) != 0)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100055404();
                }

                goto LABEL_118;
              }

              v24 = vs[v22];
              v22 += 6;
              if (v24 != 4)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100055488();
                }

                goto LABEL_118;
              }
            }

            goto LABEL_86;
        }
      }

      v34 = v9;
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = v15;
        *&v66[4] = 1024;
        *&v66[6] = 1949;
        v38 = v20;
        v39 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
        v40 = 24;
LABEL_90:
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
      }

LABEL_68:

      v9 = v34;
LABEL_86:

      v10 = v14;
      if (v14 >= data_len)
      {
        goto LABEL_92;
      }
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        v17 = v9;
        v25 = sub_10001B194(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1849;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v12 != 2)
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055180();
          }

          goto LABEL_118;
        }

        v26 = [NSData dataWithBytes:&vs[v13] length:2];

        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 2112;
          *v66 = v26;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v60 = v26;
      }

      else
      {
        v28 = sub_10001B194(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1815;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
        }

        v17 = v9;
        if (v12 != 3)
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055204();
          }

          goto LABEL_118;
        }

        if (vs[v13])
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055288(&vs[v13]);
          }

          goto LABEL_118;
        }

        v57 = vs[v10 + 4];
        v20 = sub_10001B194(1);
        v29 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if ((v57 - 27) <= 0xEFu)
        {
          if (v29)
          {
            sub_100055308();
          }

          goto LABEL_118;
        }

        if (v29)
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = v57;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Channel : %d", buf, 0x12u);
        }
      }
    }

    else if (v15 == 2)
    {
      v17 = v9;
      v32 = sub_10001B194(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1864;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
      }

      if (v12 != 8)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000550FC();
        }

        goto LABEL_118;
      }

      v33 = [NSData dataWithBytes:&vs[v13] length:8];

      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v33;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
      }

      v61 = v33;
    }

    else
    {
      if (v15 == 3)
      {
        __memcpy_chk();
        v68[v12] = 0;
        v36 = sub_10001B194(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1804;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
        }

        v34 = [NSString stringWithUTF8String:v68];

        v20 = sub_10001B194(1);
        v37 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (!v34)
        {
          if (v37)
          {
            sub_100055384();
          }

          v17 = 0;
          goto LABEL_118;
        }

        if (!v37)
        {
          goto LABEL_68;
        }

        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v34;
        v38 = v20;
        v39 = "%s : #MOS : Network Name : %@";
        v40 = 22;
        goto LABEL_90;
      }

      v17 = v9;
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1879;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
      }

      if (v12 != 16)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100055078();
        }

        goto LABEL_118;
      }

      v19 = [NSData dataWithBytes:&vs[v13] length:16];

      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2117;
        *v66 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
      }

      v58 = v19;
    }

    goto LABEL_67;
  }

  v61 = 0;
  v62 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v9 = 0;
LABEL_92:
  v44 = v60;
  v43 = v61;
  v46 = v58;
  v45 = v59;
  if (v9 && v61 && v59 && v58 && v60 && v57 && v62)
  {
    LOBYTE(v56) = 1;
    v47 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v59 passPhrase:0 PSKc:v58 channel:v57 PANID:v60 userInfo:0 credentialDataSet:0 isActiveDevice:v56];
    if (!v47)
    {
      goto LABEL_121;
    }

    v48 = v47;
    v49 = sub_10001B194(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100055698();
    }

LABEL_124:

    v51 = v48;
  }

  else
  {
    v50 = sub_10001B194(1);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_100055614();
    }

    v51 = 0;
  }

  return v51;
}

- (THThreadNetworkCredentialsBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

@end