@interface SUUIExplicitRestrictionAlertController
- (SUUIExplicitRestrictionAlertController)initWithClientContext:(id)a3;
- (SUUIExplicitRestrictionAlertController)initWithClientContext:(id)a3 presentingViewController:(id)a4;
- (void)presentExplicitRestrictionAlertIfNeededOfType:(int64_t)a3 completionBlock:(id)a4;
@end

@implementation SUUIExplicitRestrictionAlertController

- (SUUIExplicitRestrictionAlertController)initWithClientContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIExplicitRestrictionAlertController;
  v6 = [(SUUIExplicitRestrictionAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (SUUIExplicitRestrictionAlertController)initWithClientContext:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIExplicitRestrictionAlertController;
  v9 = [(SUUIExplicitRestrictionAlertController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (void)presentExplicitRestrictionAlertIfNeededOfType:(int64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D69C38];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke;
  v9[3] = &unk_2798FCAB8;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 shouldDisplayExplicitRestrictionAlertOfType:a3 completionBlock:v9];
}

void __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if ([MEMORY[0x277D69C38] isActiveAccountAllowedToUpdateRestrictions])
    {
      v6 = MEMORY[0x277D69C38];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_4;
      v13[3] = &unk_2798FCAB8;
      v7 = a1[5];
      v8 = a1[4];
      v15 = a1[6];
      v13[4] = v8;
      v14 = v7;
      [v6 isRestrictionsPasscodeSet:v13];
      v9 = v14;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_2;
      block[3] = &unk_2798FC178;
      v12 = a1[5];
      v11 = a1[6];
      block[4] = a1[4];
      v18 = v11;
      v17 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v9 = v17;
    }
  }

  else
  {
    v10 = a1[5];
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0);
    }
  }
}

void __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v3 = [v2 localizedStringForKey:@"EXPLICIT_CONTENT_DISABLED_ALERT_MESSAGE" inTable:@"ExplicitByDefault"];
    v4 = *(a1[4] + 8);
    if (v4)
    {
      [v4 localizedStringForKey:@"OK_BUTTON" inTable:@"ExplicitByDefault"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"OK_BUTTON" inBundles:0 inTable:@"ExplicitByDefault"];
    }
    v7 = ;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:@"EXPLICIT_CONTENT_DISABLED_ALERT_MESSAGE" value:&stru_286AECDE0 table:@"ExplicitByDefault"];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK_BUTTON" value:&stru_286AECDE0 table:@"ExplicitByDefault"];
  }

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v3 preferredStyle:1];
  v9 = [MEMORY[0x277D750F8] actionWithTitle:v7 style:0 handler:0];
  [v8 addAction:v9];
  [v8 setPreferredAction:v9];
  v10 = *(a1[4] + 16);
  if (v10)
  {
    v11 = v10;
LABEL_9:
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_3;
    v16[3] = &unk_2798FCA48;
    v12 = a1[5];
    v18 = a1[6];
    v17 = v12;
    [v11 presentViewController:v8 animated:1 completion:v16];

    goto LABEL_10;
  }

  v13 = *(a1[4] + 8);
  if (v13)
  {
    v14 = [v13 _applicationController];
    v11 = [v14 rootViewController];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  v15 = a1[5];
  if (v15)
  {
    (*(v15 + 16))(v15, 0, 0);
  }

LABEL_10:
}

