@interface PKSharedPassSharesController
+ (BOOL)_isPlatformSharingFeatureBlockedForPass:(id)a3 targetDevice:(id)a4;
- (BOOL)hasRevokableShares;
- (BOOL)isCrossPlatformSharingEnabled;
- (BOOL)isSharingChannelBlockedForChannel:(id)a3 isRecipientKnownContact:(BOOL)a4;
- (BOOL)sharingEnabled;
- (BOOL)sharingFeatureEnabled;
- (NSArray)interAccountUserShares;
- (NSArray)shares;
- (PKSharedPassSharesController)initWithPass:(id)a3 contactResolver:(id)a4 webService:(id)a5 paymentServiceProvider:(id)a6 queue:(id)a7;
- (id)_baseNewShareForPassIsTransfer:(BOOL)a3;
- (id)_contactResolver;
- (id)_feature;
- (id)_sharingActivationConfigurationForChannel:(id)a3 channelRisk:(int64_t)a4;
- (id)allowedSharingChannels;
- (id)baseShareForPassTransferWithIsForCompanion:(BOOL)a3;
- (id)blockedSharingChannels;
- (id)childSharesOfShare:(id)a3;
- (id)contactForShare:(id)a3;
- (id)entitlementsForShare:(id)a3;
- (id)possiblePredefinedEntitlements;
- (id)revocableShares;
- (id)senderShareForShare:(id)a3;
- (id)shareForShareIdentifier:(id)a3;
- (id)shareInitiationActivationConfigurationForChannelBundleIdentifier:(id)a3 isRecipientKnownContact:(BOOL)a4;
- (int64_t)_randomCodeOfLength:(int64_t)a3;
- (int64_t)_totalPendingCredentialShares;
- (int64_t)_totalPendingShares;
- (unint64_t)_numberOfSharesPartnerDoesNotKnowAbout;
- (unint64_t)maxEntitlementSelectionCount;
- (void)_immobilizerTokenCountWithCompletion:(id)a3;
- (void)addDefaultShareActivationOptionsToShare:(id)a3 availableOptions:(id *)a4 allowUserEdit:(BOOL *)a5 channelBundleIdentifier:(id)a6 isRecipientKnownContact:(BOOL)a7;
- (void)addDelegate:(id)a3;
- (void)canSendInvitationWithIsTransfer:(BOOL)a3 completion:(id)a4;
- (void)createShareWithPartialShare:(id)a3 authorization:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)didUpdateShares;
- (void)fetchContactForShare:(id)a3 withCompletion:(id)a4;
- (void)prewarmCreateShare;
- (void)removeDelegate:(id)a3;
- (void)revokeAllSharesWithCompletion:(id)a3;
- (void)revokeShare:(id)a3 shouldCascade:(BOOL)a4 withCompletion:(id)a5;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3;
- (void)updateEntitlementsWithCompletion:(id)a3;
- (void)updateShare:(id)a3 authorization:(id)a4 completion:(id)a5;
- (void)updateSharesWithCompletion:(id)a3;
@end

@implementation PKSharedPassSharesController

- (PKSharedPassSharesController)initWithPass:(id)a3 contactResolver:(id)a4 webService:(id)a5 paymentServiceProvider:(id)a6 queue:(id)a7
{
  v13 = a3;
  v29 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PKSharedPassSharesController *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pass, a3);
    objc_storeStrong(&v18->_contactResolver, a4);
    objc_storeStrong(&v18->_webService, a5);
    objc_storeStrong(&v18->_paymentServiceProvider, a6);
    [(PKPaymentDataProvider *)v18->_paymentServiceProvider addDelegate:v18];
    objc_storeStrong(&v18->_queue, a7);
    v19 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v18->_delegates;
    v18->_delegates = v19;

    v18->_lock._os_unfair_lock_opaque = 0;
    v21 = [(PKPaymentWebService *)v18->_webService targetDevice];
    v22 = [v21 paymentWebService:v18->_webService supportedRegionFeatureOfType:2];

    v23 = [(PKPaymentWebService *)v18->_webService targetDevice];
    v24 = [v23 deviceVersion];
    v25 = [v23 deviceClass];
    v26 = [v22 friendSharingOSVersionRequirement];
    v18->_friendSharingFeatureSupported = [v26 versionMeetsRequirements:v24 deviceClass:v25];

    v27 = [v22 ownerSharingOSVersionRequirement];
    v18->_ownerSharingFeatureSupported = [v27 versionMeetsRequirements:v24 deviceClass:v25];

    v18->_platformSharingFeatureBlocked = [objc_opt_class() _isPlatformSharingFeatureBlockedForPass:v13 targetDevice:v23];
    [(PKSharedPassSharesController *)v18 updateSharesWithCompletion:0];
  }

  return v18;
}

- (void)dealloc
{
  [(PKPaymentDataProvider *)self->_paymentServiceProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKSharedPassSharesController;
  [(PKSharedPassSharesController *)&v3 dealloc];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_delegates addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_delegates removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)didUpdateShares
{
  if (!self->_isPerformingBatchOpperation)
  {
    os_unfair_lock_lock(&self->_lock);
    v3 = [(NSHashTable *)self->_delegates allObjects];
    os_unfair_lock_unlock(&self->_lock);
    if ([v3 count])
    {
      queue = self->_queue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __47__PKSharedPassSharesController_didUpdateShares__block_invoke;
      v5[3] = &unk_1E79C4DD8;
      v6 = v3;
      v7 = self;
      dispatch_async(queue, v5);
    }
  }
}

void __47__PKSharedPassSharesController_didUpdateShares__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) sharedPassSharesControllerDidUpdateShares:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)contactForShare:(id)a3
{
  v4 = a3;
  v5 = [(PKSharedPassSharesController *)self _contactResolver];
  v6 = [v4 recipientHandle];

  v7 = [v5 contactForHandle:v6];

  return v7;
}

