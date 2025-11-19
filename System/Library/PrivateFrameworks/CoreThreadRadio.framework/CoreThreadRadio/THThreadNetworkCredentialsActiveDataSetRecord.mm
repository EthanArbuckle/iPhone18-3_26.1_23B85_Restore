@interface THThreadNetworkCredentialsActiveDataSetRecord
+ (id)activeDataSetRecordFromKeychainDictionary:(id)a3;
+ (id)computedUniqueIdentifierForBorderAgent:(id)a3 network:(id)a4 keychainAccessGroup:(id)a5;
+ (id)computedUniqueIdentifierForNetwork:(id)a3 keychainAccessGroup:(id)a4;
+ (id)keyChainQueryFetchForOneActiveDataSetOperationForThreadNetwork:(id)a3;
+ (id)keyChainQueryForDeleteActiveDataSetOperationForNetworkAndBorderAgent:(id)a3 borderAgent:(id)a4;
+ (id)keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:(id)a3;
+ (id)keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgentWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4;
+ (id)keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifier:(id)a3;
+ (id)keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4;
+ (id)keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetwork:(id)a3;
+ (id)keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetworkWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4;
+ (id)keyChainQueryForDeleteAllActiveDataSetOperationWithKeychainAccessGroup:(id)a3;
+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:(id)a3;
+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgentWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4;
+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForNetworkAndBorderAgent:(id)a3 borderAgent:(id)a4;
+ (id)keyChainQueryForFetchActiveDataSetRecordsOperationForClientKeychainAccessGroup:(id)a3;
+ (id)keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:(id)a3;
+ (id)keyChainQueryForFetchAllActiveDataSetRecordsOperation;
+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifier:(id)a3;
+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4;
+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForXPANId:(id)a3;
- (id)computedUniqueIdentifier;
- (id)computedUniqueIdentifierWithBorderAgent;
- (id)keyChainItemRepresentationForActiveDataSetRecordAddOperation;
- (id)keyChainItemRepresentationForActiveDataSetRecordUpdateOperation;
- (id)keyChainQueryForActiveDataSetRecordUpdateOperation;
@end

@implementation THThreadNetworkCredentialsActiveDataSetRecord

+ (id)computedUniqueIdentifierForNetwork:(id)a3 keychainAccessGroup:(id)a4
{
  memset(&v18, 0, sizeof(v18));
  v5 = a4;
  v6 = a3;
  CC_SHA256_Init(&v18);
  CC_SHA256_Update(&v18, &THThreadNetworkBorderAgentUUIDNamespace, 0x10u);
  v7 = v5;
  v8 = [v7 UTF8String];
  v9 = [v5 lengthOfBytesUsingEncoding:4];

  CC_SHA256_Update(&v18, v8, v9);
  v10 = [v6 networkName];
  v11 = [v10 UTF8String];
  v12 = [v6 networkName];
  CC_SHA256_Update(&v18, v11, [v12 lengthOfBytesUsingEncoding:4]);

  v13 = [v6 extendedPANID];
  v14 = [v13 bytes];
  v15 = [v6 extendedPANID];

  CC_SHA256_Update(&v18, v14, [v15 length]);
  CC_SHA256_Final(md, &v18);
  v20 = *md;
  BYTE6(v20) = md[6] & 0xF | 0x50;
  BYTE8(v20) = md[8] & 0x3F | 0x80;
  v16 = [[NSUUID alloc] initWithUUIDBytes:&v20];

  return v16;
}