uint64_t __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_3(uint64_t a1)
{
  [MEMORY[0x277D69C38] didDisplayExplicitRestrictionAlertOfType:*(a1 + 40)];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_4(void *a1, char a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_5;
  v5[3] = &unk_2798FCA90;
  v3 = a1[5];
  v2 = a1[6];
  v8 = a2;
  v4 = a1[4];
  v7 = v2;
  v5[4] = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_5(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 48);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *(a1 + 56) == 0;
      if (*(a1 + 56))
      {
        v2 = @"ON_PURCHASE_PASSCODE_SET_ALERT_MESSAGE";
      }

      else
      {
        v2 = @"ON_PURCHASE_ALERT_MESSAGE";
      }

      v6 = @"ON_PURCHASE_ALERT_TITLE";
      v7 = @"ON_PURCHASE_PASSCODE_SET_ALERT_TITLE";
      goto LABEL_26;
    }

    if (v3 == 4)
    {
      v5 = *(a1 + 56) == 0;
      if (*(a1 + 56))
      {
        v2 = @"ON_ADD_TO_LIBRARY_PASSCODE_SET_ALERT_MESSAGE";
      }

      else
      {
        v2 = @"ON_ADD_TO_LIBRARY_ALERT_MESSAGE";
      }

      v6 = @"ON_ADD_TO_LIBRARY_ALERT_TITLE";
      v7 = @"ON_ADD_TO_LIBRARY_PASSCODE_SET_ALERT_TITLE";
      goto LABEL_26;
    }

    v4 = 0;
    if (v3 == 5)
    {
      v5 = *(a1 + 56) == 0;
      if (*(a1 + 56))
      {
        v2 = @"ON_OPEN_PASSCODE_SET_ALERT_MESSAGE";
      }

      else
      {
        v2 = @"ON_OPEN_ALERT_MESSAGE";
      }

      v6 = @"ON_OPEN_ALERT_TITLE";
      v7 = @"ON_OPEN_PASSCODE_SET_ALERT_TITLE";
      goto LABEL_26;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = @"ON_CONTAINER_LOAD_ALERT_TITLE";
      v2 = @"ON_CONTAINER_LOAD_ALERT_MESSAGE";
    }

    else
    {
      v4 = 0;
      if (v3 == 2)
      {
        v5 = *(a1 + 56) == 0;
        if (*(a1 + 56))
        {
          v2 = @"ON_PLAY_PASSCODE_SET_ALERT_MESSAGE";
        }

        else
        {
          v2 = @"ON_PLAY_ALERT_MESSAGE";
        }

        v6 = @"ON_PLAY_ALERT_TITLE";
        v7 = @"ON_PLAY_PASSCODE_SET_ALERT_TITLE";
LABEL_26:
        if (v5)
        {
          v4 = v6;
        }

        else
        {
          v4 = v7;
        }
      }
    }
  }

  else
  {
    v4 = @"ON_LAUNCH_ALERT_TITLE";
    v2 = @"ON_LAUNCH_ALERT_MESSAGE";
  }

  if (*(a1 + 56))
  {
    v8 = @"RESTRICTIONS_BUTTON";
  }

  else
  {
    v8 = @"ALLOW_EXPLICIT_BUTTON";
  }

  v9 = *(*(a1 + 32) + 8);
  if (v9)
  {
    v10 = [v9 localizedStringForKey:v4 inTable:@"ExplicitByDefault"];
    v11 = *(*(a1 + 32) + 8);
    if (v11)
    {
      [v11 localizedStringForKey:v2 inTable:@"ExplicitByDefault"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:v2 inBundles:0 inTable:@"ExplicitByDefault"];
    }
    v14 = ;
    v19 = *(*(a1 + 32) + 8);
    if (v19)
    {
      [v19 localizedStringForKey:v8 inTable:@"ExplicitByDefault"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:v8 inBundles:0 inTable:@"ExplicitByDefault"];
    }
    v16 = ;
    v20 = *(*(a1 + 32) + 8);
    if (v20)
    {
      [v20 localizedStringForKey:@"NOT_NOW_BUTTON" inTable:@"ExplicitByDefault"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"NOT_NOW_BUTTON" inBundles:0 inTable:@"ExplicitByDefault"];
    }
    v18 = ;
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v12 localizedStringForKey:v4 value:&stru_286AECDE0 table:@"ExplicitByDefault"];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:v2 value:&stru_286AECDE0 table:@"ExplicitByDefault"];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v8 value:&stru_286AECDE0 table:@"ExplicitByDefault"];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"NOT_NOW_BUTTON" value:&stru_286AECDE0 table:@"ExplicitByDefault"];
  }

  v21 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v14 preferredStyle:1];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_6;
  v33[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
  v34 = *(a1 + 56);
  v22 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v33];
  [v21 addAction:v22];
  v23 = [MEMORY[0x277D750F8] actionWithTitle:v18 style:0 handler:0];
  [v21 addAction:v23];
  [v21 setPreferredAction:v23];
  v24 = *(*(a1 + 32) + 16);
  if (v24)
  {
    v25 = v24;
LABEL_46:
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_7;
    v30[3] = &unk_2798FCA48;
    v26 = *(a1 + 40);
    v32 = *(a1 + 48);
    v31 = v26;
    [v25 presentViewController:v21 animated:1 completion:v30];

    goto LABEL_47;
  }

  v27 = *(*(a1 + 32) + 8);
  if (v27)
  {
    v28 = [v27 _applicationController];
    v25 = [v28 rootViewController];

    if (v25)
    {
      goto LABEL_46;
    }
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    (*(v29 + 16))(v29, 0, 0);
  }

LABEL_47:
}

void __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = SUUIMobileCoreServicesFramework();
    v5 = [SUUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v2)];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=RESTRICTIONS"];
    [v5 openSensitiveURL:v3 withOptions:0];
  }

  else
  {
    v4 = MEMORY[0x277D69C38];

    [v4 setAllowExplicitContent];
  }
}

uint64_t __104__SUUIExplicitRestrictionAlertController_presentExplicitRestrictionAlertIfNeededOfType_completionBlock___block_invoke_7(uint64_t a1)
{
  [MEMORY[0x277D69C38] didDisplayExplicitRestrictionAlertOfType:*(a1 + 40)];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end