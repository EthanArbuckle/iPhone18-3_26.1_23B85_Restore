@interface PKPaymentRegistrationUtilities
+ (void)_shouldShowAddCardFlowForWebService:(id)a3 options:(unint64_t)a4 completion:(id)a5;
+ (void)configureWebServiceIfNecessary:(id)a3 completion:(id)a4;
+ (void)registrationIsSupportedInCurrentRegionWithWebService:(id)a3 completion:(id)a4;
+ (void)shouldShowPasscodeAccessibilityOverride:(id)a3 completion:(id)a4;
+ (void)shouldShowWalletInBuddy:(id)a3 completion:(id)a4;
+ (void)shouldShowWalletInDigitalSeparation:(id)a3 withDeviceSpecificCompletion:(id)a4;
+ (void)shouldShowWalletInSettings:(id)a3 completion:(id)a4;
+ (void)shouldShowWalletInSettingsWithApplePaySupportInformation:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentRegistrationUtilities

+ (void)shouldShowWalletInBuddy:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "shouldShowWalletInBuddy supported", v8, 2u);
  }

  if (v6)
  {
    v6[2](v6, 1, 0);
  }
}

+ (void)shouldShowWalletInSettings:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKPaymentRegistrationUtilities_shouldShowWalletInSettings_completion___block_invoke;
  v8[3] = &unk_1E79C8DF0;
  v9 = v6;
  v7 = v6;
  [a1 shouldShowWalletInSettingsWithApplePaySupportInformation:a3 completion:v8];
}

+ (void)shouldShowWalletInSettingsWithApplePaySupportInformation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__PKPaymentRegistrationUtilities_shouldShowWalletInSettingsWithApplePaySupportInformation_completion___block_invoke;
  v10[3] = &unk_1E79C8E18;
  v12 = v7;
  v13 = a1;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [a1 configureWebServiceIfNecessary:v9 completion:v10];
}

void __102__PKPaymentRegistrationUtilities_shouldShowWalletInSettingsWithApplePaySupportInformation_completion___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) targetDevice];
  v5 = [v4 paymentWebService:*(a1 + 32) hasPassesOfType:1];

  IsAvailable = PKDaemonIsAvailable();
  if (IsAvailable || v5)
  {
    if (PKCurrentPassbookState() < 2)
    {
      v7 = 1;
      goto LABEL_9;
    }

    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Wallet has been deleted, disabling showWalletSettings", buf, 2u);
    }
  }

  v7 = 0;
LABEL_9:
  v9 = [*(a1 + 48) _isPaymentSetupSupportedForWebService:*(a1 + 32)];
  v10 = v9 | v5;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = IsAvailable;
    v13 = v3;
    if (v7)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v22 = v15;
    v23 = v7;
    if (v5)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = PKCurrentRegion();
    v18 = v17;
    *buf = 138545154;
    if (v10)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v25 = v14;
    v3 = v13;
    if (v9)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v26 = 2114;
    v27 = v22;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    v32 = 2114;
    v33 = v19;
    v34 = 2114;
    v35 = v16;
    v7 = v23;
    v36 = 2114;
    v37 = v20;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "shouldShowWalletInSettingsWithApplePaySupportInformation - settings should show returned: %{public}@ (daemonIsAvailable: %{public}@ or hasPaymentPasses: %{public}@) supported in current region (%{public}@) returned: %{public}@ (hasPaymentPasses: %{public}@ or canAddPaymentPasses: %{public}@) error: %@", buf, 0x52u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v7, v10 & 1, 0);
  }
}

+ (void)shouldShowWalletInDigitalSeparation:(id)a3 withDeviceSpecificCompletion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke;
    v9[3] = &unk_1E79C4C70;
    v10 = v6;
    v11 = v7;
    [a1 configureWebServiceIfNecessary:v10 completion:v9];

    v8 = v10;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "+[PKPaymentRegistrationUtilities shouldShowWalletInDigitalSeparation:withDeviceSpecificCompletion:]";
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%s called with no completion", buf, 0xCu);
    }
  }
}

void __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v4 = dispatch_group_create();
  v5 = [*(a1 + 32) targetDevice];
  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke_2;
    v18[3] = &unk_1E79C8E40;
    v20 = v23;
    v19 = v4;
    [v5 hasActiveExternallySharedPasses:v18];
  }

  v6 = objc_alloc_init(getNPKCompanionAgentConnectionClass_0[0]());
  v7 = NSSelectorFromString(&cfstr_Hasactiveexter.isa);
  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v4);
    v8 = [v6 methodForSelector:v7];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke_3;
    v15[3] = &unk_1E79C8E40;
    v17 = v21;
    v16 = v4;
    v8(v6, v7, v15);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke_4;
  v10[3] = &unk_1E79C8E68;
  v13 = v23;
  v14 = v21;
  v11 = v3;
  v12 = *(a1 + 40);
  v9 = v3;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v10);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
}