- (id)computedUniqueIdentifier
{
  v3 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  v4 = [v3 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
    v7 = [v6 extendedPANID];

    if (v7)
    {
      v8 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
      v9 = [THThreadNetworkCredentialsActiveDataSetRecord computedUniqueIdentifierForNetwork:v8 keychainAccessGroup:@"com.apple.thread.dataset"];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(THThreadNetworkCredentialsActiveDataSetRecord(Keychain) *)self computedUniqueIdentifier];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)computedUniqueIdentifierForBorderAgent:(id)a3 network:(id)a4 keychainAccessGroup:(id)a5
{
  memset(&v24, 0, sizeof(v24));
  v7 = a5;
  v8 = a4;
  v9 = a3;
  CC_SHA256_Init(&v24);
  CC_SHA256_Update(&v24, &THThreadNetworkBorderAgentUUIDNamespace, 0x10u);
  v10 = v7;
  v11 = [v10 UTF8String];
  v12 = [v7 lengthOfBytesUsingEncoding:4];

  CC_SHA256_Update(&v24, v11, v12);
  v13 = [v8 networkName];
  v14 = [v13 UTF8String];
  v15 = [v8 networkName];
  CC_SHA256_Update(&v24, v14, [v15 lengthOfBytesUsingEncoding:4]);

  v16 = [v8 extendedPANID];
  v17 = [v16 bytes];
  v18 = [v8 extendedPANID];

  CC_SHA256_Update(&v24, v17, [v18 length]);
  v19 = [v9 discriminatorId];
  v20 = [v19 bytes];
  v21 = [v9 discriminatorId];

  CC_SHA256_Update(&v24, v20, [v21 length]);
  CC_SHA256_Final(md, &v24);
  v26 = *md;
  BYTE6(v26) = md[6] & 0xF | 0x50;
  BYTE8(v26) = md[8] & 0x3F | 0x80;
  v22 = [[NSUUID alloc] initWithUUIDBytes:&v26];

  return v22;
}

- (id)computedUniqueIdentifierWithBorderAgent
{
  v3 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  v4 = [v3 networkName];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  v7 = [v6 extendedPANID];
  if (!v7)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
  v10 = [v9 discriminatorId];
  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keychainAccessGroup];

  if (v12)
  {
    v13 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
    v14 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
    v15 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keychainAccessGroup];
    v16 = [THThreadNetworkCredentialsActiveDataSetRecord computedUniqueIdentifierForBorderAgent:v13 network:v14 keychainAccessGroup:v15];

    goto LABEL_12;
  }

LABEL_9:
  v17 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(THThreadNetworkCredentialsActiveDataSetRecord(Keychain) *)self computedUniqueIdentifierWithBorderAgent];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

+ (id)activeDataSetRecordFromKeychainDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKey:kSecAttrAccount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 objectForKey:kSecAttrAccount];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKey:kSecAttrServer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v3 objectForKey:kSecAttrServer];
  }

  else
  {
    v8 = 0;
  }

  v9 = dataFromBase64String(v8);
  v10 = [v3 objectForKey:kSecAttrProtocol];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v3 objectForKey:kSecAttrProtocol];
  }

  else
  {
    v11 = 0;
  }

  v46 = dataFromBase64String(v11);
  v12 = [v3 objectForKey:kSecAttrSecurityDomain];
  objc_opt_class();
  v47 = v6;
  v48 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
    goto LABEL_18;
  }

  v13 = [v3 objectForKey:kSecAttrSecurityDomain];

  if (!v13)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v14 = [[NSUUID alloc] initWithUUIDString:v13];
  v15 = v14;
  if (v6 && v9 && v14)
  {
    v16 = [v3 objectForKey:kSecValueData];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v3 objectForKey:kSecValueData];
    }

    else
    {
      v17 = 0;
    }

    v49 = 0;
    v20 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v49];
    v44 = v49;
    if (!v20)
    {
      v21 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
      }

      v22 = [THThreadNetworkCredentials alloc];
      LOBYTE(v36) = 0;
      v20 = [v22 initWithMasterKey:0 passPhrase:0 PSKc:0 channel:kTHNetworkChannel_None PANID:0 userInfo:0 credentialDataSet:0 isActiveDevice:v36];
    }

    [v20 credentialsDataSet];
    v24 = v23 = v20;

    v45 = v23;
    if (v24)
    {
      v25 = [v23 credentialsDataSet];

      if (!v25)
      {
        v26 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
        }

        goto LABEL_44;
      }

      if (!v46)
      {
        v26 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
        }

LABEL_44:
        v18 = 0;
        v30 = v44;
