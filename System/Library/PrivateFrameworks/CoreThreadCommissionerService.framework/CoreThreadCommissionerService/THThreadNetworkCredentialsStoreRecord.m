@interface THThreadNetworkCredentialsStoreRecord
+ (id)computedUniqueIdentifierForNetwork:(id)a3 keychainAccessGroup:(id)a4;
+ (id)keyChainQueryForDeleteAllCredentialsRecord;
+ (id)keyChainQueryForDeleteOperationForUniqueIdentifier:(id)a3;
+ (id)keyChainQueryForFetchAllOperation;
+ (id)keyChainQueryForFetchOneOperationForUniqueIdentifier:(id)a3;
+ (id)keyChainQueryForFetchOperationForNetwork:(id)a3;
+ (id)recordFromKeychainDictionary:(id)a3;
- (id)computedUniqueIdentifier;
- (id)keyChainItemRepresentationForAddOperation;
- (id)keyChainItemRepresentationForUpdateOperation;
- (id)keyChainQueryForUpdateOperation;
@end

@implementation THThreadNetworkCredentialsStoreRecord

+ (id)computedUniqueIdentifierForNetwork:(id)a3 keychainAccessGroup:(id)a4
{
  memset(&v18, 0, sizeof(v18));
  v5 = a4;
  v6 = a3;
  CC_SHA256_Init(&v18);
  CC_SHA256_Update(&v18, &unk_10006AFE8, 0x10u);
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
  v3 = [(THThreadNetworkCredentialsStoreRecord *)self network];
  v4 = [v3 networkName];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [(THThreadNetworkCredentialsStoreRecord *)self network];
  v7 = [v6 extendedPANID];
  if (!v7)
  {

LABEL_6:
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(THThreadNetworkCredentialsStoreRecord *)self keychainAccessGroup];

  if (v9)
  {
    v10 = [(THThreadNetworkCredentialsStoreRecord *)self network];
    v11 = [(THThreadNetworkCredentialsStoreRecord *)self keychainAccessGroup];
    v12 = [THThreadNetworkCredentialsStoreRecord computedUniqueIdentifierForNetwork:v10 keychainAccessGroup:v11];

    goto LABEL_10;
  }

LABEL_7:
  v13 = sub_10001B194(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100043E08(self, v13);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

+ (id)recordFromKeychainDictionary:(id)a3
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [v3 objectForKey:kSecAttrServer];

  if (v8)
  {
    v7 = v8;
    v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    v9 = v7;
LABEL_8:

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:
  v10 = [v3 objectForKey:kSecAttrSecurityDomain];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
    goto LABEL_17;
  }

  v11 = [v3 objectForKey:kSecAttrSecurityDomain];

  if (!v11)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v12 = [[NSUUID alloc] initWithUUIDString:v11];
  v13 = v12;
  if (v6 && v8 && v12)
  {
    v14 = [v3 objectForKey:kSecValueData];
    objc_opt_class();
    v31 = v4;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v3 objectForKey:kSecValueData];
    }

    else
    {
      v15 = 0;
    }

    v35 = 0;
    v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v35];
    v30 = v35;
    if (!v18)
    {
      v19 = sub_10001B194(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100043F10();
      }

      v20 = [THThreadNetworkCredentials alloc];
      LOBYTE(v26) = 0;
      v18 = [v20 initWithMasterKey:0 passPhrase:0 PSKc:0 channel:kTHNetworkChannel_None PANID:0 userInfo:0 credentialDataSet:0 isActiveDevice:v26];
    }

    v32 = [[THThreadNetwork alloc] initWithName:v6 extendedPANID:v8];
    v33 = v18;
    if (!v32)
    {
      v34 = sub_10001B194(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100044044();
      }

      v16 = 0;
      v22 = v30;
      goto LABEL_52;
    }

    v21 = [v3 objectForKey:kSecAttrCreationDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v3 objectForKey:kSecAttrCreationDate];
    }

    else
    {
      v34 = 0;
    }

    v23 = [v3 objectForKey:kSecAttrModificationDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v3 objectForKey:kSecAttrModificationDate];
    }

    else
    {
      v29 = 0;
    }

    v24 = [v3 objectForKey:kSecAttrPath];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v3 objectForKey:kSecAttrPath];

      v22 = v30;
      if (v25)
      {
        v16 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v32 credentials:v33 uniqueIdentifier:v13 keychainAccessGroup:v25 creationDate:v34 lastModificationDate:v29];
        v28 = [v16 computedUniqueIdentifier];
        if (([v28 isEqual:v13] & 1) == 0)
        {
          v27 = sub_10001B194(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100043F94(v16, v28, v27);
          }
        }

