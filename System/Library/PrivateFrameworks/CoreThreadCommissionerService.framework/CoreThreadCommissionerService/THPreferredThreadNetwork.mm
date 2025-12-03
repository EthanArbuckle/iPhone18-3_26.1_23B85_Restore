@interface THPreferredThreadNetwork
+ (id)keyChainQueryForDeleteAllPreferredNetworks;
+ (id)keyChainQueryForDeletePreferredNetworkRecord:(id)record;
+ (id)keyChainQueryForDeletePreferredNetworkRecordForNetworkSignature:(id)signature;
+ (id)keyChainQueryForDeletePreferredNetworkRecordOperationForNetworkName:(id)name;
+ (id)keyChainQueryForDeletePreferredNetworkRecordWithNetworkName:(id)name;
+ (id)keyChainQueryForFetchPreferredNetworkRecordsOperation;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForLabelAsSSID:(id)d;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetwork:(id)network;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetworkName:(id)name;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetworkSignature:(id)signature;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForWifiNetwork:(id)network;
+ (id)keyChainQueryForPreferredNetworkRecordsOperationForWifiNetworkWithSignature:(id)signature;
+ (id)preferredNetworkFromKeychainDictionary:(id)dictionary;
- (id)DEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation;
- (id)DEBUGkeyChainQueryForpreferredNetworkUpdateOperation;
- (id)keyChainItemRepresentationForpreferredNetworkAddOperation;
- (id)keyChainItemRepresentationForpreferredNetworkUpdateOperation;
- (id)keyChainQueryForpreferredNetworkUpdateOperation;
@end

@implementation THPreferredThreadNetwork

+ (id)preferredNetworkFromKeychainDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_autoreleasePoolPush();
  v5 = [dictionaryCopy objectForKey:kSecAttrAccount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [dictionaryCopy objectForKey:kSecAttrAccount];
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKey:kSecAttrServer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [dictionaryCopy objectForKey:kSecAttrServer];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100018650(v8);
  v10 = [dictionaryCopy objectForKey:kSecAttrPort];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [dictionaryCopy objectForKey:kSecAttrPort];
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKey:kSecAttrProtocol];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [dictionaryCopy objectForKey:kSecAttrProtocol];
  }

  else
  {
    v13 = 0;
  }

  v50 = v11;
  v14 = sub_100018650(v11);
  v49 = v13;
  v15 = sub_100018650(v13);
  v16 = [dictionaryCopy objectForKey:kSecAttrAuthenticationType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = [dictionaryCopy objectForKey:kSecAttrAuthenticationType];
  }

  else
  {
    v51 = 0;
  }

  if (v6 && v9 && v14 && v15)
  {
    v17 = [dictionaryCopy objectForKey:kSecAttrSecurityDomain];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [dictionaryCopy objectForKey:kSecAttrSecurityDomain];

      if (v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v20 = sub_10001B194(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100047394();
    }

    v18 = &stru_100079A28;
LABEL_30:
    v48 = v9;
    v21 = [dictionaryCopy objectForKey:kSecAttrLabel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [dictionaryCopy objectForKey:kSecAttrLabel];

      if (v22)
      {
LABEL_37:
        v24 = [dictionaryCopy objectForKey:kSecValueData];
        objc_opt_class();
        v45 = v8;
        if (objc_opt_isKindOfClass())
        {
          v25 = [dictionaryCopy objectForKey:kSecValueData];
        }

        else
        {
          v25 = 0;
        }

        v52 = 0;
        v44 = v25;
        v26 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v25 error:&v52];
        v43 = v52;
        v27 = sub_10001B194(1);
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            network = [v26 network];
            [network networkName];
            v46 = v14;
            v30 = v15;
            v31 = v4;
            v33 = v32 = v22;
            *buf = 136315906;
            v54 = "+[THPreferredThreadNetwork(Keychain) preferredNetworkFromKeychainDictionary:]";
            v55 = 1024;
            v56 = 107;
            v57 = 2112;
            v58 = v33;
            v59 = 2112;
            v60 = v18;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: %d : credentials dataset record is present for preferred network entry : %@, ssid : %@", buf, 0x26u);

            v22 = v32;
            v4 = v31;
            v15 = v30;
            v14 = v46;

            v9 = v48;
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10004749C();
        }

        v47 = v6;
        v34 = [[THThreadNetwork alloc] initWithName:v6 extendedPANID:v9];
        if (v34)
        {
          v35 = [[THNetworkSignature alloc] initWithSignatures:v14 ipv6NwSignature:v15 wifSSID:v18 wifiPassword:v22];
          v42 = v4;
          if (v35)
          {
            v41 = v22;
            v36 = [dictionaryCopy objectForKey:kSecAttrCreationDate];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [dictionaryCopy objectForKey:kSecAttrCreationDate];
            }

            else
            {
              v37 = 0;
            }

            v38 = [dictionaryCopy objectForKey:kSecAttrModificationDate];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [dictionaryCopy objectForKey:kSecAttrModificationDate];
            }

            else
            {
              v39 = 0;
            }

            v19 = [[THPreferredThreadNetwork alloc] initWithThreadNetwork:v34 networkSignature:v35 credentialsDataSetRecord:v26 creationDate:v37 lastModificationDate:v39 userInfo:v51];
            v22 = v41;
          }

          else
          {
            v37 = sub_10001B194(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_100047524();
            }

            v19 = 0;
          }

          v4 = v42;
        }

        else
        {
          v35 = sub_10001B194(1);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_100047564();
          }

          v19 = 0;
        }

        v8 = v45;
        v6 = v47;
        v9 = v48;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v23 = sub_10001B194(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100047418();
    }

    v22 = &stru_100079A28;
    goto LABEL_37;
  }

  v18 = sub_10001B194(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10004730C();
  }

  v19 = 0;
