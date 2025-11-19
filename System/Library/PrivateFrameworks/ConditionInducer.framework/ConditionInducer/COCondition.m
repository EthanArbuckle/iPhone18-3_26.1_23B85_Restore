@interface COCondition
+ (id)info;
+ (void)info;
- (BOOL)getBoolProperty:(id)a3 fromDict:(id)a4 withDefault:(BOOL)a5;
- (COCondition)init;
- (id)getStringProperty:(id)a3 fromDict:(id)a4 withDefault:(id)a5;
- (id)getStringProperty:(id)a3 withDefault:(id)a4;
@end

@implementation COCondition

- (COCondition)init
{
  v3.receiver = self;
  v3.super_class = COCondition;
  return [(COCondition *)&v3 init];
}

+ (id)info
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a1 description];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      +[COCondition info];
    }

    v5 = &stru_28570BA10;
  }

  v11[0] = v4;
  v10[0] = @"ConditionIdentifierName";
  v10[1] = @"ConditionUserFriendlyName";
  v6 = [a1 profileFriendlyName];
  v10[2] = @"ConditionDescription";
  v11[1] = v6;
  v11[2] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)getBoolProperty:(id)a3 fromDict:(id)a4 withDefault:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:v7];
    v11 = isNSNumber(v10);

    if (v11)
    {
      a5 = [v10 BOOLValue];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:fromDict:withDefault:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COCondition getBoolProperty:fromDict:withDefault:];
  }

  return a5;
}

- (id)getStringProperty:(id)a3 fromDict:(id)a4 withDefault:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 objectForKey:v7];
    v11 = isNSString(v10);

    v12 = v10;
    if (!v11)
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v12 = v9;
      if (v13)
      {
        [COCondition getStringProperty:v7 fromDict:? withDefault:?];
        v12 = v9;
      }
    }

    v14 = v12;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:fromDict:withDefault:];
    }

    v14 = v9;
  }

  return v14;
}

- (id)getStringProperty:(id)a3 withDefault:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 infoDictionary];
    v11 = [(COCondition *)self getStringProperty:v6 fromDict:v10 withDefault:v7];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COCondition getBoolProperty:withDefault:];
    }

    v11 = v7;
  }

  return v11;
}

+ (void)info
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Missing description entry for %@. Please make sure you fill out all entries for your condition class. If you believe this to be an error, please file a radar to the Condition Inducers component", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)getBoolProperty:fromDict:withDefault:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_243E0F000, MEMORY[0x277D86220], v0, "Key %@ is not set or an unexpected type", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getBoolProperty:fromDict:withDefault:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_0_1(&dword_243E0F000, MEMORY[0x277D86220], v2, "Failed to load info dictionary from %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getBoolProperty:withDefault:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_0_1(&dword_243E0F000, MEMORY[0x277D86220], v2, "No info.plist bundle for %@?", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getStringProperty:(uint64_t)a1 fromDict:withDefault:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = objc_opt_class();
  v1 = v6;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected an NSString from info plist for string %@ but got %@", &v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

@end