- (void)fetchContactForShare:(id)a3 withCompletion:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKSharedPassSharesController *)self _contactResolver];

    queue = self->_queue;
    if (v8)
    {
      v10 = queue;
      if ([v6 isForCurrentUser])
      {
        v24[0] = *MEMORY[0x1E695C400];
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v12 = PKMeContactWithKeysToFetch(v11);

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __68__PKSharedPassSharesController_fetchContactForShare_withCompletion___block_invoke_2;
        block[3] = &unk_1E79C44A0;
        v20 = v12;
        v21 = v7;
        v13 = v12;
        dispatch_async(v10, block);
      }

      else
      {
        v14 = [(PKSharedPassSharesController *)self _contactResolver];
        v15 = [v6 recipientHandle];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __68__PKSharedPassSharesController_fetchContactForShare_withCompletion___block_invoke_3;
        v16[3] = &unk_1E79E1610;
        v17 = v10;
        v18 = v7;
        [v14 contactForHandle:v15 withCompletion:v16];

        v13 = v17;
      }
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__PKSharedPassSharesController_fetchContactForShare_withCompletion___block_invoke;
      v22[3] = &unk_1E79C4428;
      v23 = v7;
      dispatch_async(queue, v22);
      v10 = v23;
    }
  }
}

void __68__PKSharedPassSharesController_fetchContactForShare_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKSharedPassSharesController_fetchContactForShare_withCompletion___block_invoke_4;
  v7[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)_contactResolver
{
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = +[PKPeerPaymentCounterpartHandleFormatter requiredContactKeys];
    v6 = [[PKContactResolver alloc] initWithContactStore:v4 keysToFetch:v5];
    v7 = self->_contactResolver;
    self->_contactResolver = v6;

    contactResolver = self->_contactResolver;
  }

  return contactResolver;
}

- (id)senderShareForShare:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSharedPassSharesController *)self shares];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__PKSharedPassSharesController_senderShareForShare___block_invoke;
  v17[3] = &unk_1E79E1638;
  v6 = v4;
  v18 = v6;
  v7 = [v5 pk_firstObjectPassingTest:v17];

  if (!v7)
  {
    v8 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
    v9 = [v8 subcredentials];
    v10 = [v9 anyObject];

    v11 = objc_alloc_init(PKPassShare);
    v12 = objc_alloc_init(PKPassCredentialShare);
    v13 = [v10 identifier];
    [(PKPassCredentialShare *)v12 setIdentifier:v13];

    v19[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(PKPassShare *)v11 setCredentialShares:v14];

    if (([v6 isForCurrentUser] & 1) != 0 || -[PKPassShare isParentOfShare:](v11, "isParentOfShare:", v6))
    {
      v15 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen.isa, 0);
      [(PKPassShare *)v11 setRecipientNickname:v15];

      v7 = v11;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateSharesWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4A40;
  aBlock[4] = self;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKSharedPassSharesController *)self shares];
  v8 = [v7 pk_arrayBySafelyApplyingBlock:&__block_literal_global_210];

  v9 = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(PKObject *)self->_pass uniqueID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_4;
    v11[3] = &unk_1E79CC750;
    v12 = v8;
    v13 = self;
    v14 = v6;
    [v9 displayableSharesForPassIdentifier:v10 completion:v11];
  }

  else
  {
    v6[2](v6);
  }
}

void __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_2;
  v4[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

uint64_t __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 didUpdateShares];
}

void __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_5;
  v12[3] = &unk_1E79E1638;
  v13 = *(a1 + 32);
  v4 = [v3 pk_firstObjectPassingTest:v12];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v4)
  {
    v7 = v4;
  }

  v8 = *(v6 + 104);
  *(v6 + 104) = v5;

  os_unfair_lock_lock((*(a1 + 40) + 64));
  v9 = *(a1 + 40);
  v10 = *(v9 + 48);
  *(v9 + 48) = v3;
  v11 = v3;

  os_unfair_lock_unlock((*(a1 + 40) + 64));
  [*(a1 + 40) updateEntitlementsWithCompletion:*(a1 + 48)];
}

uint64_t __59__PKSharedPassSharesController_updateSharesWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)updateEntitlementsWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4A40;
  aBlock[4] = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(PKObject *)self->_pass uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_3;
    v9[3] = &unk_1E79C4838;
    v9[4] = self;
    v10 = v6;
    [v7 displayableEntitlementsForPassIdentifier:v8 completion:v9];
  }

  else
  {
    v6[2](v6);
  }
}

void __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C4428;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) sharingFeatureEnabled];
  if (v3)
  {
    v4 = [v8 pk_objectsPassingTest:&__block_literal_global_88_0];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(a1 + 32) + 80), v4);
  if (v3)
  {
  }

  v5 = [v8 pk_objectsPassingTest:&__block_literal_global_90_0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;

  if (([*(a1 + 32) sharingFeatureEnabled] & 1) == 0)
  {
    [*(*(a1 + 32) + 88) enumerateObjectsUsingBlock:&__block_literal_global_93_0];
  }

  (*(*(a1 + 40) + 16))();
}

BOOL __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [v2 shareability];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [v2 active];

  return v3;
}

void __65__PKSharedPassSharesController_updateEntitlementsWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 entitlement];
  v3 = [v4 copyWithSuppressedShareability];
  [v2 replaceSharedEntitlementWithEntitlement:v3];
}

- (id)entitlementsForShare:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v4 sharedEntitlements];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v28 + 1) + 8 * i) entitlementIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_shareableEntitlements;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = [v18 entitlementIdentifier];
        v20 = [v5 containsObject:v19];

        if (v20)
        {
          v21 = [v18 entitlement];
          [v12 addObject:v21];
        }
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v22 = [v12 copy];

  return v22;
}

- (id)childSharesOfShare:(id)a3
{
  v4 = a3;
  v5 = [(PKSharedPassSharesController *)self shares];
  v6 = [v4 descendantsInShares:v5];

  return v6;
}

- (id)revocableShares
{
  v2 = [(PKSharedPassSharesController *)self shares];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_98];

  return v3;
}

uint64_t __47__PKSharedPassSharesController_revocableShares__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isForCurrentUser] & 1) != 0 || objc_msgSend(v2, "isLocalShare") && !PKShowLocalPassShares())
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isRevokable];
  }

  return v3;
}

- (NSArray)shares
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_shares;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)interAccountUserShares
{
  v2 = [(PKSharedPassSharesController *)self shares];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_100];

  return v3;
}