LABEL_62:

  objc_autoreleasePoolPop(v4);

  return v19;
}

- (id)DEBUGkeyChainItemRepresentationForpreferredNetworkAddOperation
{
  dEBUGkeyChainQueryForpreferredNetworkUpdateOperation = [(THPreferredThreadNetwork *)self DEBUGkeyChainQueryForpreferredNetworkUpdateOperation];
  keyChainItemRepresentationForpreferredNetworkUpdateOperation = [(THPreferredThreadNetwork *)self keyChainItemRepresentationForpreferredNetworkUpdateOperation];
  v5 = keyChainItemRepresentationForpreferredNetworkUpdateOperation;
  if (dEBUGkeyChainQueryForpreferredNetworkUpdateOperation && keyChainItemRepresentationForpreferredNetworkUpdateOperation)
  {
    v6 = [dEBUGkeyChainQueryForpreferredNetworkUpdateOperation mutableCopy];
    [v6 addEntriesFromDictionary:v5];
    v10[0] = kSecAttrIsInvisible;
    v10[1] = kSecAttrSynchronizable;
    v11[0] = &__kCFBooleanTrue;
    v11[1] = &__kCFBooleanTrue;
    v10[2] = kSecAttrAccessGroup;
    v10[3] = kSecAttrSyncViewHint;
    v11[2] = @"com.apple.preferred.network";
    v11[3] = kSecAttrViewHintHome;
    v10[4] = kSecAttrAccessible;
    v10[5] = kSecAttrDescription;
    v11[4] = kSecAttrAccessibleAlways;
    v11[5] = @"Preferred Thread network Record";
    v10[6] = kSecAttrPath;
    v11[6] = @"com.apple.preferred.network";
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
    [v6 addEntriesFromDictionary:v7];

    v8 = [v6 copy];
  }

  else
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000475A4();
    }

    v8 = 0;
  }

  return v8;
}

- (id)DEBUGkeyChainQueryForpreferredNetworkUpdateOperation
{
  network = [(THPreferredThreadNetwork *)self network];
  networkName = [network networkName];
  if (!networkName)
  {
    goto LABEL_8;
  }

  v5 = networkName;
  network2 = [(THPreferredThreadNetwork *)self network];
  extendedPANID = [network2 extendedPANID];
  if (!extendedPANID)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v8 = extendedPANID;
  networkSignature = [(THPreferredThreadNetwork *)self networkSignature];
  ipv4NwSignature = [networkSignature ipv4NwSignature];
  if (!ipv4NwSignature)
  {

    goto LABEL_7;
  }

  v11 = ipv4NwSignature;
  networkSignature2 = [(THPreferredThreadNetwork *)self networkSignature];
  ipv6NwSignature = [networkSignature2 ipv6NwSignature];

  if (ipv6NwSignature)
  {
    v28[0] = kSecClass;
    v28[1] = kSecAttrSynchronizable;
    v29[0] = kSecClassInternetPassword;
    v29[1] = kSecAttrSynchronizableAny;
    v29[2] = kSecAttrViewHintHome;
    v28[2] = kSecAttrSyncViewHint;
    v28[3] = kSecAttrAccount;
    network3 = [(THPreferredThreadNetwork *)self network];
    networkName2 = [network3 networkName];
    v29[3] = networkName2;
    v28[4] = kSecAttrServer;
    network4 = [(THPreferredThreadNetwork *)self network];
    extendedPANID2 = [network4 extendedPANID];
    v15 = sub_100018B58(extendedPANID2);
    v29[4] = v15;
    v28[5] = kSecAttrPort;
    networkSignature3 = [(THPreferredThreadNetwork *)self networkSignature];
    ipv4NwSignature2 = [networkSignature3 ipv4NwSignature];
    v18 = sub_100018B58(ipv4NwSignature2);
    v29[5] = v18;
    v28[6] = kSecAttrProtocol;
    networkSignature4 = [(THPreferredThreadNetwork *)self networkSignature];
    ipv6NwSignature2 = [networkSignature4 ipv6NwSignature];
    v21 = sub_100018B58(ipv6NwSignature2);
    v29[6] = v21;
    v28[7] = kSecAttrAuthenticationType;
    userInfo = [(THPreferredThreadNetwork *)self userInfo];
    v29[7] = userInfo;
    v23 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:8];

    goto LABEL_12;
  }