uint64_t __99__PKPaymentRegistrationUtilities_shouldShowWalletInDigitalSeparation_withDeviceSpecificCompletion___block_invoke_4(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (*(*(a1[7] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = a1[4];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "shouldShowWalletInDigitalSeparation - digital separation should show returned: sharesOnDevice (%{public}@), sharesOnCompanion (%{public}@) error: %@", &v7, 0x20u);
  }

  return (*(a1[5] + 16))();
}

+ (void)shouldShowPasscodeAccessibilityOverride:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKPaymentRegistrationUtilities_shouldShowPasscodeAccessibilityOverride_completion___block_invoke;
  v10[3] = &unk_1E79C4C70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 configureWebServiceIfNecessary:v9 completion:v10];
}

void __85__PKPaymentRegistrationUtilities_shouldShowPasscodeAccessibilityOverride_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) registrationSetupSupportedInRegion];
  v5 = [*(a1 + 32) targetDevice];
  v6 = [v5 paymentWebService:*(a1 + 32) hasPassesOfType:1];

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((v4 | v6))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = PKCurrentRegion();
    v10 = v9;
    v14 = 138544386;
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v15 = v8;
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "shouldShowPasscodeAccessibilityOverride shouldShow: %{public}@ in (%{public}@) region - registration supported: %{public}@, hasPaymentPasses:%{public}@ error: %@", &v14, 0x34u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, (v4 | v6) & 1, v3);
  }
}

+ (void)configureWebServiceIfNecessary:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 needsConfiguration])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PKPaymentRegistrationUtilities_configureWebServiceIfNecessary_completion___block_invoke;
    v10[3] = &unk_1E79C8E90;
    v7 = &v11;
    v11 = v6;
    [v5 configurePaymentServiceWithCompletion:v10];
LABEL_5:

    goto LABEL_6;
  }

  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPaymentRegistrationUtilities_configureWebServiceIfNecessary_completion___block_invoke_3;
    v8[3] = &unk_1E79C4428;
    v7 = &v9;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
    goto LABEL_5;
  }

LABEL_6:
}

void __76__PKPaymentRegistrationUtilities_configureWebServiceIfNecessary_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__PKPaymentRegistrationUtilities_configureWebServiceIfNecessary_completion___block_invoke_2;
    v6[3] = &unk_1E79C44A0;
    v8 = v5;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

+ (void)_shouldShowAddCardFlowForWebService:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PKPaymentRegistrationUtilities__shouldShowAddCardFlowForWebService_options_completion___block_invoke;
    aBlock[3] = &unk_1E79C5268;
    v17 = v8;
    v10 = _Block_copy(aBlock);
    if (a4)
    {
      if ((a4 & 1) == 0 || [PKPaymentRegistrationUtilities _isPaymentSetupSupportedForWebService:v7])
      {
        if ((a4 & 2) != 0)
        {
          v11 = +[PKPaymentService paymentService];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __89__PKPaymentRegistrationUtilities__shouldShowAddCardFlowForWebService_options_completion___block_invoke_46;
          v14[3] = &unk_1E79C5468;
          v15 = v10;
          [v11 familyMembersWithCompletion:v14];
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "_shouldShowAddCardFlowForWebService called with no options", buf, 2u);
      }
    }

    (*(v10 + 2))(v10, 0);
LABEL_13:

    v12 = v17;
    goto LABEL_14;
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "_shouldShowAddCardFlowForWebService called with no completion", buf, 2u);
  }

LABEL_14:
}

void __89__PKPaymentRegistrationUtilities__shouldShowAddCardFlowForWebService_options_completion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__PKPaymentRegistrationUtilities__shouldShowAddCardFlowForWebService_options_completion___block_invoke_2;
  v3[3] = &unk_1E79C4748;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __89__PKPaymentRegistrationUtilities__shouldShowAddCardFlowForWebService_options_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v9 + 1) + 8 * v7);
      if ([v8 isMe])
      {
        if ([v8 memberType] == 2)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)registrationIsSupportedInCurrentRegionWithWebService:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__PKPaymentRegistrationUtilities_registrationIsSupportedInCurrentRegionWithWebService_completion___block_invoke;
  v10[3] = &unk_1E79C8E18;
  v12 = v7;
  v13 = a1;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [a1 configureWebServiceIfNecessary:v9 completion:v10];
}

void __98__PKPaymentRegistrationUtilities_registrationIsSupportedInCurrentRegionWithWebService_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__PKPaymentRegistrationUtilities_registrationIsSupportedInCurrentRegionWithWebService_completion___block_invoke_2;
  v7[3] = &unk_1E79C4770;
  v8 = v3;
  v5 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = v3;
  [v5 _shouldShowAddCardFlowForWebService:v4 completion:v7];
}

uint64_t __98__PKPaymentRegistrationUtilities_registrationIsSupportedInCurrentRegionWithWebService_completion___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PKCurrentRegion();
    v6 = @"NO";
    v7 = *(a1 + 32);
    v10 = 138543874;
    v11 = v5;
    if (a2)
    {
      v6 = @"YES";
    }

    v12 = 2114;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "shouldShowWalletInPreferences supported in current region (%{public}@) returned: %{public}@, error: %@", &v10, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    return (*(result + 16))(result, v9, *(a1 + 32));
  }

  return result;
}

@end