@interface NSSUserDefaultsDataDestructionItem
- (NSSUserDefaultsDataDestructionItem)init;
- (NSSUserDefaultsDataDestructionItem)initWithUserDefaults:(id)defaults domainName:(id)name stickyKeys:(id)keys;
@end

@implementation NSSUserDefaultsDataDestructionItem

- (NSSUserDefaultsDataDestructionItem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NSSUserDefaultsDataDestructionItem init]";
    v10 = 2080;
    v11 = "NSSNewsDataDestruction.m";
    v12 = 1024;
    v13 = 30;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NSSUserDefaultsDataDestructionItem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSSUserDefaultsDataDestructionItem)initWithUserDefaults:(id)defaults domainName:(id)name stickyKeys:(id)keys
{
  defaultsCopy = defaults;
  nameCopy = name;
  keysCopy = keys;
  if (!defaultsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSUserDefaultsDataDestructionItem initWithUserDefaults:domainName:stickyKeys:];
    if (nameCopy)
    {
      goto LABEL_6;
    }
  }

  else if (nameCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSUserDefaultsDataDestructionItem initWithUserDefaults:domainName:stickyKeys:];
  }

LABEL_6:
  if (!keysCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSSUserDefaultsDataDestructionItem initWithUserDefaults:domainName:stickyKeys:];
  }

  v19.receiver = self;
  v19.super_class = NSSUserDefaultsDataDestructionItem;
  v12 = [(NSSUserDefaultsDataDestructionItem *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    v14 = [nameCopy copy];
    domainName = v13->_domainName;
    v13->_domainName = v14;

    v16 = [keysCopy copy];
    stickyKeys = v13->_stickyKeys;
    v13->_stickyKeys = v16;
  }

  return v13;
}

- (void)initWithUserDefaults:domainName:stickyKeys:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "userDefaults", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithUserDefaults:domainName:stickyKeys:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "domainName", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithUserDefaults:domainName:stickyKeys:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF0A000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "stickyKeys", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end