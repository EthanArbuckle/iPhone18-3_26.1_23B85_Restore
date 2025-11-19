@interface THThreadNetworkCredentialsStoreLocalClient
- (THThreadNetworkCredentialsBackingStore)backingStore;
- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)a3 backingStore:(id)a4;
- (id)parseActiveOperationalDataSet:(id)a3;
- (id)parseCredsFromTLVs:(const char *)a3 data_len:(unsigned int)a4;
- (id)parseDataSetFromTLVs:(const char *)a3 data_len:(unsigned int)a4;
- (id)parseThreadNetworkActiveDataSet:(id)a3;
- (void)addPreferredNetworkWithCompletionInternally:(id)a3 borderAgentID:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 wifiPassword:(id)a8 completion:(id)a9;
- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)a3;
- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)a3 completion:(id)a4;
- (void)cleanThreadKeychainDatabase:(id)a3;
- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4;
- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)a3 completion:(id)a4;
- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)a3 completion:(id)a4;
- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)a3;
- (void)deletePreferredNetworkEntryWithCompletion:(id)a3 completion:(id)a4;
- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 ipv4NwSignature:(id)a4 ipv6NwSignature:(id)a5 wifiSSID:(id)a6 completion:(id)a7;
- (void)deletePreferredNetworkWithCompletion:(id)a3;
- (void)deleteRecordForNetwork:(id)a3 completion:(id)a4;
- (void)deleteRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)a3 completion:(id)a4;
- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)a3 completion:(id)a4;
- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)a3;
- (void)retrieveAllRecordsForNetwork:(id)a3 completion:(id)a4;
- (void)retrieveAllRecordsWithCompletion:(id)a3;
- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)retrievePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)a3;
- (void)retrievePreferredNetworkWithCompletion:(id)a3;
- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)a3;
- (void)retrieveRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)retrieveThirdPartyInfo:(id)a3;
- (void)storeCachedAODasPreferredNetwork:(id)a3 completion:(id)a4;
- (void)updatePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)updatePreferredNetworkWithNewDataset:(id)a3 network:(id)a4 credentialsDataSet:(id)a5 completion:(id)a6;
- (void)validateAODInternally:(id)a3 completion:(id)a4;
- (void)validateRecordWithMdnsScanWithDataSet:(id)a3 borderAgentID:(id)a4 completion:(id)a5;
@end

@implementation THThreadNetworkCredentialsStoreLocalClient

- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)a3 backingStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsStoreLocalClient;
  v9 = [(THThreadNetworkCredentialsStoreLocalClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainAccessGroup, a3);
    objc_storeWeak(&v10->_backingStore, v8);
  }

  return v10;
}

- (void)deleteRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A224;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 deleteRecordWithUniqueIdentifier:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A1B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsForNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A3F0;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveAllRecordsForNetwork:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A37C;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004A760;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = v4;
    v7 = v4;
    [v5 retrieveAllRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A6EC;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }
}

