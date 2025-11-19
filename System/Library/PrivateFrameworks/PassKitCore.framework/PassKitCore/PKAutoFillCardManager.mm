@interface PKAutoFillCardManager
+ (CGImage)walletIcon;
- (PKAutoFillCardManager)init;
- (PKAutoFillCardManager)initWithPaymentService:(id)a3;
- (id)_defaultSortForDescriptors:(id)a3;
- (id)_managementSortForDescriptors:(id)a3;
- (id)_sortDescriptors:(id)a3 withSort:(unint64_t)a4;
- (id)urlToListOfCards;
- (int64_t)_typeOrderForType:(unint64_t)a3;
- (void)activeFPANCardsWithOptions:(unint64_t)a3 allowedCardTypes:(id)a4 sortType:(unint64_t)a5 completion:(id)a6;
- (void)cachedFPANCredentialsWithCompletion:(id)a3;
- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)a3;
- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7;
- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4;
- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6;
- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6;
- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)userDidUseCardWithDescriptor:(id)a3 credential:(id)a4;
- (void)userRejectedSavingFPANCardWithDescriptor:(id)a3 credential:(id)a4 options:(unint64_t)a5 permanent:(BOOL)a6;
@end

@implementation PKAutoFillCardManager

+ (CGImage)walletIcon
{
  v2 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:64.0 scale:{64.0, PKScreenScale()}];
  v3 = objc_alloc(MEMORY[0x1E69A8A00]);
  v4 = PKAppIconUTI();
  v5 = [v3 initWithType:v4];

  v6 = [v5 prepareImageForDescriptor:v2];
  v7 = [v6 CGImage];
  if (v7)
  {
    v8 = CFRetain(v7);
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKAutoFillCardManager)init
{
  v3 = +[PKPaymentService paymentService];
  v4 = [(PKAutoFillCardManager *)self initWithPaymentService:v3];

  return v4;
}

- (PKAutoFillCardManager)initWithPaymentService:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKAutoFillCardManager;
  v6 = [(PKAutoFillCardManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentService, a3);
    v8 = objc_alloc_init(PKVirtualCardManager);
    virtualCardManager = v7->_virtualCardManager;
    v7->_virtualCardManager = v8;

    v10 = dispatch_queue_create("com.apple.PassKitCore.autofill-card-manager", 0);
    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

- (id)urlToListOfCards
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=PASSBOOK&path=%@", @"manageAutoFillCards"];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (void)activeFPANCardsWithOptions:(unint64_t)a3 allowedCardTypes:(id)a4 sortType:(unint64_t)a5 completion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PKAutoFillCardCredentialRequestedFieldsToString(a3);
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: Fetching active autofill cards with options: %@ allowedDescriptors: %@", buf, 0x16u);
    }

    if (_os_feature_enabled_impl())
    {
      if (PKCurrentPassbookState() < 2)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke;
        block[3] = &unk_1E79D0278;
        v17 = v10;
        v18 = self;
        v20 = a3;
        v19 = v11;
        v21 = a5;
        dispatch_async(queue, block);

        goto LABEL_13;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "PKAutoFillCardManager: Not returning active cards because Wallet has been deleted.";
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "PKAutoFillCardManager: Feature disabled";
LABEL_11:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }

    (*(v11 + 2))(v11, 0);
  }