uint64_t __54__PKSharedPassSharesController_interAccountUserShares__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isLocalShare])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isForCurrentUser] ^ 1;
  }

  return v3;
}

- (id)shareForShareIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSharedPassSharesController *)self shares];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PKSharedPassSharesController_shareForShareIdentifier___block_invoke;
    v8[3] = &unk_1E79E1638;
    v9 = v4;
    v6 = [v5 pk_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __56__PKSharedPassSharesController_shareForShareIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (BOOL)sharingEnabled
{
  v3 = [(NSArray *)self->_shareableEntitlements count];
  result = [(PKSharedPassSharesController *)self sharingFeatureEnabled];
  if (!v3)
  {
    return 0;
  }

  return result;
}

- (BOOL)sharingFeatureEnabled
{
  v3 = 40;
  if (self->_isOwnerSharing)
  {
    v3 = 41;
  }

  v4 = *(&self->super.isa + v3);
  v5 = [(PKSecureElementPass *)self->_pass supportsFeatureForCurrentDevice:1];
  if (v4)
  {
    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && !self->_platformSharingFeatureBlocked;
}

- (void)canSendInvitationWithIsTransfer:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_queue;
  if (v6)
  {
    v8 = [(PKObject *)self->_pass uniqueID];
    v9 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Can Share: Checking if pass can send invitation: %@", buf, 0xCu);
    }

    v10 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
    if (-[PKSecureElementPass contactlessActivationState](self->_pass, "contactlessActivationState") || [v10 state] == 15)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Can Share: Unable to share because pass is not in an active state", buf, 2u);
      }

      v11 = PKLocalizationKeyForPassType(@"UNABLE_TO_SHARE_GENERIC_DESCRIPTION", self->_pass);
      v12 = PKLocalizedShareableCredentialString(v11, 0);

      v13 = PKLocalizedShareableCredentialString(&cfstr_UnableToShareG_0.isa, 0);
      v14 = PKDisplayableErrorCustomWithType(-1, v13, v12, 0, 0);
      v6[2](v6, v14);

      goto LABEL_9;
    }

    if (v4)
    {
      v15 = [(NSArray *)self->_myEntitlements pk_countObjectsPassingTest:&__block_literal_global_110];
      if (v15 != [(NSArray *)self->_myEntitlements count])
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v16 = "Can Share: Unable to transfer because all entitlements not transferable";
LABEL_23:
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = [(NSArray *)self->_shareableEntitlements count];
      shareableEntitlements = self->_shareableEntitlements;
      if (!shareableEntitlements || !v17)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v16 = "Can Share: Unable to share because pass has no shareable entitlements";
          goto LABEL_23;
        }

LABEL_24:

        v20 = [MEMORY[0x1E696ABC0] pkSharingError:7];
        v24 = _PKSharingDisplayableError(v20, 0, 0);
        v6[2](v6, v24);
LABEL_31:

        goto LABEL_32;
      }

      if ([(NSArray *)shareableEntitlements pk_countObjectsPassingTest:&__block_literal_global_114_0]!= v17)
      {
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
LABEL_30:

          v20 = PKLocalizedCredentialString(&cfstr_UnableToShareT_0.isa, 0);
          v24 = PKLocalizedCredentialString(&cfstr_UnableToShareE.isa, 0);
          v26 = PKDisplayableErrorCustomWithType(-1, v20, v24, 0, 0);
          v6[2](v6, v26);

          goto LABEL_31;
        }

        *buf = 0;
        v25 = "Can Share: Unable to share because pass has entitlements with no remaining shares";
LABEL_29:
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
        goto LABEL_30;
      }
    }

    if ([(PKSharedPassSharesController *)self sharingFeatureEnabled])
    {
      if (![(PKSecureElementPass *)self->_pass isCarKeyPass])
      {
        v6[2](v6, 0);
        goto LABEL_9;
      }

      v19 = [v10 subcredentials];
      v20 = [v19 anyObject];

      v21 = [(PKPaymentWebService *)self->_webService targetDevice];
      webService = self->_webService;
      v23 = [v20 identifier];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_121;
      v27[3] = &unk_1E79E1758;
      v28 = v7;
      v29 = self;
      v30 = v6;
      v31 = v4;
      [v21 paymentWebService:webService credentialWithIdentifier:v23 completion:v27];

LABEL_32:
LABEL_9:

      goto LABEL_10;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v25 = "Can Share: sharing disabled";
    goto LABEL_29;
  }

LABEL_10:
}

uint64_t __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [v2 intraAccountSharingEnabled];

  return v3;
}

uint64_t __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_112(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [v2 hasRemainingShares];

  return v3;
}

void __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_2;
  block[3] = &unk_1E79E1730;
  v9 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v10 = vextq_s8(v7, v7, 8uLL);
  v6 = v3;
  dispatch_async(v4, block);
}

void __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sharingConfiguration];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = [v2 numberOfShareableCredentials];
  v5 = [*(a1 + 40) _numberOfSharesPartnerDoesNotKnowAbout];
  v6 = [*(a1 + 40) _totalPendingShares];
  v7 = [*(a1 + 40) _totalPendingCredentialShares];
  v8 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v28 = v4;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    v33 = 2048;
    v34 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Can Share: shareableCredentials: %ld;  outstandingShares: %ld;  pendingShares: %ld;  pendingCredentialShares: %ld;", buf, 0x2Au);
  }

  if (v4 > v5)
  {
    if (v6 >= 8)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v28 = v9;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Can Share: Unable to share credential, reached pending share max. \n %@", buf, 0xCu);
      }

      v10 = *(a1 + 56);
      v11 = PKLocalizedCredentialString(&cfstr_UnableToShareT_0.isa, 0);
      if (*(a1 + 64))
      {
        v12 = @"UNABLE_TO_TRANSFER_EXCEEDED_INVITATION_LIMIT_BODY";
      }

      else
      {
        v12 = @"UNABLE_TO_SHARE_EXCEEDED_INVITATION_LIMIT_BODY";
      }

      v13 = PKLocalizedCredentialString(&v12->isa, 0);
      v14 = PKDisplayableErrorCustomWithType(-1, v11, v13, 0, 0);
      (*(v10 + 16))(v10, v14);

      goto LABEL_20;
    }

    if (!PKBypassImmoTokenCountCheck())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_128;
      v21[3] = &unk_1E79E1708;
      v20 = *(a1 + 40);
      v22 = *(a1 + 48);
      v26 = *(a1 + 64);
      v23 = *(a1 + 32);
      v25 = v7;
      v24 = *(a1 + 56);
      [v20 _immobilizerTokenCountWithCompletion:v21];

      goto LABEL_20;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Can Share: Skipping immo token count check", buf, 2u);
    }