LABEL_9:
  network3 = sub_10001B194(1);
  if (os_log_type_enabled(network3, OS_LOG_TYPE_ERROR))
  {
    sub_100047624();
  }

  v23 = 0;
LABEL_12:

  return v23;
}

- (id)keyChainItemRepresentationForpreferredNetworkAddOperation
{
  keyChainQueryForpreferredNetworkUpdateOperation = [(THPreferredThreadNetwork *)self keyChainQueryForpreferredNetworkUpdateOperation];
  keyChainItemRepresentationForpreferredNetworkUpdateOperation = [(THPreferredThreadNetwork *)self keyChainItemRepresentationForpreferredNetworkUpdateOperation];
  v5 = keyChainItemRepresentationForpreferredNetworkUpdateOperation;
  if (keyChainQueryForpreferredNetworkUpdateOperation && keyChainItemRepresentationForpreferredNetworkUpdateOperation)
  {
    v6 = [keyChainQueryForpreferredNetworkUpdateOperation mutableCopy];
    [v6 addEntriesFromDictionary:v5];
    v10[0] = kSecAttrIsInvisible;
    v10[1] = kSecAttrSynchronizable;
    v11[0] = &__kCFBooleanTrue;
    v11[1] = &__kCFBooleanTrue;
    v10[2] = kSecAttrAccessGroup;
    v10[3] = kSecAttrSyncViewHint;
    v11[2] = @"com.apple.preferred.network";
    v11[3] = kSecAttrViewHintHome;
    v10[4] = kSecAttrAccessible;
    v10[5] = kSecAttrDescription;
    v11[4] = kSecAttrAccessibleAlways;
    v11[5] = @"Preferred Thread network Record";
    v10[6] = kSecAttrPath;
    v11[6] = @"com.apple.preferred.network";
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
    [v6 addEntriesFromDictionary:v7];

    v8 = [v6 copy];
  }

  else
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000476AC();
    }

    v8 = 0;
  }

  return v8;
}