LABEL_13:
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke(void *a1)
{
  v2 = dispatch_group_create();
  v3 = (PKStoreDemoModeEnabled() & 1) != 0 || PKUIOnlyDemoModeEnabled();
  v4 = a1[4];
  if (!v4)
  {
    v5 = 0;
LABEL_9:
    v6 = !v3;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = [v4 containsObject:&unk_1F23B4DD8] ^ 1;
  v4 = a1[4];
  if (v4 == 0 || v3)
  {
    goto LABEL_9;
  }

  v6 = [v4 containsObject:&unk_1F23B4DF0];
  v4 = a1[4];
  if (!v4)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v7 = [v4 containsObject:&unk_1F23B4DF0];
LABEL_11:
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__24;
  v32[4] = __Block_byref_object_dispose__24;
  v33 = 0;
  if ((v5 & 1) == 0)
  {
    dispatch_group_enter(v2);
    v8 = *(a1[5] + 8);
    v9 = a1[7];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_38;
    v29[3] = &unk_1E79C9C40;
    v31 = v32;
    v30 = v2;
    [v8 activeFPANCardsWithOptions:v9 completion:v29];
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__24;
  v27[4] = __Block_byref_object_dispose__24;
  v28 = 0;
  if ((v6 | v7))
  {
    dispatch_group_enter(v2);
    v10 = *(a1[5] + 16);
    v11 = a1[7];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_2;
    v24[3] = &unk_1E79CA7D8;
    v26 = v27;
    v25 = v2;
    [v10 activeVirtualCardsWithOptions:v11 & 3 completion:v24];
  }

  v13 = a1[5];
  v12 = a1[6];
  v14 = *(v13 + 24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_3;
  v17[3] = &unk_1E79D0250;
  v19 = v32;
  v20 = v27;
  v22 = v7;
  v17[4] = v13;
  v23 = v6;
  v15 = v12;
  v16 = a1[8];
  v18 = v15;
  v21 = v16;
  dispatch_group_notify(v2, v14, v17);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v32, 8);
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_38(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 pk_safelyAddObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  v3 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_4;
        v20[3] = &unk_1E79D0200;
        v22 = *(a1 + 72);
        v10 = *(a1 + 32);
        v20[4] = v9;
        v20[5] = v10;
        v21 = v2;
        v23 = *(a1 + 73);
        [(PKAsyncUnaryOperationComposer *)v3 addOperation:v20];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E695DFB0] null];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_8;
  v15[3] = &unk_1E79D0228;
  v16 = v2;
  v12 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v12;
  v19 = *(a1 + 64);
  v13 = v2;
  v14 = [(PKAsyncUnaryOperationComposer *)v3 evaluateWithInput:v11 completion:v15];
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) balanceSource] == 1)
  {
    if (*(a1 + 56) == 1)
    {
      v8 = [[PKAutoFillAppleCashCardDescriptor alloc] initWithVirtualCard:*(a1 + 32)];
      v9 = *(a1 + 32);
      v10 = *(*(a1 + 40) + 8);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_5;
      v33[3] = &unk_1E79D01B0;
      v34 = v8;
      v35 = *(a1 + 48);
      v37 = v7;
      v36 = v6;
      v11 = v8;
      [v10 paymentPassForVirtualCard:v9 completion:v33];

      v12 = v34;
LABEL_10:

      goto LABEL_11;
    }
  }

  else if (*(a1 + 57) == 1)
  {
    v11 = [[PKAutoFillVirtualCardDescriptor alloc] initWithVirtualCard:*(a1 + 32)];
    if ([*(a1 + 32) type] == 1)
    {
      v13 = +[PKAccountService sharedInstance];
      v14 = [*(a1 + 32) identifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_7;
      v23[3] = &unk_1E79D01D8;
      v15 = &v24;
      v24 = v11;
      v16 = &v25;
      v25 = *(a1 + 48);
      v17 = &v27;
      v27 = v7;
      v18 = &v26;
      v26 = v6;
      v19 = v11;
      [v13 accountWithVirtualCardIdentifier:v14 completion:v23];
    }

    else
    {
      v20 = *(a1 + 32);
      v21 = *(*(a1 + 40) + 8);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_6;
      v28[3] = &unk_1E79D01B0;
      v15 = &v29;
      v29 = v11;
      v16 = &v30;
      v30 = *(a1 + 48);
      v17 = &v32;
      v32 = v7;
      v18 = &v31;
      v31 = v6;
      v22 = v11;
      [v21 paymentPassForVirtualCard:v20 completion:v28];
    }

    v12 = *v15;
    goto LABEL_10;
  }

  (*(v7 + 2))(v7, v6, 0);
LABEL_11:
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) setCardIsInWallet:1];
  }

  v3 = *(a1 + 32);
  v4 = [v5 uniqueID];
  [v3 setPassUniqueIdentifier:v4];

  [*(a1 + 40) safelyAddObject:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) setCardIsInWallet:1];
  }

  v3 = *(a1 + 32);
  v4 = [v5 uniqueID];
  [v3 setPassUniqueIdentifier:v4];

  [*(a1 + 40) safelyAddObject:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPassUniqueID];
  [*(a1 + 32) setPassUniqueIdentifier:v3];
  [*(a1 + 32) setCardIsInWallet:1];
  [*(a1 + 40) safelyAddObject:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
}

