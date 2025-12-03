@interface THThreadNetworkCredentialsActiveDataSetRecord(Keychain)
- (void)computedUniqueIdentifier;
- (void)computedUniqueIdentifierWithBorderAgent;
- (void)keyChainQueryForActiveDataSetRecordUpdateOperation;
@end

@implementation THThreadNetworkCredentialsActiveDataSetRecord(Keychain)

- (void)computedUniqueIdentifier
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  v9 = 138412546;
  v10 = networkName;
  OUTLINED_FUNCTION_2_5();
  v11 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to calculate UUID (name=%@; xpanid=%@)!", &v9, 0x16u);
}

- (void)computedUniqueIdentifierWithBorderAgent
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  borderAgent = [self borderAgent];
  discriminatorId = [borderAgent discriminatorId];
  keychainAccessGroup = [self keychainAccessGroup];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v9, v10, "Failed to calculate UUID (name=%@; xpanid=%@; discriminatorId=%@; keychainAccessGroup=%@)!", v11, v12, v13, v14, 2u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = 138412546;
  v7 = v5;
  OUTLINED_FUNCTION_2_5();
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Warning: decoded record with identifier %@ but does not match expected %@!", &v6, 0x16u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)keyChainQueryForActiveDataSetRecordUpdateOperation
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  borderAgent = [self borderAgent];
  discriminatorId = [borderAgent discriminatorId];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v8, v9, "Illegal attempt to form keychain item with insufficient information (name=%@; xpanid=%@; discriminatorId=%@; uuid=%@)!", v10, v11, v12, v13, 2u);
}

@end