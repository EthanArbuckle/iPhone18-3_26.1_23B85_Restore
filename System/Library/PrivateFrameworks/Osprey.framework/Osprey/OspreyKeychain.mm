@interface OspreyKeychain
- (BOOL)deleteDataWithIdentifier:(id)a3;
- (BOOL)saveData:(id)a3 withIdentifier:(id)a4;
- (id)createKeychainQuery;
- (id)fetchDataWithIdentifier:(id)a3;
@end

@implementation OspreyKeychain

- (id)createKeychainQuery
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC238];
  v3 = *MEMORY[0x277CDC5C8];
  v9[0] = *MEMORY[0x277CDC228];
  v9[1] = v3;
  v10[0] = v2;
  v10[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CDC120];
  v9[2] = *MEMORY[0x277CDC140];
  v9[3] = v4;
  v5 = *MEMORY[0x277CDBEC8];
  v9[4] = *MEMORY[0x277CDBED8];
  v9[5] = v5;
  v10[2] = MEMORY[0x277CBEC28];
  v10[3] = @"com.apple.siri.osprey";
  v10[4] = *MEMORY[0x277CDBF00];
  v10[5] = @"com.apple.siri.osprey";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = [v6 mutableCopy];

  return v7;
}

- (BOOL)saveData:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(OspreyKeychain *)self createKeychainQuery];
    [v9 setObject:v8 forKey:*MEMORY[0x277CDBF20]];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *MEMORY[0x277CDC5E8];
    [v10 setObject:v6 forKey:*MEMORY[0x277CDC5E8]];
    v12 = SecItemUpdate(v9, v10);
    if (v12 == -25300)
    {
      [v9 setObject:v6 forKey:v11];
      v12 = SecItemAdd(v9, 0);
    }

    if (v12)
    {
      if (v12 != -34018)
      {
        OspreyLoggingInit();
        if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
        {
          [OspreyKeychain saveData:withIdentifier:];
        }

        v13 = 0;
        goto LABEL_19;
      }

      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain saveData:withIdentifier:];
      }
    }

    v13 = 1;
LABEL_19:

    goto LABEL_20;
  }

  OspreyLoggingInit();
  v14 = os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v14)
    {
      [OspreyKeychain saveData:withIdentifier:];
    }
  }

  else if (v14)
  {
    [OspreyKeychain saveData:withIdentifier:];
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)fetchDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(OspreyKeychain *)self createKeychainQuery];
  [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
  [v5 setObject:v4 forKey:*MEMORY[0x277CDBF20]];

  result = 0;
  v6 = SecItemCopyMatching(v5, &result);
  if (v6)
  {
    if (v6 == -34018)
    {
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain fetchDataWithIdentifier:];
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = [result copy];
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  return v7;
}

- (BOOL)deleteDataWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(OspreyKeychain *)self createKeychainQuery];
    [v5 setObject:v4 forKey:*MEMORY[0x277CDBF20]];
    v6 = SecItemDelete(v5);
    v7 = v6 == 0;
    if (v6 == -34018)
    {
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain deleteDataWithIdentifier:];
      }
    }
  }

  else
  {
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyKeychain deleteDataWithIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)saveData:withIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)saveData:withIdentifier:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_25DDE6000, v1, OS_LOG_TYPE_ERROR, "%s Failed to save data to keychain for identifier: %@ due to: %d", v2, 0x1Cu);
}

- (void)saveData:withIdentifier:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end