void __89__PKAutoFillCardManager_activeFPANCardsWithOptions_allowedCardTypes_sortType_completion___block_invoke_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x30uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: Found %lu active cards eligible for autofill", &v6, 0xCu);
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) _sortDescriptors:*(a1 + 32) withSort:*(a1 + 56)];
  (*(v4 + 16))(v4, v5);
}

- (id)_sortDescriptors:(id)a3 withSort:(unint64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    v8 = [(PKAutoFillCardManager *)self _managementSortForDescriptors:v7];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v8 = [(PKAutoFillCardManager *)self _defaultSortForDescriptors:v7];
  }

  v4 = v8;
LABEL_6:

  return v4;
}

- (id)_defaultSortForDescriptors:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKAutoFillCardManager__defaultSortForDescriptors___block_invoke;
  v5[3] = &unk_1E79D02A0;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __52__PKAutoFillCardManager__defaultSortForDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) defaultPaymentPassUniqueIdentifier];
  v8 = [v5 passUniqueIdentifier];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v11 = [v6 passUniqueIdentifier];
    v12 = [v11 isEqualToString:v7];

    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v13 = [v5 lastUsage];
      v14 = [v6 lastUsage];
      v15 = v14;
      if (v13 | v14)
      {
        if (v13)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if (v13 && v14)
        {
          v10 = [v14 compare:v13];
        }
      }

      else
      {
        v16 = [v5 cardNickname];
        v17 = [v6 cardNickname];
        v10 = [v16 compare:v17];
      }
    }
  }

  return v10;
}

- (id)_managementSortForDescriptors:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKAutoFillCardManager__managementSortForDescriptors___block_invoke;
  v5[3] = &unk_1E79D02A0;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __55__PKAutoFillCardManager__managementSortForDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 type];
  v8 = [v6 type];
  if (v7 == v8 || ((v9 = v8, v10 = [*(a1 + 32) _typeOrderForType:v7], v11 = objc_msgSend(*(a1 + 32), "_typeOrderForType:", v9), v10 > v11) ? (v12 = -1) : (v12 = 1), v10 == v11))
  {
    v13 = [v5 cardNickname];
    v14 = [v6 cardNickname];
    v12 = [v13 caseInsensitiveCompare:v14];

    if (!v12)
    {
      v15 = PKAutoFillCardDescriptorCredentialTypeToString([v5 credentialType]);
      v16 = PKAutoFillCardDescriptorCredentialTypeToString([v6 credentialType]);
      v12 = [v15 compare:v16];

      if (!v12)
      {
        v17 = [v5 displayableLastFour];
        v18 = [v6 displayableLastFour];
        v12 = [v17 compare:v18];
      }
    }
  }

  return v12;
}

- (int64_t)_typeOrderForType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 3;
  }

  else
  {
    return qword_1ADB9A5E8[a3];
  }
}

- (void)credentialForFPANCard:(id)a3 authorization:(id)a4 options:(unint64_t)a5 merchantHost:(id)a6 completion:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = PKLogFacilityTypeGetObject(0x30uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: credential requested descriptor: %@", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    queue = self->_queue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__PKAutoFillCardManager_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke;
    v18[3] = &unk_1E79D02F0;
    v19 = v12;
    v23 = v15;
    v20 = self;
    v21 = v13;
    v24 = a5;
    v22 = v14;
    dispatch_async(queue, v18);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: Feature disabled", buf, 2u);
    }

    (*(v15 + 2))(v15, 0, 0);
  }
}

void __93__PKAutoFillCardManager_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if ((v2 - 2) < 2)
  {
    v4 = [*(a1 + 32) virtualCard];
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 16);
    v7 = *(a1 + 56);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__PKAutoFillCardManager_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_2;
    v17[3] = &unk_1E79D02C8;
    v8 = *(a1 + 72);
    v9 = *(a1 + 64);
    v18 = v4;
    v19 = v9;
    v10 = v4;
    [v6 credentialsForVirtualCard:v10 authorization:v5 options:v8 & 3 merchantHost:v7 completion:v17];
  }

  else if (v2 == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);

    [v12 credentialForFPANCard:v11 authorization:v13 options:v15 merchantHost:v14 completion:v16];
  }

  else if (!v2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

void __93__PKAutoFillCardManager_credentialForFPANCard_authorization_options_merchantHost_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [[PKAutoFillCardCredential alloc] initWithVirtualCard:*(a1 + 32) credential:v6];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)insertFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "PKAutoFillCardManager: Feature disabled";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }

LABEL_9:

    v10[2](v10, 0);
    goto LABEL_10;
  }

  if ([v8 type] != 1)
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "PKAutoFillCardManager: Tried to insert descriptor that isn't insertable";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKAutoFillCardManager_insertFPANCardWithDescriptor_credential_completion___block_invoke;
  v14[3] = &unk_1E79C4EF0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  dispatch_async(queue, v14);

LABEL_10:
}

- (void)updateFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PKAutoFillCardManager_updateFPANCardWithDescriptor_credential_completion___block_invoke;
    v13[3] = &unk_1E79C4EF0;
    v14 = v8;
    v15 = self;
    v16 = v9;
    v17 = v10;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: Feature disabled", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __76__PKAutoFillCardManager_updateFPANCardWithDescriptor_credential_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if ((v2 - 2) < 2)
  {
    v7 = [*(a1 + 32) virtualCard];
    v8 = [*(a1 + 48) cardholderName];
    v9 = [v7 cardholderName];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (!v10 || !v11)
      {

LABEL_18:
        v15 = *(*(a1 + 40) + 8);
        v16 = [*(a1 + 48) cardholderName];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __76__PKAutoFillCardManager_updateFPANCardWithDescriptor_credential_completion___block_invoke_2;
        v17[3] = &unk_1E79C4450;
        v18 = *(a1 + 56);
        [v15 updateCardholderNameFromSafari:v16 forVirtualCard:v7 completion:v17];

        goto LABEL_19;
      }

      v13 = [v10 isEqualToString:v11];

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_19:

    return;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(*(a1 + 40) + 8);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);

      [v4 updateFPANCardWithDescriptor:v3 credential:v5 completion:v6];
    }
  }

  else
  {
    v14 = *(*(a1 + 56) + 16);

    v14();
  }
}

- (void)deleteFPANCardWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "PKAutoFillCardManager: Feature disabled";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }

LABEL_9:

    v7[2](v7, 0);
    goto LABEL_10;
  }

  if ([v6 type] != 1)
  {
    v9 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "PKAutoFillCardManager: Tried to delete descriptor that isn't deletable";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKAutoFillCardManager_deleteFPANCardWithDescriptor_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  dispatch_async(queue, block);

LABEL_10:
}

- (void)canSaveFPANCardWithDescriptor:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "PKAutoFillCardManager: Feature disabled";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }

LABEL_9:

    v14 = +[PKFPANCardCanSaveResult empty];
    v10[2](v10, v14);

    goto LABEL_10;
  }

  if ([v8 type] != 1)
  {
    v12 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "PKAutoFillCardManager: canSave called for incorrect descriptor type";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKAutoFillCardManager_canSaveFPANCardWithDescriptor_credential_completion___block_invoke;
  v15[3] = &unk_1E79CB4E8;
  v15[4] = self;
  v16 = v9;
  v18 = v10;
  v17 = v8;
  dispatch_async(queue, v15);

LABEL_10:
}

void __77__PKAutoFillCardManager_canSaveFPANCardWithDescriptor_credential_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKAutoFillCardManager_canSaveFPANCardWithDescriptor_credential_completion___block_invoke_2;
  v9[3] = &unk_1E79D0318;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = *v2;
  v8 = v6;
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v3 activeVirtualCardsWithOptions:1 completion:v9];
}

void __77__PKAutoFillCardManager_canSaveFPANCardWithDescriptor_credential_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v10 setDateFormat:@"MM/yyyy"];
          v11 = [*(a1 + 32) primaryAccountNumber];
          v12 = [*(a1 + 32) expirationDate];
          v13 = [v10 stringFromDate:v12];
          v14 = [v13 pk_zString];
          LODWORD(v9) = [v9 isEqualToSafariEntryWithPrimaryAccountNumber:v11 expirationDate:v14];

          if (v9)
          {
            v15 = PKLogFacilityTypeGetObject(0x30uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: canSave called with card that matches virtual card.", buf, 2u);
            }

            v16 = *(a1 + 56);
            v17 = +[PKFPANCardCanSaveResult empty];
            (*(v16 + 16))(v16, v17);

            v4 = v18;
            goto LABEL_16;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = v18;
  }

  [*(*(a1 + 40) + 8) canSaveFPANCardWithDescriptor:*(a1 + 48) credential:*(a1 + 32) completion:{*(a1 + 56), v18}];