LABEL_19:
    (*(*(a1 + 56) + 16))();
    goto LABEL_20;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Can Share: Unable to share credential, no shareable credentials remaining. \n %@", buf, 0xCu);
  }

  v16 = *(a1 + 56);
  v17 = PKLocalizedCredentialString(&cfstr_UnableToShareT_0.isa, 0);
  v18 = PKLocalizedCredentialString(&cfstr_UnableToShareE.isa, 0);
  v19 = PKDisplayableErrorCustomWithType(-1, v17, v18, 0, 0);
  (*(v16 + 16))(v16, v19);

LABEL_20:
}

void __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_2_129;
  v8[3] = &unk_1E79E16E0;
  v14 = *(a1 + 64);
  v11 = a2;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = a3;
  v13 = v6;
  v10 = v7;
  dispatch_async(v5, v8);
}

void __75__PKSharedPassSharesController_canSendInvitationWithIsTransfer_completion___block_invoke_2_129(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v2 > *(a1 + 48) && PKAppletSubcredentialSupportsSharingInAChain(*(a1 + 32)))
  {
    v3 = PKLocalizedCredentialString(&cfstr_UnableToShareT_0.isa, 0);
    if (*(a1 + 72))
    {
      v4 = @"UNABLE_TO_TRANSFER_NO_TOKENS_BODY";
    }

    else
    {
      v4 = @"UNABLE_TO_SHARE_NO_TOKENS_BODY";
    }

LABEL_15:
    v8 = PKLocalizedCredentialString(&v4->isa, 0);
    v9 = PKDisplayableErrorCustomWithType(-1, v3, v8, 0, 0);

    goto LABEL_17;
  }

  if (*(a1 + 56) < v2)
  {
    v5 = *(a1 + 64);
    v3 = PKLocalizedCredentialString(&cfstr_UnableToShareT_0.isa, 0);
    v6 = @"UNABLE_TO_SHARE_NO_TOKENS_BODY";
    v7 = @"UNABLE_TO_SHARE_EXCEEDED_INVITATION_LIMIT_BODY";
    if (*(a1 + 72))
    {
      v6 = @"UNABLE_TO_TRANSFER_NO_TOKENS_BODY";
      v7 = @"UNABLE_TO_TRANSFER_EXCEEDED_INVITATION_LIMIT_BODY";
    }

    if (v5 > (v2 ^ 7))
    {
      v4 = v7;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_15;
  }

  v9 = 0;
LABEL_17:
  v10 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"No";
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    if (!v9)
    {
      v11 = @"Yes";
    }

    v14 = 138413314;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    v23 = v2;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Can Share: %@, remainingShares: %lu (required: %lu) remainingDepth: %lu (required: %lu)", &v14, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)_numberOfSharesPartnerDoesNotKnowAbout
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PKSharedPassSharesController *)self shares];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) groupIdentifier];
        if (!v8)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_totalPendingShares
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(PKSharedPassSharesController *)self shares];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) credentialShares];
        v9 = [v8 pk_containsObjectPassingTest:&__block_literal_global_140_0];

        v5 += v9;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_totalPendingCredentialShares
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(PKSharedPassSharesController *)self shares];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 credentialShares];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if (([*(*(&v15 + 1) + 8 * j) status] & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                ++v5;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_immobilizerTokenCountWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
    v6 = [v5 subcredentials];
    v7 = [v6 anyObject];

    if (v7)
    {
      v8 = objc_alloc_init(PKDAManager);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __69__PKSharedPassSharesController__immobilizerTokenCountWithCompletion___block_invoke;
      v9[3] = &unk_1E79E17A0;
      v10 = v4;
      [(PKDAManager *)v8 immobilizerTokensCountForCredential:v7 completion:v9];
    }

    else
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

- (BOOL)hasRevokableShares
{
  v2 = [(PKSharedPassSharesController *)self revocableShares];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)revokeShare:(id)a3 shouldCascade:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(PKPaymentWebService *)self->_webService targetDevice];
  objc_initWeak(&location, self);
  v11 = [(PKObject *)self->_pass uniqueID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKSharedPassSharesController_revokeShare_shouldCascade_withCompletion___block_invoke;
  v13[3] = &unk_1E79E1868;
  objc_copyWeak(&v15, &location);
  v12 = v9;
  v14 = v12;
  [v10 revokeShareForPassIdentifier:v11 share:v8 shouldCascade:v6 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __73__PKSharedPassSharesController_revokeShare_shouldCascade_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateSharesWithCompletion:0];
    if (*(a1 + 32))
    {
      v7 = v6[4];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__PKSharedPassSharesController_revokeShare_shouldCascade_withCompletion___block_invoke_2;
      v8[3] = &unk_1E79C4A40;
      v9 = v4;
      v10 = *(a1 + 32);
      dispatch_async(v7, v8);
    }
  }
}