LABEL_51:
        v4 = v31;
LABEL_52:

        goto LABEL_21;
      }
    }

    else
    {

      v22 = v30;
    }

    v25 = sub_10001B194(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10001AEF4();
    }

    v16 = 0;
    goto LABEL_51;
  }

LABEL_18:
  v15 = sub_10001B194(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v37 = v6;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v13;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to decode Keychain item (name=%@; xpanid=%@; uuid=%@)!", buf, 0x20u);
  }

  v16 = 0;
LABEL_21:

  objc_autoreleasePoolPop(v4);

  return v16;
}

- (id)keyChainItemRepresentationForAddOperation
{
  v3 = [(THThreadNetworkCredentialsStoreRecord *)self keyChainQueryForUpdateOperation];
  v4 = [(THThreadNetworkCredentialsStoreRecord *)self keyChainItemRepresentationForUpdateOperation];
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
    v12[2] = @"com.apple.thread.network";
    v12[3] = kSecAttrViewHintHome;
    v11[4] = kSecAttrAccessible;
    v11[5] = kSecAttrDescription;
    v12[4] = kSecAttrAccessibleAlways;
    v12[5] = @"Thread network credentials";
    v11[6] = kSecAttrPath;
    v7 = [(THThreadNetworkCredentialsStoreRecord *)self keychainAccessGroup];
    v12[6] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
    [v6 addEntriesFromDictionary:v8];

    v9 = [v6 copy];
  }

  else
  {
    v6 = sub_10001B194(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001B03C();
    }

    v9 = 0;
  }

  return v9;
}

- (id)keyChainQueryForUpdateOperation
{
  v3 = [(THThreadNetworkCredentialsStoreRecord *)self computedUniqueIdentifier];
  v4 = [(THThreadNetworkCredentialsStoreRecord *)self network];
  v5 = [v4 networkName];
  if (v5)
  {
    v6 = v5;
    v7 = [(THThreadNetworkCredentialsStoreRecord *)self network];
    v8 = [v7 extendedPANID];

    if (v8 && v3)
    {
      v17[0] = kSecClass;
      v17[1] = kSecAttrSynchronizable;
      v18[0] = kSecClassInternetPassword;
      v18[1] = kSecAttrSynchronizableAny;
      v18[2] = kSecAttrViewHintHome;
      v17[2] = kSecAttrSyncViewHint;
      v17[3] = kSecAttrAccount;
      v9 = [(THThreadNetworkCredentialsStoreRecord *)self network];
      v10 = [v9 networkName];
      v18[3] = v10;
      v17[4] = kSecAttrServer;
      v11 = [(THThreadNetworkCredentialsStoreRecord *)self network];
      v12 = [v11 extendedPANID];
      v13 = sub_100018B58(v12);
      v18[4] = v13;
      v17[5] = kSecAttrSecurityDomain;
      v14 = [v3 UUIDString];
      v18[5] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:6];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000440C8(self, v3, v9);
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)keyChainItemRepresentationForUpdateOperation
{
  v2 = [(THThreadNetworkCredentialsStoreRecord *)self credentials];
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v7];
  v4 = v7;

  v8 = kSecValueData;
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v5;
}

+ (id)keyChainQueryForFetchOneOperationForUniqueIdentifier:(id)a3
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

+ (id)keyChainQueryForFetchAllOperation
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrSyncViewHint;
  v4[3] = kSecReturnData;
  v4[4] = kSecReturnAttributes;
  v4[5] = kSecMatchLimit;
  v5[2] = kSecAttrViewHintHome;
  v5[3] = &__kCFBooleanTrue;
  v5[4] = &__kCFBooleanTrue;
  v5[5] = kSecMatchLimitAll;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

+ (id)keyChainQueryForFetchOperationForNetwork:(id)a3
{
  v9[0] = kSecAttrAccount;
  v3 = a3;
  v4 = [v3 networkName];
  v10[0] = v4;
  v9[1] = kSecAttrServer;
  v5 = [v3 extendedPANID];

  v6 = sub_100018B58(v5);
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

+ (id)keyChainQueryForDeleteOperationForUniqueIdentifier:(id)a3
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

+ (id)keyChainQueryForDeleteAllCredentialsRecord
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrAccessGroup;
  v4[3] = kSecAttrSyncViewHint;
  v5[2] = @"com.apple.thread.network";
  v5[3] = kSecAttrViewHintHome;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end