LABEL_69:

        goto LABEL_22;
      }
    }

    else
    {
      v27 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
      }

      v28 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:0 userInfo:0];
      [v23 setCredentialsDataSet:v28];
    }

    v26 = [[THThreadNetwork alloc] initWithName:v47 extendedPANID:v48];
    if (!v26)
    {
      v43 = THCredentialsServerLogHandleForCategory(1);
      v30 = v44;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
      }

      v18 = 0;
      goto LABEL_68;
    }

    v43 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v46];
    if (!v43)
    {
      v42 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
      }

      v18 = 0;
      v30 = v44;
      goto LABEL_67;
    }

    v29 = [v3 objectForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [v3 objectForKey:kSecAttrCreationDate];
    }

    else
    {
      v42 = 0;
    }

    v31 = [v3 objectForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v3 objectForKey:kSecAttrModificationDate];
    }

    else
    {
      v39 = 0;
    }

    v40 = v26;

    v32 = [v3 objectForKey:kSecAttrPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v3 objectForKey:kSecAttrPath];

      v30 = v44;
      v41 = v33;
      if (v33)
      {
        v34 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
        v37 = [v45 credentialsDataSet];
        v18 = [v34 initWithBorderAgent:v43 credentialsDataSet:v37 network:v40 credentials:v45 uniqueIdentifier:v15 keychainAccessGroup:v33 creationDate:v42 lastModificationDate:v39];

        v35 = [v18 computedUniqueIdentifier];
        if (([v35 isEqual:v15] & 1) == 0)
        {
          v38 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [(THThreadNetworkCredentialsActiveDataSetRecord(Keychain) *)v18 activeDataSetRecordFromKeychainDictionary:v35, v38];
          }
        }

LABEL_66:
        v26 = v40;

LABEL_67:
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {

      v30 = v44;
    }

    v41 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      +[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:];
    }

    v18 = 0;
    goto LABEL_66;
  }

LABEL_19:
  v17 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v51 = "+[THThreadNetworkCredentialsActiveDataSetRecord(Keychain) activeDataSetRecordFromKeychainDictionary:]";
    v52 = 1024;
    v53 = 158;
    v54 = 2112;
    v55 = v6;
    v56 = 2112;
    v57 = v48;
    v58 = 2112;
    v59 = v15;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s:%d: This is not a Credentials DataSet record, (name=%@; xpanid=%@; uuid=%@)!", buf, 0x30u);
  }

  v18 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v4);

  return v18;
}

- (id)keyChainItemRepresentationForActiveDataSetRecordAddOperation
{
  v3 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keyChainQueryForActiveDataSetRecordUpdateOperation];
  v4 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 mutableCopy];
    [v6 addEntriesFromDictionary:v5];
    v11[0] = kSecAttrIsInvisible;
    v11[1] = kSecAttrSynchronizable;
    v12[0] = &__kCFBooleanTrue;
    v12[1] = &__kCFBooleanTrue;
    v11[2] = kSecAttrAccessGroup;
    v11[3] = kSecAttrSyncViewHint;
    v12[2] = @"com.apple.thread.dataset";
    v12[3] = kSecAttrViewHintHome;
    v11[4] = kSecAttrAccessible;
    v11[5] = kSecAttrDescription;
    v12[4] = kSecAttrAccessibleAlways;
    v12[5] = @"Thread network credentials Active Data Set Record";
    v11[6] = kSecAttrPath;
    v7 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keychainAccessGroup];
    v12[6] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
    [v6 addEntriesFromDictionary:v8];

    v9 = [v6 copy];
  }

  else
  {
    v6 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsActiveDataSetRecord(Keychain) keyChainItemRepresentationForActiveDataSetRecordAddOperation];
    }

    v9 = 0;
  }

  return v9;
}

- (id)keyChainQueryForActiveDataSetRecordUpdateOperation
{
  v3 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self computedUniqueIdentifier];
  v4 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  v5 = [v4 networkName];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  v8 = [v7 extendedPANID];
  if (!v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
  v11 = [v10 discriminatorId];

  if (v11 && v3)
  {
    v23[0] = kSecClass;
    v23[1] = kSecAttrSynchronizable;
    v24[0] = kSecClassInternetPassword;
    v24[1] = kSecAttrSynchronizableAny;
    v24[2] = kSecAttrViewHintHome;
    v23[2] = kSecAttrSyncViewHint;
    v23[3] = kSecAttrAccount;
    v12 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
    v22 = [v12 networkName];
    v24[3] = v22;
    v23[4] = kSecAttrServer;
    v13 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
    v14 = [v13 extendedPANID];
    v15 = base64StringFromData_0(v14);
    v24[4] = v15;
    v23[5] = kSecAttrProtocol;
    v16 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
    v17 = [v16 discriminatorId];
    v18 = base64StringFromData_0(v17);
    v24[5] = v18;
    v23[6] = kSecAttrSecurityDomain;
    v19 = [v3 UUIDString];
    v24[6] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];

    goto LABEL_11;
  }