void __73__PKSharedPassSharesController_revokeShare_shouldCascade_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr.isa, 0);
    v3 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr_0.isa, 0);
    v5 = PKDisplayableErrorCustomWithType(-1, v2, v3, 0, 0);

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)revokeAllSharesWithCompletion:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a3;
  val = self;
  v16 = [(PKObject *)self->_pass uniqueID];
  v4 = PKLogFacilityTypeGetObject(0x1CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Revoking all shares for pass %@", &buf, 0xCu);
  }

  v17 = [(PKPaymentWebService *)self->_webService targetDevice];
  v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__78;
  v42 = __Block_byref_object_dispose__78;
  v43 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke;
  v37[3] = &unk_1E79D5CF0;
  v37[4] = self;
  [(PKAsyncUnaryOperationComposer *)v5 addOperation:v37];
  if (objc_opt_respondsToSelector())
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_3;
    v32[3] = &unk_1E79CC040;
    v33 = v17;
    v34 = v16;
    v35 = self;
    p_buf = &buf;
    [(PKAsyncUnaryOperationComposer *)v5 addOperation:v32];

    v6 = v33;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [(PKSharedPassSharesController *)self revocableShares];
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_5;
          v23[3] = &unk_1E79CC040;
          v24 = v17;
          v25 = v16;
          v26 = v10;
          v27 = &buf;
          [(PKAsyncUnaryOperationComposer *)v5 addOperation:v23];
        }

        v7 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v7);
    }
  }

  objc_initWeak(&location, val);
  v11 = [MEMORY[0x1E695DFB0] null];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_7;
  v18[3] = &unk_1E79E17F0;
  v18[4] = val;
  objc_copyWeak(&v21, &location);
  v20 = &buf;
  v12 = v14;
  v19 = v12;
  v13 = [(PKAsyncUnaryOperationComposer *)v5 evaluateWithInput:v11 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_2;
  block[3] = &unk_1E79CB3F8;
  v13 = v6;
  v14 = v7;
  block[4] = v8;
  v10 = v6;
  v11 = v7;
  dispatch_async(v9, block);
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) revocableShares];
  v11 = [*(*(a1 + 48) + 72) isCarKeyPass];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_4;
  v15[3] = &unk_1E79D7780;
  v12 = *(a1 + 56);
  v17 = v7;
  v18 = v12;
  v16 = v6;
  v13 = v6;
  v14 = v7;
  [v8 revokeSharesForPassIdentifier:v9 shares:v10 shouldCascade:v11 ^ 1u completion:v15];
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  objc_storeStrong(v6, v9);
  v10 = a3;
  (*(*(a1 + 40) + 16))();
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_5(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_6;
  v14[3] = &unk_1E79D7780;
  v11 = a1[6];
  v10 = a1[7];
  v16 = v7;
  v17 = v10;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v8 revokeShareForPassIdentifier:v9 share:v11 shouldCascade:1 completion:v14];
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  objc_storeStrong(v6, v9);
  v10 = a3;
  (*(*(a1 + 40) + 16))();
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_8;
  block[3] = &unk_1E79E17C8;
  objc_copyWeak(&v7, (a1 + 56));
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);

  objc_destroyWeak(&v7);
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 43) = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_9;
    v6[3] = &unk_1E79C8870;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    [v3 updateSharesWithCompletion:v6];
  }
}

void __62__PKSharedPassSharesController_revokeAllSharesWithCompletion___block_invoke_9(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr.isa, 0);
    v3 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr_0.isa, 0);
    v5 = PKDisplayableErrorCustomWithType(-1, v2, v3, 0, 0);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)createShareWithPartialShare:(id)a3 authorization:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKPaymentWebService *)self->_webService targetDevice];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKSharedPassSharesController_createShareWithPartialShare_authorization_completion___block_invoke;
  v13[3] = &unk_1E79E1840;
  objc_copyWeak(&v15, &location);
  v12 = v10;
  v13[4] = self;
  v14 = v12;
  [v11 createShareForPartialShareInvitation:v8 authorization:v9 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __85__PKSharedPassSharesController_createShareWithPartialShare_authorization_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained updateSharesWithCompletion:0];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PKSharedPassSharesController_createShareWithPartialShare_authorization_completion___block_invoke_2;
    v11[3] = &unk_1E79E1818;
    objc_copyWeak(&v15, (a1 + 48));
    v14 = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    [v8 updateSharesWithCompletion:v11];

    objc_destroyWeak(&v15);
  }
}

void __85__PKSharedPassSharesController_createShareWithPartialShare_authorization_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v5 = WeakRetained;
    v4 = [*(a1 + 32) url];
    (*(v3 + 16))(v3, v4, *(*(a1 + 40) + 104), 0);

    WeakRetained = v5;
  }
}

- (void)updateShare:(id)a3 authorization:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKPaymentWebService *)self->_webService targetDevice];
  objc_initWeak(&location, self);
  v12 = [(PKObject *)self->_pass uniqueID];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKSharedPassSharesController_updateShare_authorization_completion___block_invoke;
  v14[3] = &unk_1E79E1868;
  v13 = v10;
  v15 = v13;
  objc_copyWeak(&v16, &location);
  [v11 updateShareForPassIdentifier:v12 share:v8 authorization:v9 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __69__PKSharedPassSharesController_updateShare_authorization_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateSharesWithCompletion:0];
}

- (unint64_t)maxEntitlementSelectionCount
{
  if ([(PKSecureElementPass *)self->_pass isCarKeyPass])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __49__PKSharedPassSharesController_canAllowResharing__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entitlement];
  v3 = [v2 shareability];

  v4 = [v3 pk_containsObjectPassingTest:&__block_literal_global_161_1];
  return v4;
}

- (BOOL)isCrossPlatformSharingEnabled
{
  if (![(PKSecureElementPass *)self->_pass isCarKeyPass])
  {
    return 1;
  }

  v3 = [(PKSharedPassSharesController *)self _feature];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 enabled];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_baseNewShareForPassIsTransfer:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(PKPassShare);
  v6 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v7 = [v6 UUIDString];
  [(PKPassShare *)v5 setIdentifier:v7];

  [(PKPassShare *)v5 setStatus:3];
  if ([(PKSecureElementPass *)self->_pass isCarKeyPass])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(PKPassShare *)v5 setManageability:v8];
  v9 = [PKPassEntitlementsComposer alloc];
  v10 = v9;
  if (v3)
  {
    v11 = [(PKPassEntitlementsComposer *)v9 initWithMyEntitlements:self->_myEntitlements];
  }

  else
  {
    if ([(PKSharedPassSharesController *)self sharingFeatureEnabled])
    {
      shareableEntitlements = self->_shareableEntitlements;
    }

    else
    {
      shareableEntitlements = MEMORY[0x1E695E0F0];
    }

    v13 = [(PKSharedPassSharesController *)self possiblePredefinedEntitlements];
    v11 = [(PKPassEntitlementsComposer *)v10 initWithSharedEntitlements:MEMORY[0x1E695E0F0] availableEntitlements:shareableEntitlements predefinedSharedEntitlements:v13 editable:1];

    v14 = [(PKPassEntitlementsComposer *)v11 predefinedEntitlementEntries];
    if ([v14 count])
    {
      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [(PKPassEntitlementsComposer *)v11 viewForPredefined:v15];

      [v16 setEnabled:1];
    }

    else
    {
      v16 = [(PKPassEntitlementsComposer *)v11 entitlementEntries];
      v17 = fmin([v16 count], -[PKSharedPassSharesController maxEntitlementSelectionCount](self, "maxEntitlementSelectionCount"));
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          v19 = [v16 objectAtIndexedSubscript:i];
          v20 = [(PKPassEntitlementsComposer *)v11 viewFor:v19];

          [v20 setEnabled:1];
        }
      }
    }
  }

  v21 = [(PKPassEntitlementsComposer *)v11 composeSharedEntitlements];
  [(PKPassShare *)v5 setSharedEntitlements:v21];

  return v5;
}

