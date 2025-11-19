@interface THFrozenThreadNetwork
+ (id)frozenThreadNetworkFromKeychainDictionary:(id)a3;
+ (id)keyChainQueryForDeleteFrozenThreadNetworkRecordOperation:(id)a3;
+ (id)keyChainQueryForDeleteFrozenThreadNetworkRecordsOperation;
+ (id)keyChainQueryForFetchFrozenThreadNetworkRecordsOperation;
+ (id)keyChainQueryForFrozenThreadNetworkRecordOperationForCredentialsDataSet:(id)a3;
- (id)keyChainItemRepresentationForFrozenThreadNetworkAddOperation;
- (id)keyChainQueryForFrozenThreadNetworkUpdateOperation;
@end

@implementation THFrozenThreadNetwork

+ (id)frozenThreadNetworkFromKeychainDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKey:kSecAttrAccount];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v3 objectForKey:kSecAttrAccount];

  if (!v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];

  if (v8)
  {
    v9 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v8 userInfo:0];
    if (v9)
    {
      v10 = [v3 objectForKey:kSecAttrCreationDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v3 objectForKey:kSecAttrCreationDate];
      }

      else
      {
        v11 = 0;
      }

      v15 = [v3 objectForKey:kSecAttrModificationDate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v3 objectForKey:kSecAttrModificationDate];
      }

      else
      {
        v16 = 0;
      }

      v12 = [[THFrozenThreadNetwork alloc] initWithCredentialsDataSet:v9 creationDate:v11 lastModificationDate:v16];
    }

    else
    {
      v14 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[THFrozenThreadNetwork(Keychain) frozenThreadNetworkFromKeychainDictionary:];
      }

      v12 = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  v8 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[THFrozenThreadNetwork(Keychain) frozenThreadNetworkFromKeychainDictionary:];
  }

  v12 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v4);

  return v12;
}

- (id)keyChainItemRepresentationForFrozenThreadNetworkAddOperation
{
  v2 = [(THFrozenThreadNetwork *)self keyChainQueryForFrozenThreadNetworkUpdateOperation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
    v8[0] = kSecAttrIsInvisible;
    v8[1] = kSecAttrSynchronizable;
    v9[0] = &__kCFBooleanTrue;
    v9[1] = &__kCFBooleanTrue;
    v8[2] = kSecAttrAccessGroup;
    v8[3] = kSecAttrSyncViewHint;
    v9[2] = @"com.apple.frozen.network";
    v9[3] = kSecAttrViewHintHome;
    v8[4] = kSecAttrAccessible;
    v8[5] = kSecAttrDescription;
    v9[4] = kSecAttrAccessibleAlways;
    v9[5] = @"Frozen Thread network Record";
    v8[6] = kSecAttrPath;
    v9[6] = @"com.apple.frozen.network";
    v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:7];
    [v4 addEntriesFromDictionary:v5];

    v6 = [v4 copy];
  }

  else
  {
    v4 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(THFrozenThreadNetwork(Keychain) *)v4 keyChainItemRepresentationForFrozenThreadNetworkAddOperation];
    }

    v6 = 0;
  }

  return v6;
}

- (id)keyChainQueryForFrozenThreadNetworkUpdateOperation
{
  v3 = [(THFrozenThreadNetwork *)self credentialsDataSet];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(THFrozenThreadNetwork *)self credentialsDataSet];
  v6 = [v5 dataSetArray];

  if (v6)
  {
    v12[0] = kSecClass;
    v12[1] = kSecAttrSynchronizable;
    v13[0] = kSecClassInternetPassword;
    v13[1] = kSecAttrSynchronizableAny;
    v13[2] = kSecAttrViewHintHome;
    v12[2] = kSecAttrSyncViewHint;
    v12[3] = kSecAttrAccount;
    v7 = [(THFrozenThreadNetwork *)self credentialsDataSet];
    v8 = [v7 dataSetArray];
    v9 = base64StringFromData(v8);
    v13[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
  }

  else
  {
LABEL_4:
    v7 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [THFrozenThreadNetwork(Keychain) keyChainQueryForFrozenThreadNetworkUpdateOperation];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)keyChainQueryForDeleteFrozenThreadNetworkRecordOperation:(id)a3
{
  v8[0] = kSecAttrAccount;
  v3 = [a3 credentialsDataSet];
  v4 = [v3 dataSetArray];
  v5 = base64StringFromData(v4);
  v9[0] = v5;
  v9[1] = kSecClassInternetPassword;
  v8[1] = kSecClass;
  v8[2] = kSecAttrSynchronizable;
  v9[2] = kSecAttrSynchronizableAny;
  v9[3] = @"com.apple.frozen.network";
  v8[3] = kSecAttrAccessGroup;
  v8[4] = kSecAttrSyncViewHint;
  v9[4] = kSecAttrViewHintHome;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

+ (id)keyChainQueryForDeleteFrozenThreadNetworkRecordsOperation
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrAccessGroup;
  v4[3] = kSecAttrSyncViewHint;
  v5[2] = @"com.apple.frozen.network";
  v5[3] = kSecAttrViewHintHome;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)keyChainQueryForFetchFrozenThreadNetworkRecordsOperation
{
  v4[0] = kSecClass;
  v4[1] = kSecAttrSynchronizable;
  v5[0] = kSecClassInternetPassword;
  v5[1] = kSecAttrSynchronizableAny;
  v4[2] = kSecAttrAccessGroup;
  v4[3] = kSecAttrSyncViewHint;
  v5[2] = @"com.apple.frozen.network";
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

+ (id)keyChainQueryForFrozenThreadNetworkRecordOperationForCredentialsDataSet:(id)a3
{
  v8[0] = kSecAttrAccount;
  v3 = [a3 credentialsDataSet];
  v4 = [v3 dataSetArray];
  v5 = base64StringFromData(v4);
  v9[0] = v5;
  v9[1] = kSecClassInternetPassword;
  v8[1] = kSecClass;
  v8[2] = kSecAttrSynchronizable;
  v9[2] = kSecAttrSynchronizableAny;
  v9[3] = kSecAttrSynchronizableAny;
  v8[3] = kSecAttrSynchronizable;
  v8[4] = kSecAttrAccessGroup;
  v9[4] = @"com.apple.frozen.network";
  v9[5] = kSecAttrViewHintHome;
  v8[5] = kSecAttrSyncViewHint;
  v8[6] = kSecReturnData;
  v9[6] = &__kCFBooleanTrue;
  v9[7] = &__kCFBooleanTrue;
  v8[7] = kSecReturnAttributes;
  v8[8] = kSecMatchLimit;
  v9[8] = kSecMatchLimitAll;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:9];

  return v6;
}

@end