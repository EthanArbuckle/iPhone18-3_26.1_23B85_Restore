@interface FAAppleCardUtilities
- (PKAppleCardUtilities)appleCardUtilities;
- (int64_t)getAccountState:(int64_t)a3;
- (unint64_t)getAccessLevel:(unint64_t)a3;
- (void)appleCardAccessLevelForAltDSID:(id)a3 completion:(id)a4;
- (void)appleCardAccountStateWithCompletion:(id)a3;
- (void)appleCardIsSharedWithWithAltDSID:(id)a3 completion:(id)a4;
- (void)appleCardTransactionLimitForAltDSID:(id)a3 completion:(id)a4;
- (void)hasAppleCardWithCompletion:(id)a3;
- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)a3 completion:(id)a4;
- (void)presentAppleCardSharingDetailsForAltDSID:(id)a3 viewController:(id)a4 completion:(id)a5;
- (void)presentAppleCardUserInvitationFlowWithViewController:(id)a3 completion:(id)a4;
@end

@implementation FAAppleCardUtilities

- (PKAppleCardUtilities)appleCardUtilities
{
  appleCardUtilities = self->_appleCardUtilities;
  if (!appleCardUtilities)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPKAppleCardUtilitiesClass_softClass;
    v13 = getPKAppleCardUtilitiesClass_softClass;
    if (!getPKAppleCardUtilitiesClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getPKAppleCardUtilitiesClass_block_invoke;
      v9[3] = &unk_2782F2988;
      v9[4] = &v10;
      __getPKAppleCardUtilitiesClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_appleCardUtilities;
    self->_appleCardUtilities = v6;

    appleCardUtilities = self->_appleCardUtilities;
  }

  return appleCardUtilities;
}

- (void)appleCardAccessLevelForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FAAppleCardUtilities *)self appleCardUtilities];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__FAAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke;
  v10[3] = &unk_2782F3DC8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 appleCardAccessLevelForAltDSID:v7 completion:v10];
}

uint64_t __66__FAAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) getAccessLevel:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)appleCardAccountStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FAAppleCardUtilities *)self appleCardUtilities];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__FAAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke;
  v7[3] = &unk_2782F3DF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 appleCardAccountStateWithCompletion:v7];
}

uint64_t __60__FAAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) getAccountState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)appleCardIsSharedWithWithAltDSID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FAAppleCardUtilities *)self appleCardUtilities];
  [v8 appleCardIsSharedWithWithAltDSID:v7 completion:v6];
}

- (void)appleCardTransactionLimitForAltDSID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FAAppleCardUtilities *)self appleCardUtilities];
  [v8 appleCardTransactionLimitForAltDSID:v7 completion:v6];
}

- (void)hasAppleCardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FAAppleCardUtilities *)self appleCardUtilities];
  [v5 hasAppleCardWithCompletion:v4];
}

- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FAAppleCardUtilities *)self appleCardUtilities];
  [v8 hasSentPendingAppleCardInvitationToUserWithAltDSID:v7 completion:v6];
}

- (void)presentAppleCardSharingDetailsForAltDSID:(id)a3 viewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v25 = v8;
  v9 = a4;
  v24 = v9;
  v10 = a5;
  v11 = NSSelectorFromString(&cfstr_Presentappleca.isa);
  v12 = [(FAAppleCardUtilities *)self appleCardUtilities];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__FAAppleCardUtilities_presentAppleCardSharingDetailsForAltDSID_viewController_completion___block_invoke;
    aBlock[3] = &unk_2782F3E18;
    v22 = v10;
    v23 = _Block_copy(aBlock);
    v20 = 1;
    v14 = MEMORY[0x277CBEAE8];
    v15 = [(FAAppleCardUtilities *)self appleCardUtilities];
    v16 = [v15 methodSignatureForSelector:v11];
    v17 = [v14 invocationWithMethodSignature:v16];

    [v17 setSelector:v11];
    v18 = [(FAAppleCardUtilities *)self appleCardUtilities];
    [v17 setTarget:v18];

    [v17 setArgument:&v25 atIndex:2];
    [v17 setArgument:&v24 atIndex:3];
    [v17 setArgument:&v20 atIndex:4];
    [v17 setArgument:&v23 atIndex:5];
    [v17 invoke];
  }

  else
  {
    v19 = [(FAAppleCardUtilities *)self appleCardUtilities];
    [v19 presentAppleCardSharingDetailsForAltDSID:v8 viewController:v9 completion:v10];
  }
}

- (void)presentAppleCardUserInvitationFlowWithViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FAAppleCardUtilities *)self appleCardUtilities];
  [v8 presentAppleCardUserInvitationFlowWithViewController:v7 completion:v6];
}

- (unint64_t)getAccessLevel:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (int64_t)getAccountState:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end