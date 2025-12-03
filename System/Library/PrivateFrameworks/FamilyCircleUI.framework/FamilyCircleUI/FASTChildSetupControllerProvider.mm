@interface FASTChildSetupControllerProvider
- (id)expressSetupControllerOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler;
- (id)expressSetupControllerWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler;
- (id)newChildSetupControllerOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name isExpressSetup:(BOOL)setup introductionModelCompletionHandler:(id)handler;
- (void)executeCompletion:(id)completion withIntroductionModel:(id)model error:(id)error;
@end

@implementation FASTChildSetupControllerProvider

- (id)newChildSetupControllerOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name isExpressSetup:(BOOL)setup introductionModelCompletionHandler:(id)handler
{
  setupCopy = setup;
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if (!setupCopy)
  {
    goto LABEL_3;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __150__FASTChildSetupControllerProvider_newChildSetupControllerOnChildDeviceWithDSID_childAge_childName_isExpressSetup_introductionModelCompletionHandler___block_invoke;
  v18[3] = &unk_2782F31E0;
  objc_copyWeak(&v20, &location);
  v19 = handlerCopy;
  v16 = [(FASTChildSetupControllerProvider *)self expressSetupControllerOnChildDeviceWithDSID:dCopy childAge:ageCopy childName:nameCopy completionHandler:v18];

  objc_destroyWeak(&v20);
  if (!v16)
  {
LABEL_3:
    v16 = [objc_alloc(getSTChildSetupControllerClass()) initOnChildDeviceWithDSID:dCopy childAge:ageCopy childName:nameCopy];
  }

  [v16 setCompletionHandlerWithIntroductionModel:handlerCopy];
  objc_destroyWeak(&location);

  return v16;
}

void __150__FASTChildSetupControllerProvider_newChildSetupControllerOnChildDeviceWithDSID_childAge_childName_isExpressSetup_introductionModelCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained executeCompletion:*(a1 + 32) withIntroductionModel:v6 error:v5];
}

- (void)executeCompletion:(id)completion withIntroductionModel:(id)model error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  modelCopy = model;
  completionCopy = completion;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy == 0];
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "STChildSetupController.executeCompletion calling completion shouldEnable %{public}@ error: %@", &v13, 0x16u);
  }

  completionCopy[2](completionCopy, errorCopy == 0, modelCopy);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)expressSetupControllerOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler
{
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  handlerCopy = handler;
  v9 = NSSelectorFromString(&cfstr_Initexpressset.isa);
  v10 = objc_alloc(getSTChildSetupControllerClass());
  v16 = v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = MEMORY[0x277CBEAE8];
    v12 = [v10 methodSignatureForSelector:v9];
    v13 = [v11 invocationWithMethodSignature:v12];

    [v13 setSelector:v9];
    [v13 setTarget:v10];
    [v13 setArgument:&dCopy atIndex:2];
    [v13 setArgument:&ageCopy atIndex:3];
    [v13 setArgument:&nameCopy atIndex:4];
    [v13 setArgument:&handlerCopy atIndex:5];
    [v13 invoke];
    [v13 getReturnValue:&v16];
    v14 = v16;

    v10 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)expressSetupControllerWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler
{
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  handlerCopy = handler;
  v9 = NSSelectorFromString(&cfstr_Initexpressset_0.isa);
  v10 = objc_alloc(getSTChildSetupControllerClass());
  v16 = v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = MEMORY[0x277CBEAE8];
    v12 = [v10 methodSignatureForSelector:v9];
    v13 = [v11 invocationWithMethodSignature:v12];

    [v13 setSelector:v9];
    [v13 setTarget:v10];
    [v13 setArgument:&dCopy atIndex:2];
    [v13 setArgument:&ageCopy atIndex:3];
    [v13 setArgument:&nameCopy atIndex:4];
    [v13 setArgument:&handlerCopy atIndex:5];
    [v13 invoke];
    [v13 getReturnValue:&v16];
    v14 = v16;

    v10 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end