@interface PKHideMyEmailManager
- (BOOL)_isHSA2Enabled;
- (PKHideMyEmailManager)init;
- (id)_primaryAccount;
- (id)_primaryAccountAltDSID;
- (id)forwardingEmailForPrimaryAccount;
- (void)bestDomainForAppIdentifier:(id)a3 completion:(id)a4;
- (void)createHideMyEmailAddressWithKey:(id)a3 completion:(id)a4;
- (void)findHideMyEmailAddressWithKey:(id)a3 completion:(id)a4;
- (void)isAvailable:(id)a3;
- (void)registerHideMyEmailAddressWithKey:(id)a3 originIdentifier:(id)a4 merchantIdentifier:(id)a5 isWebPayment:(BOOL)a6 completion:(id)a7;
@end

@implementation PKHideMyEmailManager

- (PKHideMyEmailManager)init
{
  v6.receiver = self;
  v6.super_class = PKHideMyEmailManager;
  v2 = [(PKHideMyEmailManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DDC0]);
    controller = v2->_controller;
    v2->_controller = v3;

    v2->_isAvailable = 0;
  }

  return v2;
}

- (void)isAvailable:(id)a3
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PaymentSheetHME feature flag not enabled!", buf, 2u);
    }

    isAvailable = 2;
    self->_isAvailable = 2;
    goto LABEL_7;
  }

  isAvailable = self->_isAvailable;
  if (isAvailable)
  {
LABEL_7:
    v4[2](v4, isAvailable == 1, 0);
    goto LABEL_8;
  }

  v6 = MEMORY[0x1E6994FE8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PKHideMyEmailManager_isAvailable___block_invoke;
  v8[3] = &unk_1E79CB3D0;
  v8[4] = self;
  v9 = v4;
  [v6 requestFeatureWithId:@"mail.hide-my-email.create" completion:v8];

LABEL_8:
}

void __36__PKHideMyEmailManager_isAvailable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 canUse];
    v8 = 1;
    if (!v7)
    {
      v8 = 2;
    }

    *(*(a1 + 32) + 16) = v8;
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 canUse], 0);
    if (([v5 canUse] & 1) == 0)
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Hide My Email feature not available!", &v11, 2u);
      }
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to check for HME feature. %@", &v11, 0xCu);
    }

    *(*(a1 + 32) + 16) = 2;
    (*(*(a1 + 40) + 16))();
  }
}

- (void)createHideMyEmailAddressWithKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKHideMyEmailManager *)self _primaryAccountAltDSID];
  v9 = v8;
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke;
    v15[3] = &unk_1E79CB448;
    v15[4] = self;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v10 = v7;
    [(PKHideMyEmailManager *)self findHideMyEmailAddressWithKey:v17 completion:v15];

    v11 = v16;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_48;
    block[3] = &unk_1E79C4428;
    v14 = v7;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v11 = v14;
  }
}

void __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_2;
  v4[3] = &unk_1E79CB420;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 fetchPrivateEmailForAltDSID:v1 withKey:v3 completion:v4];
}

void __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_3;
  block[3] = &unk_1E79CB3F8;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[6];
    v6 = [v2 privateEmailAddress];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Create hide my email address failed with error: %@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }
}

void __67__PKHideMyEmailManager_createHideMyEmailAddressWithKey_completion___block_invoke_48(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"DSID required to register new HME address";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v3];

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Create hide my email address failed with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)registerHideMyEmailAddressWithKey:(id)a3 originIdentifier:(id)a4 merchantIdentifier:(id)a5 isWebPayment:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(PKHideMyEmailManager *)self _primaryAccountAltDSID];
  if (v16)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke;
    v22[3] = &unk_1E79CB4C0;
    v17 = &v28;
    v28 = v15;
    v23 = v12;
    v24 = v16;
    v29 = a6;
    v25 = v13;
    v26 = v14;
    v27 = self;
    v18 = v15;
    [(PKHideMyEmailManager *)self findHideMyEmailAddressWithKey:v23 completion:v22];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_55;
    v20[3] = &unk_1E79C4428;
    v17 = &v21;
    v21 = v15;
    v19 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }
}

