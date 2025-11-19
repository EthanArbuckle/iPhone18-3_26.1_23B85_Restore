@interface WFBackgroundAssertion
+ (id)backgroundAssertionWithName:(id)a3 expirationHandler:(id)a4;
@end

@implementation WFBackgroundAssertion

+ (id)backgroundAssertionWithName:(id)a3 expirationHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = getWFBackgroundAssertionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "+[WFBackgroundAssertion backgroundAssertionWithName:expirationHandler:]";
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_INFO, "%s Starting background assertion for %{public}@", buf, 0x16u);
  }

  v8 = objc_opt_class();
  v9 = +[WFApplicationContext sharedContext];
  v10 = [v9 applicationOrNil];
  if (v10)
  {
    v11 = v10;
    v12 = +[WFApplicationContext sharedContext];
    v13 = [v12 applicationState];

    if (v13 != 2)
    {
      v8 = objc_opt_class();
    }
  }

  else
  {
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__WFBackgroundAssertion_backgroundAssertionWithName_expirationHandler___block_invoke;
  v18[3] = &unk_278347B38;
  v19 = v5;
  v20 = v6;
  v14 = v6;
  v15 = v5;
  v16 = [v8 backgroundAssertionWithName:v15 expirationHandler:v18];

  return v16;
}

uint64_t __71__WFBackgroundAssertion_backgroundAssertionWithName_expirationHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = getWFBackgroundAssertionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "+[WFBackgroundAssertion backgroundAssertionWithName:expirationHandler:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_21E1BD000, v2, OS_LOG_TYPE_INFO, "%s Background assertion expired for %{public}@", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end