- (id)keyChainQueryForpreferredNetworkUpdateOperation
{
  network = [(THPreferredThreadNetwork *)self network];
  networkName = [network networkName];
  if (!networkName)
  {
    goto LABEL_12;
  }

  v5 = networkName;
  network2 = [(THPreferredThreadNetwork *)self network];
  extendedPANID = [network2 extendedPANID];
  if (!extendedPANID)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v8 = extendedPANID;
  networkSignature = [(THPreferredThreadNetwork *)self networkSignature];
  ipv4NwSignature = [networkSignature ipv4NwSignature];
  if (!ipv4NwSignature)
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = ipv4NwSignature;
  networkSignature2 = [(THPreferredThreadNetwork *)self networkSignature];
  ipv6NwSignature = [networkSignature2 ipv6NwSignature];
  if (!ipv6NwSignature)
  {
LABEL_9:

    goto LABEL_10;
  }

  v14 = ipv6NwSignature;
  networkSignature3 = [(THPreferredThreadNetwork *)self networkSignature];
  wifiSSID = [networkSignature3 wifiSSID];
  if (!wifiSSID)
  {

    goto LABEL_9;
  }

  v48 = wifiSSID;
  v52 = networkSignature3;
  networkSignature4 = [(THPreferredThreadNetwork *)self networkSignature];
  wifiPassword = [networkSignature4 wifiPassword];
  if (wifiPassword)
  {
    userInfo = [(THPreferredThreadNetwork *)self userInfo];
    v50 = userInfo == 0;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    networkSignature5 = [(THPreferredThreadNetwork *)self networkSignature];
    wifiSSID2 = [networkSignature5 wifiSSID];
    if ([wifiSSID2 length])
    {
    }

    else
    {
      networkSignature6 = [(THPreferredThreadNetwork *)self networkSignature];
      wifiPassword2 = [networkSignature6 wifiPassword];
      v26 = [wifiPassword2 length];

      if (!v26)
      {
        v56[0] = kSecClass;
        v56[1] = kSecAttrSynchronizable;
        v57[0] = kSecClassInternetPassword;
        v57[1] = kSecAttrSynchronizableAny;
        v57[2] = kSecAttrViewHintHome;
        v56[2] = kSecAttrSyncViewHint;
        v56[3] = kSecAttrAccount;
        network3 = [(THPreferredThreadNetwork *)self network];
        networkName2 = [network3 networkName];
        v57[3] = networkName2;
        v56[4] = kSecAttrServer;
        network4 = [(THPreferredThreadNetwork *)self network];
        extendedPANID2 = [network4 extendedPANID];
        v35 = sub_100018B58(extendedPANID2);
        v57[4] = v35;
        v56[5] = kSecAttrPort;
        networkSignature7 = [(THPreferredThreadNetwork *)self networkSignature];
        ipv4NwSignature2 = [networkSignature7 ipv4NwSignature];
        v38 = sub_100018B58(ipv4NwSignature2);
        v57[5] = v38;
        v56[6] = kSecAttrProtocol;
        networkSignature8 = [(THPreferredThreadNetwork *)self networkSignature];
        ipv6NwSignature2 = [networkSignature8 ipv6NwSignature];
        v41 = sub_100018B58(ipv6NwSignature2);
        v57[6] = v41;
        v56[7] = kSecAttrAuthenticationType;
        userInfo2 = [(THPreferredThreadNetwork *)self userInfo];
        v57[7] = userInfo2;
        v20 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:8];

        goto LABEL_25;
      }
    }

    v54[0] = kSecClass;
    v54[1] = kSecAttrSynchronizable;
    v55[0] = kSecClassInternetPassword;
    v55[1] = kSecAttrSynchronizableAny;
    v55[2] = kSecAttrViewHintHome;
    v54[2] = kSecAttrSyncViewHint;
    v54[3] = kSecAttrAccount;
    network3 = [(THPreferredThreadNetwork *)self network];
    networkName2 = [network3 networkName];
    v55[3] = networkName2;
    v54[4] = kSecAttrServer;
    network4 = [(THPreferredThreadNetwork *)self network];
    extendedPANID2 = [network4 extendedPANID];
    v47 = sub_100018B58(extendedPANID2);
    v55[4] = v47;
    v54[5] = kSecAttrPort;
    networkSignature9 = [(THPreferredThreadNetwork *)self networkSignature];
    ipv4NwSignature3 = [networkSignature9 ipv4NwSignature];
    v43 = sub_100018B58(ipv4NwSignature3);
    v55[5] = v43;
    v54[6] = kSecAttrProtocol;
    networkSignature10 = [(THPreferredThreadNetwork *)self networkSignature];
    ipv6NwSignature3 = [networkSignature10 ipv6NwSignature];
    v29 = sub_100018B58(ipv6NwSignature3);
    v55[6] = v29;
    v54[7] = kSecAttrSecurityDomain;
    networkSignature11 = [(THPreferredThreadNetwork *)self networkSignature];
    wifiSSID3 = [networkSignature11 wifiSSID];
    v55[7] = wifiSSID3;
    v54[8] = kSecAttrLabel;
    networkSignature12 = [(THPreferredThreadNetwork *)self networkSignature];
    wifiPassword3 = [networkSignature12 wifiPassword];
    v55[8] = wifiPassword3;
    v54[9] = kSecAttrAuthenticationType;
    userInfo3 = [(THPreferredThreadNetwork *)self userInfo];
    v55[9] = userInfo3;
    v20 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:10];

LABEL_25:
    goto LABEL_16;
  }

LABEL_13:
  network3 = sub_10001B194(1);
  if (os_log_type_enabled(network3, OS_LOG_TYPE_ERROR))
  {
    sub_10004772C();
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (id)keyChainItemRepresentationForpreferredNetworkUpdateOperation
{
  credentialsDataSetRecord = [(THPreferredThreadNetwork *)self credentialsDataSetRecord];
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:credentialsDataSetRecord requiringSecureCoding:1 error:&v7];
  v4 = v7;

  v8 = kSecValueData;
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v5;
}

