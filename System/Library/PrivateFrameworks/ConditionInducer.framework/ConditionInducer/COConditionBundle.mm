@interface COConditionBundle
- (BOOL)isRunnable:(id *)runnable;
- (BOOL)loadAndReturnError:(id *)error;
- (COConditionBundle)initWithURL:(id)l;
- (Class)classNamed:(id)named error:(id *)error;
- (id)conditions;
@end

@implementation COConditionBundle

- (COConditionBundle)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = COConditionBundle;
  return [(COConditionBundle *)&v4 initWithURL:l];
}

- (BOOL)loadAndReturnError:(id *)error
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [COConditionBundle loadAndReturnError:?];
  }

  v15 = 0;
  v5 = [(COConditionBundle *)self isRunnable:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = COConditionBundle;
    v14 = v6;
    v8 = [(COConditionBundle *)&v13 loadAndReturnError:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionBundle loadAndReturnError:?];
    }

    v7 = v9;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COConditionBundle loadAndReturnError:?];
  }

  if (error)
  {
    v11 = v7;
    v10 = 0;
    *error = v7;
  }

  else
  {
    v10 = 0;
  }

  v9 = v7;
LABEL_15:

  return v10;
}

- (id)conditions
{
  v28 = *MEMORY[0x277D85DE8];
  outCount = 0;
  if (([(COConditionBundle *)self isLoaded]& 1) != 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    executablePath = [(COConditionBundle *)self executablePath];
    v5 = objc_copyClassNamesForImage([executablePath UTF8String], &outCount);
    v6 = v5;
    if (outCount)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = MEMORY[0x277D86220];
      do
      {
        v11 = v9;

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6[v7]];

        v20 = 0;
        v12 = [(COConditionBundle *)self classNamed:v9 error:&v20];
        v8 = v20;
        v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          if (v13)
          {
            bundlePath = [(COConditionBundle *)self bundlePath];
            *buf = 138412802;
            v23 = bundlePath;
            v24 = 2112;
            v25 = v9;
            v26 = 2112;
            v27 = v8;
            _os_log_debug_impl(&dword_243E0F000, v10, OS_LOG_TYPE_DEBUG, "Bundle: %@ skipping Class: %@ - %@", buf, 0x20u);
          }
        }

        else
        {
          if (v13)
          {
            [(COConditionBundle *)self bundlePath];
            v15 = v19 = executablePath;
            *buf = 138412546;
            v23 = v15;
            v24 = 2112;
            v25 = v9;
            _os_log_debug_impl(&dword_243E0F000, v10, OS_LOG_TYPE_DEBUG, "Bundle: %@ found COCondition Class: %@", buf, 0x16u);

            executablePath = v19;
          }

          [array addObject:v12];
        }

        ++v7;
      }

      while (v7 < outCount);
    }

    else if (!v5)
    {
LABEL_17:
      v16 = array;

      goto LABEL_18;
    }

    free(v6);
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COConditionBundle conditions];
  }

  v16 = 0;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (Class)classNamed:(id)named error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  if (namedCopy)
  {
    v24.receiver = self;
    v24.super_class = COConditionBundle;
    principalClass = [(COConditionBundle *)&v24 classNamed:namedCopy];
  }

  else
  {
    principalClass = [(COConditionBundle *)self principalClass];
  }

  v8 = principalClass;
  if (!principalClass)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      if (namedCopy)
      {
        v14 = namedCopy;
      }

      else
      {
        v14 = @"principalClass";
      }

      *buf = 138412290;
      v26 = v14;
      _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Class: %@ not found", buf, 0xCu);
    }

    else if (namedCopy)
    {
      v14 = namedCopy;
    }

    else
    {
      v14 = @"principalClass";
    }

    v9 = createConditionInducerError("[COConditionBundle classNamed:error:]", 104, 1, 0, @"Class: %@ not found", v11, v12, v13, v14);
    v10 = &stru_28570BA10;
    if (!error)
    {
LABEL_22:
      v8 = 0;
      goto LABEL_24;
    }