LABEL_8:
  v12 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(THThreadNetworkCredentialsActiveDataSetRecord(Keychain) *)self keyChainQueryForActiveDataSetRecordUpdateOperation];
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (id)keyChainItemRepresentationForActiveDataSetRecordUpdateOperation
{
  v2 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self credentials];
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v7];
  v4 = v7;

  v8 = kSecValueData;
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v5;
}

+ (id)keyChainQueryForFetchAllActiveDataSetRecordsOperation
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrSyncViewHint;
  v4[3] = kSecReturnData;
  v5[2] = kSecAttrViewHintHome;
  v5[3] = &__kCFBooleanTrue;
  v4[4] = kSecReturnAttributes;
  v4[5] = kSecMatchLimit;
  v5[4] = &__kCFBooleanTrue;
  v5[5] = kSecMatchLimitAll;
  v4[6] = kSecAttrAccessGroup;
  v5[6] = @"com.apple.thread.dataset";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifier:(id)a3
{
  v6[0] = kSecAttrSecurityDomain;
  v3 = [a3 UUIDString];
  v7[0] = v3;
  v7[1] = kSecClassInternetPassword;
  v6[1] = kSecClass;
  v6[2] = kSecAttrSynchronizable;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = kSecAttrViewHintHome;
  v6[3] = kSecAttrSyncViewHint;
  v6[4] = kSecReturnData;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[5] = kSecReturnAttributes;
  v6[6] = kSecMatchLimit;
  v7[6] = kSecMatchLimitAll;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:7];

  return v4;
}

+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForXPANId:(id)a3
{
  v6[0] = kSecAttrServer;
  v3 = base64StringFromData_0(a3);
  v7[0] = v3;
  v7[1] = kSecClassInternetPassword;
  v6[1] = kSecClass;
  v6[2] = kSecAttrSynchronizable;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = kSecAttrViewHintHome;
  v6[3] = kSecAttrSyncViewHint;
  v6[4] = kSecReturnData;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[5] = kSecReturnAttributes;
  v6[6] = kSecMatchLimit;
  v6[7] = kSecAttrAccessGroup;
  v7[6] = kSecMatchLimitAll;
  v7[7] = @"com.apple.thread.dataset";
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:(id)a3
{
  v7[0] = kSecAttrProtocol;
  v3 = [a3 discriminatorId];
  v4 = base64StringFromData_0(v3);
  v8[0] = v4;
  v8[1] = kSecClassInternetPassword;
  v7[1] = kSecClass;
  v7[2] = kSecAttrSynchronizable;
  v8[2] = kSecAttrSynchronizableAny;
  v8[3] = kSecAttrViewHintHome;
  v7[3] = kSecAttrSyncViewHint;
  v7[4] = kSecReturnData;
  v8[4] = &__kCFBooleanTrue;
  v8[5] = &__kCFBooleanTrue;
  v7[5] = kSecReturnAttributes;
  v7[6] = kSecMatchLimit;
  v7[7] = kSecAttrAccessGroup;
  v8[6] = kSecMatchLimitAll;
  v8[7] = @"com.apple.thread.dataset";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:8];

  return v5;
}

+ (id)keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:(id)a3
{
  v9[0] = kSecAttrAccount;
  v3 = a3;
  v4 = [v3 networkName];
  v10[0] = v4;
  v9[1] = kSecAttrServer;
  v5 = [v3 extendedPANID];

  v6 = base64StringFromData_0(v5);
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = kSecAttrViewHintHome;
  v9[4] = kSecAttrSyncViewHint;
  v9[5] = kSecReturnData;
  v10[5] = &__kCFBooleanTrue;
  v10[6] = &__kCFBooleanTrue;
  v9[6] = kSecReturnAttributes;
  v9[7] = kSecMatchLimit;
  v9[8] = kSecAttrAccessGroup;
  v10[7] = kSecMatchLimitAll;
  v10[8] = @"com.apple.thread.dataset";
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:9];

  return v7;
}