- (id)baseShareForPassTransferWithIsForCompanion:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKSharedPassSharesController *)self _baseNewShareForPassIsTransfer:1];
  v6 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
  v7 = [v6 subcredentials];
  v8 = [v7 anyObject];
  v9 = [v8 sharingFriendlyName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v14 = [v13 UUIDString];
    v11 = [v12 initWithFormat:@"Transfer-%@", v14];
  }

  [v5 setRecipientNickname:v11];
  if ([(PKSecureElementPass *)self->_pass isCarKeyPass])
  {
    v15 = objc_alloc_init(PKPassCredentialShare);
    [(PKPassCredentialShare *)v15 setStatus:2];
    if (v3)
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    [(PKPassCredentialShare *)v15 setTargetDevice:v16];
    [v5 addCredentialShare:v15];
  }

  return v5;
}

- (id)possiblePredefinedEntitlements
{
  v44[1] = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  if (pass && ![(PKSecureElementPass *)pass isCarKeyPass])
  {
    v35 = 0;
  }

  else
  {
    v3 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:0 role:@"889f"];
    v4 = [PKPredefinedSharedEntitlementSelection alloc];
    v5 = PKLocalizedCredentialString(&cfstr_PredefinedShar.isa, 0);
    v6 = PKLocalizedCredentialString(&cfstr_PredefinedExis.isa, 0);
    v44[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v38 = [(PKPredefinedSharedEntitlementSelection *)v4 initWithTitle:v5 preshareDescription:0 postshareDescription:v6 sharedEntitlements:v7];

    v8 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:0 role:@"089f"];
    v9 = [PKPredefinedSharedEntitlementSelection alloc];
    v10 = PKLocalizedCredentialString(&cfstr_PredefinedShar_0.isa, 0);
    v11 = PKLocalizedCredentialString(&cfstr_PredefinedShar_1.isa, 0);
    v12 = PKLocalizedCredentialString(&cfstr_PredefinedExis_0.isa, 0);
    v43 = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v37 = [(PKPredefinedSharedEntitlementSelection *)v9 initWithTitle:v10 preshareDescription:v11 postshareDescription:v12 sharedEntitlements:v13];

    v14 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:0 role:@"000A"];
    v15 = [PKPredefinedSharedEntitlementSelection alloc];
    v16 = PKLocalizedCredentialString(&cfstr_PredefinedShar_2.isa, 0);
    v17 = PKLocalizedCredentialString(&cfstr_PredefinedShar_3.isa, 0);
    v18 = PKLocalizedCredentialString(&cfstr_PredefinedExis_1.isa, 0);
    v42 = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v20 = [(PKPredefinedSharedEntitlementSelection *)v15 initWithTitle:v16 preshareDescription:v17 postshareDescription:v18 sharedEntitlements:v19];

    v21 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:0 role:@"0008"];
    v22 = [PKPredefinedSharedEntitlementSelection alloc];
    v23 = PKLocalizedCredentialString(&cfstr_PredefinedShar_4.isa, 0);
    v24 = PKLocalizedCredentialString(&cfstr_PredefinedShar_5.isa, 0);
    v25 = PKLocalizedCredentialString(&cfstr_PredefinedExis_2.isa, 0);
    v41 = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v27 = [(PKPredefinedSharedEntitlementSelection *)v22 initWithTitle:v23 preshareDescription:v24 postshareDescription:v25 sharedEntitlements:v26];

    v28 = [[PKPassSharedEntitlement alloc] initWithCarKeyEntitlementValue:2 role:@"0008"];
    v29 = [PKPredefinedSharedEntitlementSelection alloc];
    v30 = PKLocalizedCredentialString(&cfstr_PredefinedShar_6.isa, 0);
    v31 = PKLocalizedCredentialString(&cfstr_PredefinedShar_7.isa, 0);
    v32 = PKLocalizedCredentialString(&cfstr_PredefinedExis_3.isa, 0);
    v40 = v28;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    v34 = [(PKPredefinedSharedEntitlementSelection *)v29 initWithTitle:v30 preshareDescription:v31 postshareDescription:v32 sharedEntitlements:v33];

    v39[0] = v38;
    v39[1] = v37;
    v39[2] = v20;
    v39[3] = v27;
    v39[4] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];
  }

  return v35;
}

- (void)addDefaultShareActivationOptionsToShare:(id)a3 availableOptions:(id *)a4 allowUserEdit:(BOOL *)a5 channelBundleIdentifier:(id)a6 isRecipientKnownContact:(BOOL)a7
{
  v7 = a7;
  v15 = a3;
  v12 = [(PKSharedPassSharesController *)self shareInitiationActivationConfigurationForChannelBundleIdentifier:a6 isRecipientKnownContact:v7];
  v13 = v12;
  if (a5)
  {
    *a5 = [v12 allowUserEdit];
  }

  if (a4)
  {
    *a4 = [v13 availableOptions];
  }

  v14 = [v13 defaultOptions];
  if (v14)
  {
    [v15 setActivationOptions:v14];
  }
}

