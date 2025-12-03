@interface FAAppleCardUtilities
- (PKAppleCardUtilities)appleCardUtilities;
- (int64_t)getAccountState:(int64_t)state;
- (unint64_t)getAccessLevel:(unint64_t)level;
- (void)appleCardAccessLevelForAltDSID:(id)d completion:(id)completion;
- (void)appleCardAccountStateWithCompletion:(id)completion;
- (void)appleCardIsSharedWithWithAltDSID:(id)d completion:(id)completion;
- (void)appleCardTransactionLimitForAltDSID:(id)d completion:(id)completion;
- (void)hasAppleCardWithCompletion:(id)completion;
- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)d completion:(id)completion;
- (void)presentAppleCardSharingDetailsForAltDSID:(id)d viewController:(id)controller completion:(id)completion;
- (void)presentAppleCardUserInvitationFlowWithViewController:(id)controller completion:(id)completion;
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

- (void)appleCardAccessLevelForAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__FAAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke;
  v10[3] = &unk_2782F3DC8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [appleCardUtilities appleCardAccessLevelForAltDSID:dCopy completion:v10];
}

uint64_t __66__FAAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) getAccessLevel:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)appleCardAccountStateWithCompletion:(id)completion
{
  completionCopy = completion;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__FAAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke;
  v7[3] = &unk_2782F3DF0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [appleCardUtilities appleCardAccountStateWithCompletion:v7];
}

uint64_t __60__FAAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) getAccountState:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)appleCardIsSharedWithWithAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  [appleCardUtilities appleCardIsSharedWithWithAltDSID:dCopy completion:completionCopy];
}

- (void)appleCardTransactionLimitForAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  [appleCardUtilities appleCardTransactionLimitForAltDSID:dCopy completion:completionCopy];
}

- (void)hasAppleCardWithCompletion:(id)completion
{
  completionCopy = completion;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  [appleCardUtilities hasAppleCardWithCompletion:completionCopy];
}

- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  [appleCardUtilities hasSentPendingAppleCardInvitationToUserWithAltDSID:dCopy completion:completionCopy];
}

- (void)presentAppleCardSharingDetailsForAltDSID:(id)d viewController:(id)controller completion:(id)completion
{
  dCopy = d;
  v25 = dCopy;
  controllerCopy = controller;
  v24 = controllerCopy;
  completionCopy = completion;
  v11 = NSSelectorFromString(&cfstr_Presentappleca.isa);
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__FAAppleCardUtilities_presentAppleCardSharingDetailsForAltDSID_viewController_completion___block_invoke;
    aBlock[3] = &unk_2782F3E18;
    v22 = completionCopy;
    v23 = _Block_copy(aBlock);
    v20 = 1;
    v14 = MEMORY[0x277CBEAE8];
    appleCardUtilities2 = [(FAAppleCardUtilities *)self appleCardUtilities];
    v16 = [appleCardUtilities2 methodSignatureForSelector:v11];
    v17 = [v14 invocationWithMethodSignature:v16];

    [v17 setSelector:v11];
    appleCardUtilities3 = [(FAAppleCardUtilities *)self appleCardUtilities];
    [v17 setTarget:appleCardUtilities3];

    [v17 setArgument:&v25 atIndex:2];
    [v17 setArgument:&v24 atIndex:3];
    [v17 setArgument:&v20 atIndex:4];
    [v17 setArgument:&v23 atIndex:5];
    [v17 invoke];
  }

  else
  {
    appleCardUtilities4 = [(FAAppleCardUtilities *)self appleCardUtilities];
    [appleCardUtilities4 presentAppleCardSharingDetailsForAltDSID:dCopy viewController:controllerCopy completion:completionCopy];
  }
}

- (void)presentAppleCardUserInvitationFlowWithViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  appleCardUtilities = [(FAAppleCardUtilities *)self appleCardUtilities];
  [appleCardUtilities presentAppleCardUserInvitationFlowWithViewController:controllerCopy completion:completionCopy];
}

- (unint64_t)getAccessLevel:(unint64_t)level
{
  if (level == 2)
  {
    return 2;
  }

  else
  {
    return level == 1;
  }
}

- (int64_t)getAccountState:(int64_t)state
{
  if ((state - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

@end