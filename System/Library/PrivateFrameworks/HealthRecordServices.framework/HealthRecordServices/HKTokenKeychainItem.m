@interface HKTokenKeychainItem
+ (BOOL)_deleteTokenIdentifiedByName:(id)a3 error:(id *)a4;
+ (BOOL)_isTokenPresentIdentifiedByName:(id)a3 error:(id *)a4;
+ (BOOL)_makeTokenSynchronizableIfNeededIdentifiedByName:(id)a3 error:(id *)a4;
+ (id)_fetchTokenIdentifiedByName:(id)a3 error:(id *)a4;
+ (id)_identifyingAttributesForKeyIdentifiedByName:(id)a3;
+ (id)_keyQueryAttributesForKeyIdentifiedByName:(id)a3;
+ (id)_storableAttributesForKeyIdentifiedByName:(id)a3 data:(id)a4 modificationDate:(id)a5 synchronizable:(BOOL)a6;
- (BOOL)deleteWithError:(id *)a3;
- (BOOL)isPresentWithError:(id *)a3;
- (BOOL)makeTokenSynchronizableIfNeededWithError:(id *)a3;
- (BOOL)storeLocalToken:(id)a3 error:(id *)a4;
- (BOOL)storeSynchronizableToken:(id)a3 error:(id *)a4;
- (HKTokenKeychainItem)init;
- (HKTokenKeychainItem)initWithName:(id)a3;
- (id)fetchWithError:(id *)a3;
@end

@implementation HKTokenKeychainItem

- (HKTokenKeychainItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKTokenKeychainItem)initWithName:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [HKTokenKeychainItem initWithName:];
  }

  v9.receiver = self;
  v9.super_class = HKTokenKeychainItem;
  v5 = [(HKTokenKeychainItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (BOOL)isPresentWithError:(id *)a3
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _isTokenPresentIdentifiedByName:name error:a3];
}

- (BOOL)makeTokenSynchronizableIfNeededWithError:(id *)a3
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _makeTokenSynchronizableIfNeededIdentifiedByName:name error:a3];
}

- (id)fetchWithError:(id *)a3
{
  v3 = [objc_opt_class() _fetchTokenIdentifiedByName:self->_name error:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)storeLocalToken:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  LOBYTE(a4) = [objc_opt_class() _storeTokenIdentifiedByName:self->_name data:v6 synchronizable:0 error:a4];

  return a4;
}

- (BOOL)storeSynchronizableToken:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  LOBYTE(a4) = [objc_opt_class() _storeTokenIdentifiedByName:self->_name data:v6 synchronizable:1 error:a4];

  return a4;
}

- (BOOL)deleteWithError:(id *)a3
{
  v5 = objc_opt_class();
  name = self->_name;

  return [v5 _deleteTokenIdentifiedByName:name error:a3];
}