- (id)shareInitiationActivationConfigurationForChannelBundleIdentifier:(id)a3 isRecipientKnownContact:(BOOL)a4
{
  v4 = a4;
  v95[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 == @"com.apple.UIKit.activity.Message")
  {
    goto LABEL_110;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = [(__CFString *)v6 isEqualToString:@"com.apple.UIKit.activity.Message"];

  if (v8)
  {
LABEL_110:
    if (PKSharingUseIMessageExtension())
    {
      goto LABEL_12;
    }
  }

  v9 = v7;
  if (v9 == @"com.apple.UIKit.activity.AirDrop")
  {
LABEL_12:
    if (v4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(__CFString *)v9 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if (v4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_15:
    v13 = 1;
    goto LABEL_18;
  }

LABEL_16:

LABEL_17:
  v13 = 0;
  v12 = 1;
LABEL_18:
  v81 = v7;
  v14 = [(PKSharedPassSharesController *)self _sharingActivationConfigurationForChannel:v7 channelRisk:v12];
  v15 = v14;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  if (v13 && v14)
  {
    v16 = [v14 trustLevel] == 1;
  }

  v17 = [v15 defaultState];
  v77 = v4;
  if (v15 && v17)
  {
    v18 = v17 == 1;
  }

  else
  {
    v18 = !v16 || !v4;
  }

  v19 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
  v20 = [v19 subcredentials];
  v21 = [v20 anyObject];
  v22 = [v21 sharingConfiguration];

  v23 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v85 = v22;
    _os_log_debug_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEBUG, "ShareInitiation: creating share with subcredentialSharingConfig: %@", buf, 0xCu);
  }

  v24 = [(__CFString *)v22 sharingPasswordLength];
  if (v24)
  {
    if (v24 <= 6)
    {
      v25 = 6;
    }

    else
    {
      v25 = v24;
    }
  }

  else if ([v15 codeLength] >= 6)
  {
    v25 = [v15 codeLength];
  }

  else
  {
    v25 = 6;
  }

  v26 = 0x1E696A000;
  v80 = v22;
  if (![(PKSecureElementPass *)self->_pass isCarKeyPass])
  {
    v27 = 0;
    goto LABEL_80;
  }

  v78 = v18;
  v27 = [(__CFString *)v22 activationOptions];
  v28 = PKSharingCarKeyActivationOptionForceVEP();
  v29 = PKSharingCarKeyActivationOptionForcePhysicalKey();
  if (v16)
  {
    v30 = 0;
  }

  else
  {
    v30 = PKSharingCarKeyActivationOptionForceOSP();
  }

  v31 = PKSharingCarKeyActivationOptionForcePinCode();
  v32 = v31;
  v33 = 0;
  if (((v28 | v29 | v30) & 1) != 0 && (v31 & 1) == 0)
  {
    if (v29)
    {
      v82 = v27;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Warning: Forcing physical key activation option due to debug toggle", buf, 2u);
      }

      v34 = [[PKPassShareActivationOption alloc] initWithCarKeyIdentifier:@"ownerKeyActivation"];
      v95[0] = v34;
      v35 = [[PKPassShareActivationOption alloc] initWithCarKeyIdentifier:@"keyFobActivation"];
      v95[1] = v35;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];

      v27 = v82;
      if (!v28)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v33 = 0;
      if (!v28)
      {
LABEL_56:
        if (v30)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Warning: Forcing Online Sharing Pin activation option due to debug toggle", buf, 2u);
          }

          v38 = [v27 optionOfType:4];
          v39 = v38;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = [[PKPassShareActivationOption alloc] initWithCarKeyIdentifier:@"onlineSharingPinActivation"];
          }

          v41 = v40;

          if (v33)
          {
            v42 = [v33 arrayByAddingObject:v41];

            v33 = v42;
          }

          else
          {
            v93 = v41;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
          }
        }

        goto LABEL_66;
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Warning: Forcing VEP activation option due to debug toggle", buf, 2u);
    }

    v36 = +[PKPassShareActivationOption vehicleEnteredPin];
    [v36 setValue:@"112233"];
    if (v33)
    {
      v37 = [v33 arrayByAddingObject:v36];

      v33 = v37;
    }

    else
    {
      v94 = v36;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
    }

    goto LABEL_56;
  }

LABEL_66:
  if (v33)
  {
    v43 = 1;
  }

  else
  {
    v43 = v27 == 0;
  }

  v44 = v43;
  v45 = v44 | v16 | v32;
  if (v43)
  {
    v46 = v33;
  }

  else
  {
    v46 = 0;
  }

  if ((v45 & 1) == 0)
  {
    v47 = PKPassShareActivationOptionExternallyManagedTypes();
    v46 = [v27 optionsOfTypes:v47];
  }

  v18 = v78;
  if (v46)
  {
    v83 = v27;
    v79 = 0;
    v18 = 1;
    goto LABEL_88;
  }

  v26 = 0x1E696A000uLL;
LABEL_80:
  v83 = v27;
  v48 = [v27 optionOfType:1];
  if (!v48)
  {
    v48 = [[PKPassShareActivationOption alloc] initWithDefaultIdentifierForType:1];
  }

  v49 = *(v26 + 3480);
  v50 = 10;
  if (v25 < 10)
  {
    v50 = v25;
  }

  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  v52 = __exp10((v51 - 1));
  v53 = __exp10(v51);
  v54 = [v49 numberWithInteger:arc4random_uniform((v53 + -1.0) - v52 + 1) + v52];
  v55 = [v54 stringValue];
  [(PKPassShareActivationOption *)v48 setValue:v55];

  [(PKPassShareActivationOption *)v48 setValueLength:v25];
  v92 = v48;
  v79 = 1;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];