LABEL_12:
    v15 = v9;
    v8 = 0;
    *error = v9;
    goto LABEL_24;
  }

  if (([(objc_class *)principalClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    if (([(objc_class *)v8 instancesRespondToSelector:sel_setUp]& 1) != 0)
    {
      v10 = &stru_28570BA10;
    }

    else
    {
      v10 = [&stru_28570BA10 stringByAppendingString:@" setUp"];
    }

    if (([(objc_class *)v8 instancesRespondToSelector:sel_tearDown]& 1) == 0)
    {
      v16 = [(__CFString *)v10 stringByAppendingString:@" tearDown"];

      v10 = v16;
    }

    if (([(objc_class *)v8 instancesRespondToSelector:sel_active]& 1) == 0)
    {
      v17 = [(__CFString *)v10 stringByAppendingString:@" active"];

      v10 = v17;
    }

    if (![(__CFString *)v10 length])
    {
      v9 = 0;
      goto LABEL_24;
    }

    v9 = createConditionInducerError("[COConditionBundle classNamed:error:]", 130, 3, 0, @"Class %@, does not conform to required COConditionProtocol. Missing methods: %@", v18, v19, v20, namedCopy);
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = 0;
  v10 = &stru_28570BA10;
LABEL_24:
  v21 = v8;

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isRunnable:(id *)runnable
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [(COConditionBundle *)self objectForInfoDictionaryKey:@"RequiresRootPrivileges"];
  v6 = isNSNumber(v5);

  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionBundle isRunnable:?];
    }

    v5 = MEMORY[0x277CBEC38];
  }

  if ([v5 BOOLValue])
  {
    v7 = NSUserName();
    v8 = [v7 isEqualToString:@"root"];

    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [COConditionBundle isRunnable:?];
      }

      bundlePath = [(COConditionBundle *)self bundlePath];
      v25 = createConditionInducerError("[COConditionBundle isRunnable:]", 172, 5, 0, @"%@ must be loaded as root.", v28, v29, v30, bundlePath);

      v11 = 0;
      v9 = 0;
      goto LABEL_33;
    }
  }

  v9 = [(COConditionBundle *)self objectForInfoDictionaryKey:@"RequiresEntitlements"];
  v10 = isNSDictionary(v9);

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionBundle isRunnable:?];
    }

    v9 = MEMORY[0x277CBEC10];
    goto LABEL_13;
  }

  if (v9)
  {
LABEL_13:
    v34 = v5;
    runnableCopy = runnable;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v9;
    v12 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v15 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [v9 valueForKey:v17];
          v36 = 0;
          v19 = hasEntitlementValue(v17, v18, &v36);
          v20 = v36;

          if ((v19 & 1) == 0)
          {
            v21 = [v9 valueForKey:v17];
            [v11 setObject:v21 forKeyedSubscript:v17];

            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [(COConditionBundle *)buf isRunnable:v20, &v42];
            }
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    v5 = v34;
    runnable = runnableCopy;
    goto LABEL_24;
  }

  v11 = 0;
LABEL_24:
  if (![v11 count])
  {
    v25 = 0;
    v26 = 1;
    if (!runnable)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COConditionBundle isRunnable:];
  }

  v25 = createConditionInducerError("[COConditionBundle isRunnable:]", 202, 5, 0, @"Missing required entitlements: %@", v22, v23, v24, v11);
LABEL_33:
  v26 = 0;
  if (runnable)
  {
LABEL_34:
    v31 = v25;
    *runnable = v25;
  }

LABEL_35:

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)loadAndReturnError:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundlePath];
  v3 = 138412290;
  v4 = v1;
  _os_log_debug_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Loading Bundle %@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadAndReturnError:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadAndReturnError:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isRunnable:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isRunnable:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 bundlePath];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isRunnable:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundlePath];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isRunnable:(void *)a3 .cold.4(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

- (void)isRunnable:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end