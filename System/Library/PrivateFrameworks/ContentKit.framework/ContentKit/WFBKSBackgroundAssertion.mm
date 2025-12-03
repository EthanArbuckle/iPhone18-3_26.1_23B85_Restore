@interface WFBKSBackgroundAssertion
+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler;
- (WFBKSBackgroundAssertion)initWithName:(id)name expirationHandler:(id)handler;
- (void)end;
@end

@implementation WFBKSBackgroundAssertion

- (void)end
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = getWFBackgroundAssertionLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    taskName = [(WFBKSBackgroundAssertion *)self taskName];
    v6 = 136315394;
    v7 = "[WFBKSBackgroundAssertion end]";
    v8 = 2114;
    v9 = taskName;
    _os_log_impl(&dword_21E1BD000, v3, OS_LOG_TYPE_INFO, "%s Finished background assertion for %{public}@", &v6, 0x16u);
  }

  assertion = [(WFBKSBackgroundAssertion *)self assertion];
  [assertion invalidate];

  [(WFBKSBackgroundAssertion *)self setAssertion:0];
  [(WFBKSBackgroundAssertion *)self setObserver:0];
}

- (WFBKSBackgroundAssertion)initWithName:(id)name expirationHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = WFBKSBackgroundAssertion;
  v9 = [(WFBKSBackgroundAssertion *)&v27 init];
  v10 = v9;
  if (!v9)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  objc_storeStrong(&v9->_taskName, name);
  v11 = [handlerCopy copy];
  expirationHandler = v10->_expirationHandler;
  v10->_expirationHandler = v11;

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getBKSProcessAssertionClass_softClass;
  v31 = getBKSProcessAssertionClass_softClass;
  if (!getBKSProcessAssertionClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBKSProcessAssertionClass_block_invoke;
    v33 = &unk_27834A178;
    v34 = &v28;
    __getBKSProcessAssertionClass_block_invoke(buf);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  v15 = [[v13 alloc] initWithPID:getpid() flags:1 reason:4 name:nameCopy];
  assertion = v10->_assertion;
  v10->_assertion = v15;

  if (([(BKSProcessAssertion *)v10->_assertion acquire]& 1) == 0)
  {
    v23 = getWFBackgroundAssertionLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[WFBKSBackgroundAssertion initWithName:expirationHandler:]";
      *&buf[12] = 2114;
      *&buf[14] = nameCopy;
      _os_log_impl(&dword_21E1BD000, v23, OS_LOG_TYPE_INFO, "%s Failed to acquire background assertion for %{public}@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    goto LABEL_12;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v17 = getRBSProcessHandleClass_softClass;
  v31 = getRBSProcessHandleClass_softClass;
  if (!getRBSProcessHandleClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRBSProcessHandleClass_block_invoke;
    v33 = &unk_27834A178;
    v34 = &v28;
    __getRBSProcessHandleClass_block_invoke(buf);
    v17 = v29[3];
  }

  v18 = v17;
  _Block_object_dispose(&v28, 8);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__WFBKSBackgroundAssertion_initWithName_expirationHandler___block_invoke;
  v25[3] = &unk_278349550;
  v19 = v10;
  v26 = v19;
  v20 = [v17 observeForImminentAssertionsExpiration:v25];
  observer = v19->_observer;
  v19->_observer = v20;

  v22 = v19;
LABEL_13:

  return v22;
}

uint64_t __59__WFBKSBackgroundAssertion_initWithName_expirationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    (*(v3 + 16))(v2[2]);
    v2 = *(a1 + 32);
  }

  return [v2 end];
}

+ (id)backgroundAssertionWithName:(id)name expirationHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy expirationHandler:handlerCopy];

  return v8;
}

@end