void __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_2;
    block[3] = &unk_1E79C44A0;
    v15 = *(a1 + 72);
    v14 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v4 = v15;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E698DDB8]);
    if (*(a1 + 80))
    {
      v6 = MEMORY[0x1E698DC30];
    }

    else
    {
      v6 = MEMORY[0x1E698DC28];
    }

    v4 = [v5 initWithKey:*(a1 + 32) altDSID:*(a1 + 40) originType:*v6 originIdentifier:*(a1 + 48)];
    [v4 setMetadataString:*(a1 + 56)];
    v7 = *(*(a1 + 64) + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_3;
    v8[3] = &unk_1E79CB498;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    [v7 registerPrivateEmailWithContext:v4 completion:v8];
  }
}

void __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_4;
  v10[3] = &unk_1E79CB470;
  v11 = v5;
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v7 = a1[7];
  v15 = v6;
  v16 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(7uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v14 = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Register hide my email address succeeded for key: %@, originId: %@, merchantId: %@", &v14, 0x20u);
    }

    v8 = *(a1 + 72);
    v9 = [*(a1 + 32) privateEmailAddress];
    (*(v8 + 16))(v8, v9, *(a1 + 64));
  }

  else
  {
    if (v4)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Register hide my email address failed with key: %@, originId: %@, merchantId: %@, and error: %@", &v14, 0x2Au);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __118__PKHideMyEmailManager_registerHideMyEmailAddressWithKey_originIdentifier_merchantIdentifier_isWebPayment_completion___block_invoke_55(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"DSID required to register new HME address";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v3];

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Register hide my email address failed with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)findHideMyEmailAddressWithKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKHideMyEmailManager *)self _primaryAccountAltDSID];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E698DDB8]) initWithKey:v6 altDSID:v8];
    controller = self->_controller;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke;
    v14[3] = &unk_1E79CB510;
    v15 = v6;
    v16 = v7;
    v11 = v7;
    [(AKPrivateEmailController *)controller lookupPrivateEmailWithContext:v9 completion:v14];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke_56;
    block[3] = &unk_1E79C4428;
    v13 = v7;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v11 = v13;
  }
}

void __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke_2;
  v10[3] = &unk_1E79CB4E8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(7uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Look up hide my email address succeeded for key: %@", &v10, 0xCu);
    }

    v6 = *(a1 + 56);
    v7 = [*(a1 + 32) privateEmailAddress];
    (*(v6 + 16))(v6, v7, *(a1 + 48));
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Look up hide my email address miss with key: %@, error: %@", &v10, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __65__PKHideMyEmailManager_findHideMyEmailAddressWithKey_completion___block_invoke_56(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"DSID required to register new HME address";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v3];

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Find hide my email address failed with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)bestDomainForAppIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = getSFSafariCredentialStoreClass[0];
  v7 = a3;
  v8 = v6();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKHideMyEmailManager_bestDomainForAppIdentifier_completion___block_invoke;
  v10[3] = &unk_1E79C50E0;
  v11 = v5;
  v9 = v5;
  [(objc_class *)v8 bestDomainForAppID:v7 completionHandler:v10];
}

void __62__PKHideMyEmailManager_bestDomainForAppIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Could not find associated domain for bundleId:", v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_isHSA2Enabled
{
  v3 = [(PKHideMyEmailManager *)self _primaryAccount];
  if ([v3 aa_isManagedAppleID])
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698DC80] sharedInstance];
    v6 = [(PKHideMyEmailManager *)self _primaryAccount];
    v4 = [v5 securityLevelForAccount:v6] > 3;
  }

  return v4;
}

- (id)_primaryAccount
{
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  return v3;
}

- (id)_primaryAccountAltDSID
{
  v2 = [(PKHideMyEmailManager *)self _primaryAccount];
  v3 = [v2 accountPropertyForKey:@"altDSID"];

  return v3;
}

- (id)forwardingEmailForPrimaryAccount
{
  v3 = [MEMORY[0x1E698DC80] sharedInstance];
  v4 = [(PKHideMyEmailManager *)self _primaryAccount];
  v5 = [v3 forwardingEmailForAccount:v4];

  return v5;
}

@end