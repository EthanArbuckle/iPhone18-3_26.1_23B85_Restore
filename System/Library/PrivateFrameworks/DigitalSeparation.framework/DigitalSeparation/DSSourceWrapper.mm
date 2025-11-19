@interface DSSourceWrapper
+ (BOOL)shouldEnumerateResourceNamesForSource:(id)a3;
+ (id)wrapMultiSource:(id)a3;
+ (void)initialize;
@end

@implementation DSSourceWrapper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLog_5 = os_log_create("com.apple.DigitalSeparation", "DSSourceWrapper");

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)shouldEnumerateResourceNamesForSource:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_285BAD248])
  {
    v4 = [v3 resourceNames];
    v5 = [v4 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)wrapMultiSource:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ([DSSourceWrapper shouldEnumerateResourceNamesForSource:v3])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [v3 resourceNames];
    v5 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [[DSSubSource alloc] init:v3 withResourceName:v9];
          [v4 setObject:v10 forKeyedSubscript:v9];

          v11 = DSLog_5;
          if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [v3 name];
            *buf = 138543618;
            v23 = v9;
            v24 = 2114;
            v25 = v13;
            _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_DEFAULT, "Adding sharing sub source for %{public}@ from %{public}@", buf, 0x16u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v14 = DSLog_5;
    if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_ERROR))
    {
      [(DSSourceWrapper *)v14 wrapMultiSource:v3];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)wrapMultiSource:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 name];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_248C40000, v3, OS_LOG_TYPE_ERROR, "%{public}@ does not satisfy constraints to use DSResourceName", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end