+ (id)keyChainQueryForDeletePreferredNetworkRecordOperationForNetworkName:(id)name
{
  v11[0] = kSecAttrAccount;
  nameCopy = name;
  network = [nameCopy network];
  networkName = [network networkName];
  v12[0] = networkName;
  v11[1] = kSecAttrServer;
  network2 = [nameCopy network];

  extendedPANID = [network2 extendedPANID];
  v8 = sub_100018B58(extendedPANID);
  v12[1] = v8;
  v12[2] = kSecClassInternetPassword;
  v11[2] = kSecClass;
  v11[3] = kSecAttrSynchronizable;
  v12[3] = kSecAttrSynchronizableAny;
  v12[4] = @"com.apple.preferred.network";
  v11[4] = kSecAttrAccessGroup;
  v11[5] = kSecAttrSyncViewHint;
  v12[5] = kSecAttrViewHintHome;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

+ (id)keyChainQueryForDeleteAllPreferredNetworks
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrAccessGroup;
  v4[3] = kSecAttrSyncViewHint;
  v5[2] = @"com.apple.preferred.network";
  v5[3] = kSecAttrViewHintHome;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)keyChainQueryForFetchPreferredNetworkRecordsOperation
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrAccessGroup;
  v4[3] = kSecAttrSyncViewHint;
  v5[2] = @"com.apple.preferred.network";
  v5[3] = kSecAttrViewHintHome;
  v4[4] = kSecAttrAccessible;
  v4[5] = kSecReturnData;
  v4[6] = kSecReturnAttributes;
  v4[7] = kSecMatchLimit;
  v5[4] = kSecAttrAccessibleAlways;
  v5[5] = &__kCFBooleanTrue;
  v5[6] = &__kCFBooleanTrue;
  v5[7] = kSecMatchLimitAll;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetwork:(id)network
{
  v9[0] = kSecAttrAccount;
  networkCopy = network;
  networkName = [networkCopy networkName];
  v10[0] = networkName;
  v9[1] = kSecAttrServer;
  extendedPANID = [networkCopy extendedPANID];

  v6 = sub_100018B58(extendedPANID);
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = @"com.apple.preferred.network";
  v9[4] = kSecAttrAccessGroup;
  v9[5] = kSecAttrSyncViewHint;
  v9[6] = kSecReturnData;
  v9[7] = kSecReturnAttributes;
  v9[8] = kSecMatchLimit;
  v10[5] = kSecAttrViewHintHome;
  v10[6] = &__kCFBooleanTrue;
  v10[7] = &__kCFBooleanTrue;
  v10[8] = kSecMatchLimitAll;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:9];

  return v7;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetworkName:(id)name
{
  v6[0] = kSecAttrAccount;
  v6[1] = kSecClass;
  v7[0] = name;
  v7[1] = kSecClassInternetPassword;
  v6[2] = kSecAttrSynchronizable;
  v6[3] = kSecAttrAccessGroup;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = @"com.apple.preferred.network";
  v6[4] = kSecAttrSyncViewHint;
  v6[5] = kSecReturnData;
  v6[6] = kSecReturnAttributes;
  v6[7] = kSecMatchLimit;
  v7[4] = kSecAttrViewHintHome;
  v7[5] = &__kCFBooleanTrue;
  v7[6] = &__kCFBooleanTrue;
  v7[7] = kSecMatchLimitAll;
  nameCopy = name;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForWifiNetworkWithSignature:(id)signature
{
  signatureCopy = signature;
  ipv4NwSignature = [signatureCopy ipv4NwSignature];
  v5 = [ipv4NwSignature length];

  if (v5)
  {
    v22[0] = kSecAttrPort;
    ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
    v7 = sub_100018B58(ipv4NwSignature2);
    v23[0] = v7;
    v22[1] = kSecAttrSecurityDomain;
    wifiSSID = [signatureCopy wifiSSID];
    v23[1] = wifiSSID;
    v22[2] = kSecAttrLabel;
    wifiPassword = [signatureCopy wifiPassword];
    v23[2] = wifiPassword;
    v23[3] = kSecClassInternetPassword;
    v22[3] = kSecClass;
    v22[4] = kSecAttrSynchronizable;
    v23[4] = kSecAttrSynchronizableAny;
    v23[5] = @"com.apple.preferred.network";
    v22[5] = kSecAttrAccessGroup;
    v22[6] = kSecAttrSyncViewHint;
    v22[7] = kSecReturnData;
    v22[8] = kSecReturnAttributes;
    v22[9] = kSecMatchLimit;
    v23[6] = kSecAttrViewHintHome;
    v23[7] = &__kCFBooleanTrue;
    v23[8] = &__kCFBooleanTrue;
    v23[9] = kSecMatchLimitAll;
    v10 = v23;
    v11 = v22;
LABEL_5:
    v14 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:10];
    goto LABEL_6;
  }

  ipv6NwSignature = [signatureCopy ipv6NwSignature];
  v13 = [ipv6NwSignature length];

  if (v13)
  {
    v20[0] = kSecAttrProtocol;
    ipv4NwSignature2 = [signatureCopy ipv6NwSignature];
    v7 = sub_100018B58(ipv4NwSignature2);
    v21[0] = v7;
    v20[1] = kSecAttrSecurityDomain;
    wifiSSID = [signatureCopy wifiSSID];
    v21[1] = wifiSSID;
    v20[2] = kSecAttrLabel;
    wifiPassword = [signatureCopy wifiPassword];
    v21[2] = wifiPassword;
    v21[3] = kSecClassInternetPassword;
    v20[3] = kSecClass;
    v20[4] = kSecAttrSynchronizable;
    v21[4] = kSecAttrSynchronizableAny;
    v21[5] = @"com.apple.preferred.network";
    v20[5] = kSecAttrAccessGroup;
    v20[6] = kSecAttrSyncViewHint;
    v20[7] = kSecReturnData;
    v20[8] = kSecReturnAttributes;
    v20[9] = kSecMatchLimit;
    v21[6] = kSecAttrViewHintHome;
    v21[7] = &__kCFBooleanTrue;
    v21[8] = &__kCFBooleanTrue;
    v21[9] = kSecMatchLimitAll;
    v10 = v21;
    v11 = v20;
    goto LABEL_5;
  }

  v18[0] = kSecAttrPort;
  ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
  v7 = sub_100018B58(ipv4NwSignature2);
  v19[0] = v7;
  v18[1] = kSecAttrProtocol;
  wifiSSID = [signatureCopy ipv6NwSignature];
  wifiPassword = sub_100018B58(wifiSSID);
  v19[1] = wifiPassword;
  v18[2] = kSecAttrSecurityDomain;
  wifiSSID2 = [signatureCopy wifiSSID];
  v19[2] = wifiSSID2;
  v18[3] = kSecAttrLabel;
  wifiPassword2 = [signatureCopy wifiPassword];
  v19[3] = wifiPassword2;
  v19[4] = kSecClassInternetPassword;
  v18[4] = kSecClass;
  v18[5] = kSecAttrSynchronizable;
  v19[5] = kSecAttrSynchronizableAny;
  v19[6] = @"com.apple.preferred.network";
  v18[6] = kSecAttrAccessGroup;
  v18[7] = kSecAttrSyncViewHint;
  v18[8] = kSecReturnData;
  v18[9] = kSecReturnAttributes;
  v18[10] = kSecMatchLimit;
  v19[7] = kSecAttrViewHintHome;
  v19[8] = &__kCFBooleanTrue;
  v19[9] = &__kCFBooleanTrue;
  v19[10] = kSecMatchLimitAll;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:11];

