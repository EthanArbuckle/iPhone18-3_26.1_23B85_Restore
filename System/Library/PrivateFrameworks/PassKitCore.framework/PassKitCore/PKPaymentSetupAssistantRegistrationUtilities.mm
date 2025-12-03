@interface PKPaymentSetupAssistantRegistrationUtilities
+ (BOOL)setupAssistantNeedsToRun:(unint64_t)run returningRequirements:(unint64_t *)requirements;
+ (void)preflightPaymentSetupProvisioningController:(id)controller forSetupAssistant:(unint64_t)assistant withCompletion:(id)completion;
@end

@implementation PKPaymentSetupAssistantRegistrationUtilities

+ (void)preflightPaymentSetupProvisioningController:(id)controller forSetupAssistant:(unint64_t)assistant withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Performing [PKPaymentRegistrationUtilities preflightPaymentSetupProvisioningController:forSetupAssistant:withCompletion:]", buf, 2u);
  }

  if (PKNetworkConnectivityAvailable())
  {
    webService = [controllerCopy webService];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke;
    v10[3] = &unk_1E79C4C70;
    v11 = controllerCopy;
    v12 = completionCopy;
    [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:webService completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Buddy provisioning disabled because device is not online", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_139;
    block[3] = &unk_1E79C4A40;
    v5 = &v9;
    v9 = v3;
    v6 = &v10;
    v10 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = [*(a1 + 32) webService];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_2;
    v11[3] = &unk_1E79C8EB8;
    v5 = &v12;
    v12 = *(a1 + 32);
    v6 = v13;
    v13[0] = *(a1 + 40);
    v13[1] = 2;
    [PKPaymentRegistrationUtilities _shouldShowAddCardFlowForWebService:v7 options:2 completion:v11];
  }
}

void __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) webService];
    v4 = [v3 targetDevice];
    v5 = [v4 deviceRegion];

    v6 = [*(a1 + 32) webService];
    v7 = [v6 context];
    v8 = [v7 configuration];
    v9 = [v8 buddyProvisioningEnabledForRegion:v5];

    if (v9)
    {
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v11 = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_3;
    }

    else
    {
      v10 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v11 = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_4;
    }

    v10[2] = v11;
    v10[3] = &unk_1E79C4428;
    v10[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_138;
    v13[3] = &unk_1E79C8958;
    v12 = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    v5 = v14;
  }
}

uint64_t __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKCurrentRegion();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Buddy provisioning disabled in current region (%{public}@). Skipping.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_138(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Add card flow not supported in due to missing options %lu. Skipping.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __125__PKPaymentSetupAssistantRegistrationUtilities_preflightPaymentSetupProvisioningController_forSetupAssistant_withCompletion___block_invoke_139(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x2AuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKCurrentRegion();
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Setup not supported in current region (%{public}@). Skipping. (Error: %{public}@)", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

+ (BOOL)setupAssistantNeedsToRun:(unint64_t)run returningRequirements:(unint64_t *)requirements
{
  v5 = [[PKSetupAssistantUtilityContext alloc] initWithSetupAssistant:run];
  v6 = [[PKPaymentSetupAssistantCoreController alloc] initWithSetupAssistantContext:v5];
  LOBYTE(requirements) = [(PKPaymentSetupAssistantCoreController *)v6 _setupAssistantNeedsToRunReturningRequirements:requirements];

  return requirements;
}

@end