- (void)retrieveRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A998;
    v13[3] = &unk_100079338;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveRecordWithUniqueIdentifier:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A924;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)deleteRecordForNetwork:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
  v9 = [THThreadNetworkCredentialsStoreRecord computedUniqueIdentifierForNetwork:v7 keychainAccessGroup:v8];

  if (v9)
  {
    [(THThreadNetworkCredentialsStoreLocalClient *)self deleteRecordWithUniqueIdentifier:v9 completion:v6];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AB20;
    block[3] = &unk_100078F10;
    v12 = v6;
    dispatch_async(v10, block);
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004AF94;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 deleteActiveDataSetRecordWithUniqueIdentifier:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AF24;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B15C;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 deleteActiveDataSetRecordForThreadBorderAgent:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B0EC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B328;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveAllActiveDataSetRecordsForNetwork:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B2B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004B544;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = v4;
    v7 = v4;
    [v5 retrieveAllActiveDataSetRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B4D0;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B77C;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveActiveDataSetRecordWithUniqueIdentifier:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B708;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveThirdPartyInfo:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  v6 = v5;
  if (v5)
  {
    [v5 retrieveThirdPartyInfo:v4];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B8C0;
    block[3] = &unk_100078F10;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BAF8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveActiveDataSetRecordWithExtendedPANId:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BA84;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BD20;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BCAC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BF48;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BED4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004C170;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 retrieveActiveDataSetRecordForThreadBorderAgent:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C0FC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (!v5)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C7FC;
    block[3] = &unk_100078F10;
    v12 = v4;
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
    v10 = v4;
    [v5 checkIfRecordForPreferredNetworkIsPresentWithCompletion:v9];
    v6 = v10;
LABEL_5:

    goto LABEL_9;
  }

  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100053590();
  }

  (*(v4 + 2))(v4, 1, 0);
LABEL_9:
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CA40;
      v9[3] = &unk_100079360;
      v10 = v4;
      [v5 retrievePreferredNetworkWithNoScanWithCompletion:v9];
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
      (*(v4 + 2))(v4, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C9CC;
    block[3] = &unk_100078F10;
    v12 = v4;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CCEC;
      v9[3] = &unk_100079360;
      v10 = v4;
      [v5 retrievePreferredNetworkWithCompletion:v9];
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
      (*(v4 + 2))(v4, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CC78;
    block[3] = &unk_100078F10;
    v12 = v4;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CF98;
      v9[3] = &unk_100079360;
      v10 = v4;
      [v5 retrievePreferredNetworkInternallyWithCompletion:v9];
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
      (*(v4 + 2))(v4, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CF24;
    block[3] = &unk_100078F10;
    v12 = v4;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D244;
      v9[3] = &unk_100079360;
      v10 = v4;
      [v5 retrievePreferredNetworkOfAnyDSFormatWithCompletion:v9];
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
      (*(v4 + 2))(v4, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D1D0;
    block[3] = &unk_100078F10;
    v12 = v4;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D4CC;
      v9[3] = &unk_100079360;
      v10 = v4;
      [v5 retrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];
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
      (*(v4 + 2))(v4, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D458;
    block[3] = &unk_100078F10;
    v12 = v4;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)addPreferredNetworkWithCompletionInternally:(id)a3 borderAgentID:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 wifiPassword:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v22)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10004D764;
    v27[3] = &unk_1000792E8;
    v23 = &v28;
    v28 = v21;
    v24 = v21;
    [v22 addPreferredNetworkWithCompletionInternally:v15 borderAgentID:v16 ipV4NwSignature:v17 ipv6NwSignature:v18 wifiSSID:v19 wifiPassword:v20 completion:v27];
  }

  else
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D6F4;
    block[3] = &unk_100078F10;
    v23 = &v30;
    v30 = v21;
    v26 = v21;
    dispatch_async(v25, block);
  }
}

- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 ipv4NwSignature:(id)a4 ipv6NwSignature:(id)a5 wifiSSID:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v17)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004D970;
    v22[3] = &unk_1000792E8;
    v18 = &v23;
    v23 = v16;
    v19 = v16;
    [v17 deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:v12 ipv4NwSignature:v13 ipv6NwSignature:v14 wifiSSID:v15 completion:v22];
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

- (void)deletePreferredNetworkEntryWithCompletion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004DB38;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 deletePreferredNetworkEntryWithCompletion:v6 completion:v13];
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

- (void)deletePreferredNetworkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DCE4;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = v4;
    v7 = v4;
    [v5 deletePreferredNetworkWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DC74;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }
}

- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DE90;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = v4;
    v7 = v4;
    [v5 deletePreferredAndFrozenThreadNetworksWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DE20;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }
}

- (void)storeCachedAODasPreferredNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004E05C;
    v13[3] = &unk_100079078;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 storeCachedAODasPreferredNetwork:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DFE8;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)updatePreferredNetworkWithNewDataset:(id)a3 network:(id)a4 credentialsDataSet:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v14)
  {
    v15 = [v12 dataSetArray];
    v16 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseThreadNetworkActiveDataSet:v15];

    if (v16)
    {
      v17 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
      v18 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
      v19 = [v17 initWithBorderAgent:v10 credentialsDataSet:v12 network:v11 credentials:v16 uniqueIdentifier:0 keychainAccessGroup:v18 creationDate:0 lastModificationDate:0];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004E78C;
      v23[3] = &unk_1000793B0;
      v24 = v13;
      [v14 updatePreferredNetworkWithNewDatasetRecord:v19 completion:v23];
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
      v26 = v13;
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
    v28 = v13;
    dispatch_async(v20, block);

    v16 = v28;
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v9 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EBD4;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = v7;
    v11 = v7;
    [v8 retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:v6 keychainAccessGroup:v9 completion:v13];
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EB60;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v9 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EE10;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = v7;
    v11 = v7;
    [v8 retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:v6 keychainAccessGroup:v9 completion:v13];
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004ED9C;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v9 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F048;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = v7;
    v11 = v7;
    [v8 deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:v6 keychainAccessGroup:v9 completion:v13];
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EFD8;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v9 = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F224;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = v7;
    v11 = v7;
    [v8 deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:v6 keychainAccessGroup:v9 completion:v13];
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F1B4;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)validateRecordWithMdnsScanWithDataSet:(id)a3 borderAgentID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v11)
  {
    v12 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseActiveOperationalDataSet:v8];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 network];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004F538;
      v18[3] = &unk_1000793D8;
      v15 = &v20;
      v20 = v10;
      v19 = v13;
      [v11 validateRecordWithMdnsScan:v14 borderAgentID:v9 completion:v18];

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
      v22 = v10;
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
    v24 = v10;
    dispatch_async(v17, block);

    v13 = v24;
  }
}

- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
    if (!v8)
    {
      v11 = dispatch_get_global_queue(0, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004F860;
      v16[3] = &unk_100078F10;
      v17 = v7;
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
      v14 = v6;
      v15 = v7;
      [v8 retrievePreferredNetworkWithCompletion:v13];

      v9 = v14;
LABEL_7:

      goto LABEL_11;
    }

    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100053A70();
    }

    (*(v7 + 2))(v7, 0);
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F800;
    block[3] = &unk_100078F10;
    v19 = v7;
    dispatch_async(v10, block);

    v8 = v19;
  }

LABEL_11:
}

- (void)updatePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004FB30;
    v6[3] = &unk_100079428;
    v7 = v4;
    [v5 updatePreferredNetworkInternallyWithCompletion:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)cleanThreadKeychainDatabase:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004FCDC;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = v4;
    v7 = v4;
    [v5 cleanThreadKeychainDatabase:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FC6C;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }
}

- (void)validateAODInternally:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004FEA8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [v8 validateAODInternally:v6 completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FE34;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (id)parseActiveOperationalDataSet:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseDataSetFromTLVs:v7 data_len:v8];
}

- (id)parseThreadNetworkActiveDataSet:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseCredsFromTLVs:v7 data_len:v8];
}

- (id)parseDataSetFromTLVs:(const char *)a3 data_len:(unsigned int)a4
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000542A8();
  }

  sub_1000085B4(a3, a4, v73, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10005432C();
  }

  if (a4)
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
      if (v10 >= a4)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000543B0();
        }

        goto LABEL_113;
      }

      v11 = a3[v10];
      v12 = v9 + 2;
      v13 = v9 + 2 + v11;
      if (v13 > a4)
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

      v14 = a3[v9];
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

          v32 = [NSData dataWithBytes:&a3[v12] length:16];

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

            if (!a3[v12] && !a3[v9 + 3])
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

            v40 = [NSData dataWithBytes:&a3[v12] length:8];

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

              if ((a3[v20 - 1] & 0xFD) != 0)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_1000549D0();
                }

                goto LABEL_126;
              }

              v22 = a3[v20];
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
      if (v13 >= a4)
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

        v24 = [NSData dataWithBytes:&a3[v12] length:2];

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

      if (a3[v12])
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100054854(&a3[v12]);
        }

        goto LABEL_126;
      }

      v62 = a3[v9 + 4];
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

        v34 = [NSData dataWithBytes:&a3[v12] length:8];

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

        v17 = [NSData dataWithBytes:&a3[v12] length:16];

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

- (id)parseCredsFromTLVs:(const char *)a3 data_len:(unsigned int)a4
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100054CDC();
  }

  sub_1000085B4(a3, a4, v67, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100054D60();
  }

  if (a4)
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
      if (v11 >= a4)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100054DE4();
        }

        goto LABEL_111;
      }

      v12 = a3[v11];
      v13 = v10 + 2;
      v14 = v10 + 2 + v12;
      if (v14 > a4)
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

      v15 = a3[v10];
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

          v31 = [NSData dataWithBytes:&a3[v13] length:16];

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

            if (!a3[v13] && !a3[v10 + 3])
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

            v42 = [NSData dataWithBytes:&a3[v13] length:8];

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

              if ((a3[v22 - 1] & 0xFD) != 0)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100055404();
                }

                goto LABEL_118;
              }

              v24 = a3[v22];
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
      if (v14 >= a4)
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

        v26 = [NSData dataWithBytes:&a3[v13] length:2];

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

        if (a3[v13])
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055288(&a3[v13]);
          }

          goto LABEL_118;
        }

        v57 = a3[v10 + 4];
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

      v33 = [NSData dataWithBytes:&a3[v13] length:8];

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

      v19 = [NSData dataWithBytes:&a3[v13] length:16];

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