LABEL_6:

  return v14;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForWifiNetwork:(id)network
{
  v6[0] = kSecAttrSecurityDomain;
  wifiSSID = [network wifiSSID];
  v7[0] = wifiSSID;
  v7[1] = kSecClassInternetPassword;
  v6[1] = kSecClass;
  v6[2] = kSecAttrSynchronizable;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = @"com.apple.preferred.network";
  v6[3] = kSecAttrAccessGroup;
  v6[4] = kSecAttrSyncViewHint;
  v6[5] = kSecReturnData;
  v6[6] = kSecReturnAttributes;
  v6[7] = kSecMatchLimit;
  v7[4] = kSecAttrViewHintHome;
  v7[5] = &__kCFBooleanTrue;
  v7[6] = &__kCFBooleanTrue;
  v7[7] = kSecMatchLimitAll;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForLabelAsSSID:(id)d
{
  v6[0] = kSecAttrLabel;
  wifiSSID = [d wifiSSID];
  v7[0] = wifiSSID;
  v7[1] = kSecClassInternetPassword;
  v6[1] = kSecClass;
  v6[2] = kSecAttrSynchronizable;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = @"com.apple.preferred.network";
  v6[3] = kSecAttrAccessGroup;
  v6[4] = kSecAttrSyncViewHint;
  v6[5] = kSecReturnData;
  v6[6] = kSecReturnAttributes;
  v6[7] = kSecMatchLimit;
  v7[4] = kSecAttrViewHintHome;
  v7[5] = &__kCFBooleanTrue;
  v7[6] = &__kCFBooleanTrue;
  v7[7] = kSecMatchLimitAll;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

+ (id)keyChainQueryForPreferredNetworkRecordsOperationForNetworkSignature:(id)signature
{
  signatureCopy = signature;
  ipv4NwSignature = [signatureCopy ipv4NwSignature];
  v5 = [ipv4NwSignature length];

  if (v5)
  {
    v20[0] = kSecAttrPort;
    ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
    v7 = sub_100018B58(ipv4NwSignature2);
    v21[0] = v7;
    v21[1] = kSecClassInternetPassword;
    v20[1] = kSecClass;
    v20[2] = kSecAttrSynchronizable;
    v21[2] = kSecAttrSynchronizableAny;
    v21[3] = @"com.apple.preferred.network";
    v20[3] = kSecAttrAccessGroup;
    v20[4] = kSecAttrSyncViewHint;
    v20[5] = kSecReturnData;
    v20[6] = kSecReturnAttributes;
    v20[7] = kSecMatchLimit;
    v21[4] = kSecAttrViewHintHome;
    v21[5] = &__kCFBooleanTrue;
    v21[6] = &__kCFBooleanTrue;
    v21[7] = kSecMatchLimitAll;
    v8 = v21;
    v9 = v20;
LABEL_5:
    v12 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:8];
    goto LABEL_6;
  }

  ipv6NwSignature = [signatureCopy ipv6NwSignature];
  v11 = [ipv6NwSignature length];

  if (v11)
  {
    v18[0] = kSecAttrProtocol;
    ipv4NwSignature2 = [signatureCopy ipv6NwSignature];
    v7 = sub_100018B58(ipv4NwSignature2);
    v19[0] = v7;
    v19[1] = kSecClassInternetPassword;
    v18[1] = kSecClass;
    v18[2] = kSecAttrSynchronizable;
    v19[2] = kSecAttrSynchronizableAny;
    v19[3] = @"com.apple.preferred.network";
    v18[3] = kSecAttrAccessGroup;
    v18[4] = kSecAttrSyncViewHint;
    v18[5] = kSecReturnData;
    v18[6] = kSecReturnAttributes;
    v18[7] = kSecMatchLimit;
    v19[4] = kSecAttrViewHintHome;
    v19[5] = &__kCFBooleanTrue;
    v19[6] = &__kCFBooleanTrue;
    v19[7] = kSecMatchLimitAll;
    v8 = v19;
    v9 = v18;
    goto LABEL_5;
  }

  v16[0] = kSecAttrPort;
  ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
  v7 = sub_100018B58(ipv4NwSignature2);
  v17[0] = v7;
  v16[1] = kSecAttrProtocol;
  ipv6NwSignature2 = [signatureCopy ipv6NwSignature];
  v15 = sub_100018B58(ipv6NwSignature2);
  v17[1] = v15;
  v17[2] = kSecClassInternetPassword;
  v16[2] = kSecClass;
  v16[3] = kSecAttrSynchronizable;
  v17[3] = kSecAttrSynchronizableAny;
  v17[4] = @"com.apple.preferred.network";
  v16[4] = kSecAttrAccessGroup;
  v16[5] = kSecAttrSyncViewHint;
  v16[6] = kSecReturnData;
  v16[7] = kSecReturnAttributes;
  v16[8] = kSecMatchLimit;
  v17[5] = kSecAttrViewHintHome;
  v17[6] = &__kCFBooleanTrue;
  v17[7] = &__kCFBooleanTrue;
  v17[8] = kSecMatchLimitAll;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:9];

LABEL_6:

  return v12;
}