LABEL_16:
}

- (void)userRejectedSavingFPANCardWithDescriptor:(id)a3 credential:(id)a4 options:(unint64_t)a5 permanent:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "PKAutoFillCardManager: Feature disabled";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if ([v10 type] != 1)
  {
    v13 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "PKAutoFillCardManager: rejectSave called for incorrect descriptor type";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKAutoFillCardManager_userRejectedSavingFPANCardWithDescriptor_credential_options_permanent___block_invoke;
  block[3] = &unk_1E79D0340;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  dispatch_async(queue, block);

LABEL_10:
}

- (void)userDidUseCardWithDescriptor:(id)a3 credential:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKAutoFillCardManager_userDidUseCardWithDescriptor_credential___block_invoke;
    block[3] = &unk_1E79C4E00;
    v11 = v6;
    v12 = self;
    v13 = v7;
    dispatch_async(queue, block);

    v9 = v11;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKAutoFillCardManager: Feature disabled", buf, 2u);
    }
  }
}

void __65__PKAutoFillCardManager_userDidUseCardWithDescriptor_credential___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if ((v2 - 2) >= 2)
  {
    if (v2 != 1)
    {
      return;
    }

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DF00] date];
    [v5 setLastUsage:v6];

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PKAutoFillCardManager_userDidUseCardWithDescriptor_credential___block_invoke_2;
    v13[3] = &unk_1E79D0388;
    v14 = v7;
    v10 = v8;
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v4 = v7;
    [v9 updateFPANCardWithDescriptor:v4 credential:v10 completion:v13];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Setting virtual card last used date", v12, 2u);
    }

    v4 = [*(a1 + 32) virtualCard];
    [v4 setLastAutoFilledBySafariWithCompletion:0];
  }
}

void __65__PKAutoFillCardManager_userDidUseCardWithDescriptor_credential___block_invoke_2(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = [[PKFPANCredential alloc] initWithFPANCardDescriptor:a1[4] credential:a1[5]];
    v4 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Sending FPAN Credential to be suggested to be provisioned.", v7, 2u);
    }

    v5 = *(a1[6] + 8);
    v8[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v5 suggestPaymentFPANCredentialImport:v6 withCompletion:&__block_literal_global_78];
  }
}

void __65__PKAutoFillCardManager_userDidUseCardWithDescriptor_credential___block_invoke_63(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0x30uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Success passing credential for import suggestion.", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error passing credential for import suggestion: %@", &v8, 0xCu);
  }
}

- (void)fpanCardAndCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10)
  {
    (*(v13 + 2))(v13, 0, 0, 0);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKAutoFillCardManager_fpanCardAndCredentialForPrimaryAccountIdentifier_passUniqueID_authorization_completion___block_invoke;
  block[3] = &unk_1E79C4F68;
  block[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(queue, block);
}

- (void)checkActiveFPANCardsForEligibilityWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKAutoFillCardManager_checkActiveFPANCardsForEligibilityWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cachedFPANCredentialsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PKAutoFillCardManager_cachedFPANCredentialsWithCompletion___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fpanCredentialForPrimaryAccountIdentifier:(id)a3 passUniqueID:(id)a4 credential:(id *)a5 error:(id *)a6
{
  if (a3)
  {
    if (a4)
    {
      [PKPaymentService fpanCredentialForPrimaryAccountIdentifier:"fpanCredentialForPrimaryAccountIdentifier:passUniqueID:credential:error:" passUniqueID:? credential:? error:?];
    }
  }
}

- (void)fpanDescriptorAndCredentialForFPAN:(id)a3 descriptor:(id *)a4 credential:(id *)a5 error:(id *)a6
{
  if (a3)
  {
    [(PKPaymentService *)self->_paymentService fpanDescriptorAndCredentialForFPAN:a3 descriptor:a4 credential:a5 error:a6];
  }
}

@end