+ (id)_identifyingAttributesForKeyIdentifiedByName:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    +[HKTokenKeychainItem _identifyingAttributesForKeyIdentifiedByName:];
  }

  v13[0] = *MEMORY[0x277CDC228];
  v5 = [a1 tokenKeychainItemSecurityClass];
  v14[0] = v5;
  v13[1] = *MEMORY[0x277CDBF20];
  v6 = [v4 dataUsingEncoding:4];
  v7 = *MEMORY[0x277CDBED8];
  v8 = *MEMORY[0x277CDBF10];
  v14[1] = v6;
  v14[2] = v8;
  v9 = *MEMORY[0x277CDC140];
  v13[2] = v7;
  v13[3] = v9;
  v14[3] = *MEMORY[0x277CDC148];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_keyQueryAttributesForKeyIdentifiedByName:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 _identifyingAttributesForKeyIdentifiedByName:a3];
  v4 = [v3 mutableCopy];

  v8 = *MEMORY[0x277CDC558];
  v9[0] = *MEMORY[0x277CBED28];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 addEntriesFromDictionary:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_storableAttributesForKeyIdentifiedByName:(id)a3 data:(id)a4 modificationDate:(id)a5 synchronizable:(BOOL)a6
{
  v6 = a6;
  v28[5] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HKTokenKeychainItem _storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  +[HKTokenKeychainItem _storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:];
LABEL_3:
  v14 = [a1 _identifyingAttributesForKeyIdentifiedByName:v10];
  v15 = [v14 mutableCopy];

  v16 = *MEMORY[0x277CDBFC0];
  v17 = *MEMORY[0x277CBED28];
  v28[0] = *MEMORY[0x277CBED28];
  v18 = *MEMORY[0x277CDC088];
  v27[0] = v16;
  v27[1] = v18;
  v19 = v13;
  if (!v13)
  {
    v19 = [MEMORY[0x277CBEAA8] date];
  }

  v20 = *MEMORY[0x277CDC0A8];
  v21 = *MEMORY[0x277CDC0C0];
  v28[1] = v19;
  v28[2] = v21;
  v22 = *MEMORY[0x277CDC140];
  v27[2] = v20;
  v27[3] = v22;
  v23 = *MEMORY[0x277CBED10];
  if (v6)
  {
    v23 = v17;
  }

  v27[4] = *MEMORY[0x277CDC5E8];
  v28[3] = v23;
  v28[4] = v11;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [v15 addEntriesFromDictionary:v24];

  if (!v13)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)_isTokenPresentIdentifiedByName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _identifyingAttributesForKeyIdentifiedByName:v6];
  v8 = SecItemCopyMatching(v7, 0);
  if (v8 == -25308 || v8 == 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8;
    if (v8 != -25300)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = HKSensitiveLogItem();
      [v12 hk_assignError:a4 code:3 format:{@"Failed to check for presence of token with name %@, OSStatus: %d", v13, v11}];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_makeTokenSynchronizableIfNeededIdentifiedByName:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _identifyingAttributesForKeyIdentifiedByName:v6];
  v8 = [v7 mutableCopy];
  v26 = *MEMORY[0x277CDC550];
  v9 = *MEMORY[0x277CBED28];
  v27[0] = *MEMORY[0x277CBED28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v8 setValuesForKeysWithDictionary:v10];

  result = 0;
  v11 = SecItemCopyMatching(v8, &result);
  if (!v11)
  {
    v12 = *MEMORY[0x277CDC140];
    v13 = [result objectForKeyedSubscript:*MEMORY[0x277CDC140]];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      goto LABEL_8;
    }

    v24 = v12;
    v25 = v9;
    v11 = SecItemUpdate(v7, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1]);
  }

  if (v11 == -25308)
  {
    v18 = MEMORY[0x277CCA9B8];
    v16 = HKSensitiveLogItem();
    [v18 hk_assignError:a4 code:6 format:{@"Token is not accessible (device locked?), name: %@", v16, v22}];
LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    if (v11 == -25300)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = HKSensitiveLogItem();
      [v15 hk_assignError:a4 code:118 format:{@"No token found for name %@", v16, v22}];
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v16 = HKSensitiveLogItem();
      [v19 hk_assignError:a4 code:3 format:{@"Failed to fetch token for name %@, OSStatus: %d", v16, v11}];
    }

    goto LABEL_11;
  }

LABEL_8:
  v17 = 1;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)_fetchTokenIdentifiedByName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _keyQueryAttributesForKeyIdentifiedByName:v6];
  result = 0;
  v8 = SecItemCopyMatching(v7, &result);
  if (v8 == -25308)
  {
    v13 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v13 hk_assignError:a4 code:6 format:{@"Token is not accessible (device locked?), name: %@", v12}];
    goto LABEL_7;
  }

  v9 = v8;
  if (v8 == -25300)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v11 hk_assignError:a4 code:118 format:{@"No token found for name %@", v12}];
LABEL_7:

    goto LABEL_9;
  }

  if (!v8)
  {
    v10 = result;
    goto LABEL_10;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = HKSensitiveLogItem();
  [v14 hk_assignError:a4 code:3 format:{@"Failed to fetch token for name %@, OSStatus: %d", v15, v9}];

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

+ (BOOL)_deleteTokenIdentifiedByName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _keyQueryAttributesForKeyIdentifiedByName:v6];
  v8 = SecItemDelete(v7);
  if (v8 == -25300 || v8 == 0)
  {
    v13 = 1;
  }

  else
  {
    v10 = v8;
    v11 = MEMORY[0x277CCA9B8];
    v12 = HKSensitiveLogItem();
    [v11 hk_assignError:a4 code:3 format:{@"Failed to delete token for name %@, OSStatus: %d", v12, v10}];

    v13 = 0;
  }

  return v13;
}

- (void)initWithName:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"name.length > 0" object:? file:? lineNumber:? description:?];
}

+ (void)_identifyingAttributesForKeyIdentifiedByName:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
}

+ (void)_storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

+ (void)_storableAttributesForKeyIdentifiedByName:data:modificationDate:synchronizable:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"date" object:? file:? lineNumber:? description:?];
}

@end