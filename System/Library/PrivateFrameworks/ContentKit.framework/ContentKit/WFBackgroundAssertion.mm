@interface WFBackgroundAssertion
+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler;
@end

@implementation WFBackgroundAssertion

+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v7 = getWFBackgroundAssertionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "+[WFBackgroundAssertion backgroundAssertionWithName:expirationHandler:]";
    v23 = 2114;
    v24 = nameCopy;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_INFO, "%s Starting background assertion for %{public}@", buf, 0x16u);
  }

  v8 = objc_opt_class();
  v9 = +[WFApplicationContext sharedContext];
  applicationOrNil = [v9 applicationOrNil];
  if (applicationOrNil)
  {
    v11 = applicationOrNil;
    v12 = +[WFApplicationContext sharedContext];
    applicationState = [v12 applicationState];

    if (applicationState != 2)
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
  v19 = nameCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = nameCopy;
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