+ (id)keyChainQueryForDeletePreferredNetworkRecord:(id)record
{
  v19[0] = kSecAttrAccount;
  recordCopy = record;
  network = [recordCopy network];
  networkName = [network networkName];
  v20[0] = networkName;
  v19[1] = kSecAttrServer;
  network2 = [recordCopy network];
  extendedPANID = [network2 extendedPANID];
  v4 = sub_100018B58(extendedPANID);
  v20[1] = v4;
  v19[2] = kSecAttrPort;
  networkSignature = [recordCopy networkSignature];
  ipv4NwSignature = [networkSignature ipv4NwSignature];
  v7 = sub_100018B58(ipv4NwSignature);
  v20[2] = v7;
  v19[3] = kSecAttrProtocol;
  networkSignature2 = [recordCopy networkSignature];
  ipv6NwSignature = [networkSignature2 ipv6NwSignature];
  v10 = sub_100018B58(ipv6NwSignature);
  v20[3] = v10;
  v19[4] = kSecAttrSecurityDomain;
  networkSignature3 = [recordCopy networkSignature];

  wifiSSID = [networkSignature3 wifiSSID];
  v20[4] = wifiSSID;
  v20[5] = kSecClassInternetPassword;
  v19[5] = kSecClass;
  v19[6] = kSecAttrSynchronizable;
  v20[6] = kSecAttrSynchronizableAny;
  v20[7] = @"com.apple.preferred.network";
  v19[7] = kSecAttrAccessGroup;
  v19[8] = kSecAttrSyncViewHint;
  v20[8] = kSecAttrViewHintHome;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:9];

  return v13;
}