+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForNetworkAndBorderAgent:(id)a3 borderAgent:(id)a4
{
  v13[0] = kSecAttrProtocol;
  v5 = a3;
  v6 = [a4 discriminatorId];
  v7 = base64StringFromData_0(v6);
  v14[0] = v7;
  v13[1] = kSecAttrAccount;
  v8 = [v5 networkName];
  v14[1] = v8;
  v13[2] = kSecAttrServer;
  v9 = [v5 extendedPANID];

  v10 = base64StringFromData_0(v9);
  v14[2] = v10;
  v14[3] = kSecClassInternetPassword;
  v13[3] = kSecClass;
  v13[4] = kSecAttrSynchronizable;
  v14[4] = kSecAttrSynchronizableAny;
  v14[5] = kSecAttrViewHintHome;
  v13[5] = kSecAttrSyncViewHint;
  v13[6] = kSecReturnData;
  v14[6] = &__kCFBooleanTrue;
  v14[7] = &__kCFBooleanTrue;
  v13[7] = kSecReturnAttributes;
  v13[8] = kSecMatchLimit;
  v13[9] = kSecAttrAccessGroup;
  v14[8] = kSecMatchLimitAll;
  v14[9] = @"com.apple.thread.dataset";
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:10];

  return v11;
}

+ (id)keyChainQueryForFetchActiveDataSetRecordsOperationForClientKeychainAccessGroup:(id)a3
{
  v6[0] = kSecAttrPath;
  v6[1] = kSecClass;
  v7[0] = a3;
  v7[1] = kSecClassInternetPassword;
  v6[2] = kSecAttrSynchronizable;
  v6[3] = kSecAttrSyncViewHint;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = kSecAttrViewHintHome;
  v6[4] = kSecReturnData;
  v6[5] = kSecReturnAttributes;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[6] = kSecMatchLimit;
  v6[7] = kSecAttrAccessGroup;
  v7[6] = kSecMatchLimitAll;
  v7[7] = @"com.apple.thread.dataset";
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

+ (id)keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifier:(id)a3
{
  v6[0] = kSecAttrSecurityDomain;
  v3 = [a3 UUIDString];
  v7[0] = v3;
  v7[1] = kSecClassInternetPassword;
  v6[1] = kSecClass;
  v6[2] = kSecAttrSynchronizable;
  v6[3] = kSecAttrSyncViewHint;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = kSecAttrViewHintHome;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

+ (id)keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:(id)a3
{
  v7[0] = kSecAttrProtocol;
  v3 = [a3 discriminatorId];
  v4 = base64StringFromData_0(v3);
  v8[0] = v4;
  v8[1] = kSecClassInternetPassword;
  v7[1] = kSecClass;
  v7[2] = kSecAttrSynchronizable;
  v7[3] = kSecAttrSyncViewHint;
  v8[2] = kSecAttrSynchronizableAny;
  v8[3] = kSecAttrViewHintHome;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

+ (id)keyChainQueryForDeleteActiveDataSetOperationForNetworkAndBorderAgent:(id)a3 borderAgent:(id)a4
{
  v13[0] = kSecAttrProtocol;
  v5 = a3;
  v6 = [a4 discriminatorId];
  v7 = base64StringFromData_0(v6);
  v14[0] = v7;
  v13[1] = kSecAttrAccount;
  v8 = [v5 networkName];
  v14[1] = v8;
  v13[2] = kSecAttrServer;
  v9 = [v5 extendedPANID];

  v10 = base64StringFromData_0(v9);
  v14[2] = v10;
  v14[3] = kSecClassInternetPassword;
  v13[3] = kSecClass;
  v13[4] = kSecAttrSynchronizable;
  v13[5] = kSecAttrSyncViewHint;
  v14[4] = kSecAttrSynchronizableAny;
  v14[5] = kSecAttrViewHintHome;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

+ (id)keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4
{
  v10[0] = a4;
  v9[0] = kSecAttrPath;
  v9[1] = kSecAttrSecurityDomain;
  v5 = a4;
  v6 = [a3 UUIDString];
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = kSecAttrViewHintHome;
  v9[4] = kSecAttrSyncViewHint;
  v9[5] = kSecReturnData;
  v10[5] = &__kCFBooleanTrue;
  v10[6] = &__kCFBooleanTrue;
  v9[6] = kSecReturnAttributes;
  v9[7] = kSecMatchLimit;
  v10[7] = kSecMatchLimitAll;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:8];

  return v7;
}

+ (id)keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgentWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4
{
  v11[0] = a4;
  v10[0] = kSecAttrPath;
  v10[1] = kSecAttrProtocol;
  v5 = a4;
  v6 = [a3 discriminatorId];
  v7 = base64StringFromData_0(v6);
  v11[1] = v7;
  v11[2] = kSecClassInternetPassword;
  v10[2] = kSecClass;
  v10[3] = kSecAttrSynchronizable;
  v11[3] = kSecAttrSynchronizableAny;
  v11[4] = kSecAttrViewHintHome;
  v10[4] = kSecAttrSyncViewHint;
  v10[5] = kSecReturnData;
  v11[5] = &__kCFBooleanTrue;
  v11[6] = &__kCFBooleanTrue;
  v10[6] = kSecReturnAttributes;
  v10[7] = kSecMatchLimit;
  v11[7] = kSecMatchLimitAll;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:8];

  return v8;
}

+ (id)keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4
{
  v10[0] = a4;
  v9[0] = kSecAttrPath;
  v9[1] = kSecAttrSecurityDomain;
  v5 = a4;
  v6 = [a3 UUIDString];
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v9[4] = kSecAttrSyncViewHint;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = kSecAttrViewHintHome;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgentWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4
{
  v11[0] = a4;
  v10[0] = kSecAttrPath;
  v10[1] = kSecAttrProtocol;
  v5 = a4;
  v6 = [a3 discriminatorId];
  v7 = base64StringFromData_0(v6);
  v11[1] = v7;
  v11[2] = kSecClassInternetPassword;
  v10[2] = kSecClass;
  v10[3] = kSecAttrSynchronizable;
  v10[4] = kSecAttrSyncViewHint;
  v11[3] = kSecAttrSynchronizableAny;
  v11[4] = kSecAttrViewHintHome;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)keyChainQueryFetchForOneActiveDataSetOperationForThreadNetwork:(id)a3
{
  v9[0] = kSecAttrAccount;
  v3 = a3;
  v4 = [v3 networkName];
  v10[0] = v4;
  v9[1] = kSecAttrServer;
  v5 = [v3 extendedPANID];

  v6 = base64StringFromData_0(v5);
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = kSecAttrViewHintHome;
  v9[4] = kSecAttrSyncViewHint;
  v9[5] = kSecReturnData;
  v10[5] = &__kCFBooleanTrue;
  v10[6] = &__kCFBooleanTrue;
  v9[6] = kSecReturnAttributes;
  v9[7] = kSecMatchLimit;
  v9[8] = kSecAttrAccessGroup;
  v10[7] = kSecMatchLimitOne;
  v10[8] = @"com.apple.thread.dataset";
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:9];

  return v7;
}

+ (id)keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetworkWithKeychainAccessGroup:(id)a3 clientKeychainAccessGroup:(id)a4
{
  v12[0] = kSecAttrAccount;
  v5 = a4;
  v6 = a3;
  v7 = [v6 networkName];
  v13[0] = v7;
  v12[1] = kSecAttrServer;
  v8 = [v6 extendedPANID];

  v9 = base64StringFromData_0(v8);
  v13[1] = v9;
  v13[2] = v5;
  v12[2] = kSecAttrPath;
  v12[3] = kSecClass;
  v13[3] = kSecClassInternetPassword;
  v13[4] = kSecAttrSynchronizableAny;
  v12[4] = kSecAttrSynchronizable;
  v12[5] = kSecAttrSyncViewHint;
  v12[6] = kSecAttrAccessGroup;
  v13[5] = kSecAttrViewHintHome;
  v13[6] = @"com.apple.thread.dataset";
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

+ (id)keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetwork:(id)a3
{
  v9[0] = kSecAttrAccount;
  v3 = a3;
  v4 = [v3 networkName];
  v10[0] = v4;
  v9[1] = kSecAttrServer;
  v5 = [v3 extendedPANID];

  v6 = base64StringFromData_0(v5);
  v10[1] = v6;
  v10[2] = kSecClassInternetPassword;
  v9[2] = kSecClass;
  v9[3] = kSecAttrSynchronizable;
  v10[3] = kSecAttrSynchronizableAny;
  v10[4] = kSecAttrViewHintHome;
  v9[4] = kSecAttrSyncViewHint;
  v9[5] = kSecAttrAccessGroup;
  v10[5] = @"com.apple.thread.dataset";
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

+ (id)keyChainQueryForDeleteAllActiveDataSetOperationWithKeychainAccessGroup:(id)a3
{
  v6[0] = kSecAttrPath;
  v6[1] = kSecClass;
  v7[0] = a3;
  v7[1] = kSecClassInternetPassword;
  v6[2] = kSecAttrSynchronizable;
  v6[3] = kSecAttrSyncViewHint;
  v7[2] = kSecAttrSynchronizableAny;
  v7[3] = kSecAttrViewHintHome;
  v6[4] = kSecAttrAccessGroup;
  v7[4] = @"com.apple.thread.dataset";
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

@end