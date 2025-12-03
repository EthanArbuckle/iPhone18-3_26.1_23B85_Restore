@interface THThreadNetworkCredentialsStoreRecord(CredentialsServerKeychainRepr)
- (void)computedUniqueIdentifier;
- (void)keyChainQueryForUpdateOperation;
@end

@implementation THThreadNetworkCredentialsStoreRecord(CredentialsServerKeychainRepr)

- (void)computedUniqueIdentifier
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  keychainAccessGroup = [self keychainAccessGroup];
  v9 = 138412802;
  v10 = networkName;
  v11 = 2112;
  v12 = extendedPANID;
  v13 = 2112;
  v14 = keychainAccessGroup;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to calculate UUID (name=%@; xpanid=%@; keychainAccessGroup=%@)!", &v9, 0x20u);
}

+ (void)recordFromKeychainDictionary:()CredentialsServerKeychainRepr .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)recordFromKeychainDictionary:()CredentialsServerKeychainRepr .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Warning: decoded record with identifier %@ but does not match expected %@!", &v6, 0x16u);
}

+ (void)recordFromKeychainDictionary:()CredentialsServerKeychainRepr .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)keyChainQueryForUpdateOperation
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  v10 = 138412802;
  v11 = networkName;
  v12 = 2112;
  v13 = extendedPANID;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Illegal attempt to form keychain item with insufficient information (name=%@; xpanid=%@; uuid=%@)!", &v10, 0x20u);
}

@end