+ (id)keyChainQueryForDeletePreferredNetworkRecordForNetworkSignature:(id)signature
{
  signatureCopy = signature;
  ipv4NwSignature = [signatureCopy ipv4NwSignature];
  if (![ipv4NwSignature length])
  {
    goto LABEL_6;
  }

  ipv6NwSignature = [signatureCopy ipv6NwSignature];
  if (![ipv6NwSignature length])
  {

LABEL_6:
    goto LABEL_7;
  }

  wifiSSID = [signatureCopy wifiSSID];
  v7 = [wifiSSID length];

  if (v7)
  {
    v27[0] = kSecAttrPort;
    ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
    v9 = sub_100018B58(ipv4NwSignature2);
    v28[0] = v9;
    v27[1] = kSecAttrProtocol;
    ipv6NwSignature2 = [signatureCopy ipv6NwSignature];
    v11 = sub_100018B58(ipv6NwSignature2);
    v28[1] = v11;
    v27[2] = kSecAttrSecurityDomain;
    wifiSSID2 = [signatureCopy wifiSSID];
    v28[2] = wifiSSID2;
    v28[3] = kSecClassInternetPassword;
    v27[3] = kSecClass;
    v27[4] = kSecAttrSynchronizable;
    v28[4] = kSecAttrSynchronizableAny;
    v28[5] = @"com.apple.preferred.network";
    v27[5] = kSecAttrAccessGroup;
    v27[6] = kSecAttrSyncViewHint;
    v28[6] = kSecAttrViewHintHome;
    v13 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7];

    goto LABEL_13;
  }

LABEL_7:
  wifiSSID3 = [signatureCopy wifiSSID];
  v15 = [wifiSSID3 length];

  if (v15)
  {
    v25[0] = kSecAttrSecurityDomain;
    ipv4NwSignature2 = [signatureCopy wifiSSID];
    v26[0] = ipv4NwSignature2;
    v26[1] = kSecClassInternetPassword;
    v25[1] = kSecClass;
    v25[2] = kSecAttrSynchronizable;
    v26[2] = kSecAttrSynchronizableAny;
    v26[3] = @"com.apple.preferred.network";
    v25[3] = kSecAttrAccessGroup;
    v25[4] = kSecAttrSyncViewHint;
    v26[4] = kSecAttrViewHintHome;
    v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
    goto LABEL_14;
  }

  ipv6NwSignature3 = [signatureCopy ipv6NwSignature];
  v17 = [ipv6NwSignature3 length];

  if (v17)
  {
    v23[0] = kSecAttrProtocol;
    ipv4NwSignature2 = [signatureCopy ipv6NwSignature];
    v9 = sub_100018B58(ipv4NwSignature2);
    v24[0] = v9;
    v24[1] = kSecClassInternetPassword;
    v23[1] = kSecClass;
    v23[2] = kSecAttrSynchronizable;
    v24[2] = kSecAttrSynchronizableAny;
    v24[3] = @"com.apple.preferred.network";
    v23[3] = kSecAttrAccessGroup;
    v23[4] = kSecAttrSyncViewHint;
    v24[4] = kSecAttrViewHintHome;
    v18 = v24;
    v19 = v23;
  }

  else
  {
    v21[0] = kSecAttrPort;
    ipv4NwSignature2 = [signatureCopy ipv4NwSignature];
    v9 = sub_100018B58(ipv4NwSignature2);
    v22[0] = v9;
    v22[1] = kSecClassInternetPassword;
    v21[1] = kSecClass;
    v21[2] = kSecAttrSynchronizable;
    v22[2] = kSecAttrSynchronizableAny;
    v22[3] = @"com.apple.preferred.network";
    v21[3] = kSecAttrAccessGroup;
    v21[4] = kSecAttrSyncViewHint;
    v22[4] = kSecAttrViewHintHome;
    v18 = v22;
    v19 = v21;
  }

  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:5];
LABEL_13:

LABEL_14:

  return v13;
}

+ (id)keyChainQueryForDeletePreferredNetworkRecordWithNetworkName:(id)name
{
  v9[0] = kSecAttrAccount;
  nameCopy = name;
  networkName = [nameCopy networkName];
  v10[0] = networkName;
  v9[1] = kSecAttrServer;
  extendedPANID = [nameCopy extendedPANID];

  v6 = sub_100018B58(extendedPANID);
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = @"com.apple.preferred.network";
  v9[4] = kSecAttrAccessGroup;
  v9[5] = kSecAttrSyncViewHint;
  v10[5] = kSecAttrViewHintHome;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

@end