LABEL_88:
  v56 = [[PKPassShareActivationOptions alloc] initWithOptions:v46];
  if (v15)
  {
    v57 = [v15 trustLevel] == 3;
  }

  else
  {
    v57 = 0;
  }

  v58 = [(PKPassShareActivationOptions *)v56 optionOfType:4];
  v59 = [(PKPassShareActivationOptions *)v56 optionOfType:2];
  if (v58)
  {
    [v58 setValueLength:v25];
    v60 = [v58 value];
    v61 = v60 | v59;

    if (!v61)
    {
      v76 = MEMORY[0x1E696AD98];
      v62 = 10;
      if (v25 < 10)
      {
        v62 = v25;
      }

      if (v62 <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = v62;
      }

      v64 = v18;
      v65 = v15;
      v66 = v23;
      v67 = __exp10((v63 - 1));
      v68 = __exp10(v63);
      v69 = arc4random_uniform((v68 + -1.0) - v67 + 1) + v67;
      v23 = v66;
      v15 = v65;
      v18 = v64;
      v70 = [v76 numberWithInteger:v69];
      v71 = [v70 stringValue];
      [v58 setValue:v71];
    }
  }

  v72 = objc_alloc_init(PKPassShareInitiationActivationConfiguration);
  v73 = v72;
  if (v18)
  {
    [(PKPassShareInitiationActivationConfiguration *)v72 setDefaultOptions:v56];
  }

  [(PKPassShareInitiationActivationConfiguration *)v73 setAvailableOptions:v56, v76];
  [(PKPassShareInitiationActivationConfiguration *)v73 setAllowUserEdit:v79];
  [(PKPassShareInitiationActivationConfiguration *)v73 setIsBlocked:v57];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v74 = @"No";
    *buf = 138413058;
    v85 = v81;
    v86 = 2112;
    if (v77)
    {
      v74 = @"Yes";
    }

    v87 = v74;
    v88 = 2112;
    v89 = v73;
    v90 = 2112;
    v91 = v15;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Determined activation options for channel: '%@' known recipient: '%@'. \n\nConfiguration: %@ \n\nFeature: %@", buf, 0x2Au);
  }

  return v73;
}

- (void)prewarmCreateShare
{
  v4 = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PKObject *)self->_pass uniqueID];
    [v4 prewarmCreateShareForPassIdentifier:v3 completion:0];
  }
}

- (int64_t)_randomCodeOfLength:(int64_t)a3
{
  v4 = __exp10((a3 - 1));
  v5 = __exp10(a3);
  return arc4random_uniform((v5 + -1.0) - v4 + 1) + v4;
}

- (id)blockedSharingChannels
{
  v2 = [(PKSharedPassSharesController *)self _sharingActivationConfigurationForChannel:0 channelRisk:0];
  v3 = [v2 blockedSharingChannels];

  return v3;
}

- (id)allowedSharingChannels
{
  v2 = [(PKSharedPassSharesController *)self _sharingActivationConfigurationForChannel:0 channelRisk:0];
  v3 = [v2 allowedSharingChannels];

  return v3;
}

- (BOOL)isSharingChannelBlockedForChannel:(id)a3 isRecipientKnownContact:(BOOL)a4
{
  v4 = [(PKSharedPassSharesController *)self shareInitiationActivationConfigurationForChannelBundleIdentifier:a3 isRecipientKnownContact:a4];
  v5 = [v4 isBlocked];

  return v5;
}

- (id)_feature
{
  v3 = [(PKPaymentWebService *)self->_webService context];
  v4 = [(PKPass *)self->_pass passTypeIdentifier];
  v5 = [v3 regionForIdentifier:v4];

  v6 = [v5 regionCode];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PKPaymentWebService *)self->_webService targetDevice];
    v8 = [v9 deviceRegion];
  }

  v10 = [v3 configuration];
  v11 = [v10 featureWithType:5 inRegion:v8];

  return v11;
}

- (id)_sharingActivationConfigurationForChannel:(id)a3 channelRisk:(int64_t)a4
{
  v6 = a3;
  v21 = [(PKSharedPassSharesController *)self _feature];
  v7 = [v21 activationCodeConfigurations];
  v8 = [(PKSecureElementPass *)self->_pass accessType];
  v9 = PKDeviceClass();
  v10 = +[PKOSVersionRequirement fromDeviceVersion];
  v11 = [(PKSecureElementPass *)self->_pass devicePrimaryPaymentApplication];
  v12 = [v11 subcredentials];
  v13 = [v12 anyObject];
  v14 = [v13 manufacturerIdentifier];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__PKSharedPassSharesController__sharingActivationConfigurationForChannel_channelRisk___block_invoke;
  v22[3] = &unk_1E79E18D0;
  v27 = a4;
  v28 = v8;
  v23 = v6;
  v24 = v10;
  v25 = v9;
  v26 = v14;
  v15 = v14;
  v16 = v9;
  v17 = v10;
  v18 = v6;
  v19 = [v7 pk_firstObjectPassingTest:v22];

  return v19;
}

uint64_t __86__PKSharedPassSharesController__sharingActivationConfigurationForChannel_channelRisk___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channelBundleIdentifier];
  if (!v4 || ((v5 = *(a1 + 32)) != 0 ? (v6 = v5 == v4) : (v6 = 1), v6 || ![v5 caseInsensitiveCompare:v4]))
  {
    v7 = [v3 channelRiskLevel];
    if (!v7 || *(a1 + 64) == v7)
    {
      v8 = [v3 accessPassType];
      if (!v8 || *(a1 + 72) == v8)
      {
        v9 = [v3 versionRange];
        v10 = v9;
        if (v9 && ![v9 versionMeetsRequirements:*(a1 + 40) deviceClass:*(a1 + 48)])
        {
          v12 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [v3 manufacturerIdentifier];
        if (v11)
        {
          v12 = *(a1 + 56);
          v13 = v11;
          v14 = v13;
          if (v12 == v13)
          {
          }

          else
          {
            if (!v12)
            {

              goto LABEL_22;
            }

            v15 = [v12 isEqualToString:v13];

            if (!v15)
            {
              v12 = 0;
LABEL_22:

              goto LABEL_23;
            }
          }
        }

        v12 = 1;
        goto LABEL_22;
      }
    }
  }

  v12 = 0;
LABEL_24:

  return v12;
}

+ (BOOL)_isPlatformSharingFeatureBlockedForPass:(id)a3 targetDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ![v5 isCarKeyPass])
  {
    v7 = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = [v6 isCarKeySharingBlockedForSecureElementPass:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self->_pass uniqueID];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6 == v4)
  {
LABEL_6:
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__PKSharedPassSharesController_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
    v8[3] = &unk_1E79DA5F8;
    v8[4] = self;
    objc_copyWeak(&v9, &location);
    [(PKSharedPassSharesController *)self updateSharesWithCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

LABEL_7:
}

void __83__PKSharedPassSharesController_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKSharedPassSharesController_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke_2;
  block[3] = &unk_1E79C9D80;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __83__PKSharedPassSharesController_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateShares];
}

@end