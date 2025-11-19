@interface FASTChildSetupControllerProvider
- (id)expressSetupControllerOnChildDeviceWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 completionHandler:(id)a6;
- (id)expressSetupControllerWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 completionHandler:(id)a6;
- (id)newChildSetupControllerOnChildDeviceWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 isExpressSetup:(BOOL)a6 introductionModelCompletionHandler:(id)a7;
- (void)executeCompletion:(id)a3 withIntroductionModel:(id)a4 error:(id)a5;
@end

@implementation FASTChildSetupControllerProvider

- (id)newChildSetupControllerOnChildDeviceWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 isExpressSetup:(BOOL)a6 introductionModelCompletionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  objc_initWeak(&location, self);
  if (!v8)
  {
    goto LABEL_3;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __150__FASTChildSetupControllerProvider_newChildSetupControllerOnChildDeviceWithDSID_childAge_childName_isExpressSetup_introductionModelCompletionHandler___block_invoke;
  v18[3] = &unk_2782F31E0;
  objc_copyWeak(&v20, &location);
  v19 = v15;
  v16 = [(FASTChildSetupControllerProvider *)self expressSetupControllerOnChildDeviceWithDSID:v12 childAge:v13 childName:v14 completionHandler:v18];

  objc_destroyWeak(&v20);
  if (!v16)
  {
LABEL_3:
    v16 = [objc_alloc(getSTChildSetupControllerClass()) initOnChildDeviceWithDSID:v12 childAge:v13 childName:v14];
  }

  [v16 setCompletionHandlerWithIntroductionModel:v15];
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

- (void)executeCompletion:(id)a3 withIntroductionModel:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v7 == 0];
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "STChildSetupController.executeCompletion calling completion shouldEnable %{public}@ error: %@", &v13, 0x16u);
  }

  v9[2](v9, v7 == 0, v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)expressSetupControllerOnChildDeviceWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 completionHandler:(id)a6
{
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
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
    [v13 setArgument:&v20 atIndex:2];
    [v13 setArgument:&v19 atIndex:3];
    [v13 setArgument:&v18 atIndex:4];
    [v13 setArgument:&v17 atIndex:5];
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

- (id)expressSetupControllerWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 completionHandler:(id)a6
{
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
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
    [v13 setArgument:&v20 atIndex:2];
    [v13 setArgument:&v19 atIndex:3];
    [v13 setArgument:&v18 atIndex:4];
    [v13 setArgument:&v17 atIndex:5];
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