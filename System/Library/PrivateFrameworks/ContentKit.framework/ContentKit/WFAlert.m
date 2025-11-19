@interface WFAlert
+ (WFAlert)alertWithError:(id)a3 confirmationHandler:(id)a4;
+ (WFAlert)alertWithPreferredStyle:(int64_t)a3;
- (NSArray)buttons;
- (WFAlert)init;
- (WFAlertButton)escapeButton;
- (WFAlertPresenter)presenter;
- (void)addButton:(id)a3;
- (void)addTextFieldWithConfigurationHandler:(id)a3;
- (void)dismissWithCompletionHandler:(id)a3;
- (void)setButtons:(id)a3;
@end

@implementation WFAlert

- (WFAlertButton)escapeButton
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(WFAlert *)self buttons];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 style] == 1)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [(WFAlert *)self buttons];
  v9 = [v3 firstObject];
LABEL_11:
  v10 = v9;

  return v10;
}

- (WFAlertPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)dismissWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(WFAlert *)self presenter];

  if (v4)
  {
    v5 = [(WFAlert *)self presenter];
    [v5 dismissAlert:self completionHandler:v6];
  }

  else
  {
    v6[2]();
  }
}

- (void)addTextFieldWithConfigurationHandler:(id)a3
{
  v4 = a3;
  v7 = [(WFAlert *)self mutableTextFieldConfigurationHandlers];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__block_literal_global_14748;
  }

  v6 = _Block_copy(v5);

  [v7 addObject:v6];
}

- (NSArray)buttons
{
  v2 = [(WFAlert *)self mutableButtons];
  v3 = [v2 copy];

  return v3;
}

- (void)setButtons:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) setAlert:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v4 mutableCopy];
  [(WFAlert *)self setMutableButtons:v9];

  v10 = [(WFAlert *)self presenter];
  v11 = [(WFAlert *)self buttons];
  [v10 setButtons:v11 forAlert:self];
}

- (void)addButton:(id)a3
{
  v4 = a3;
  v6 = [(WFAlert *)self buttons];
  v5 = [v6 arrayByAddingObject:v4];

  [(WFAlert *)self setButtons:v5];
}

- (WFAlert)init
{
  v9.receiver = self;
  v9.super_class = WFAlert;
  v2 = [(WFAlert *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableButtons = v2->_mutableButtons;
    v2->_mutableButtons = v3;

    v5 = objc_opt_new();
    mutableTextFieldConfigurationHandlers = v2->_mutableTextFieldConfigurationHandlers;
    v2->_mutableTextFieldConfigurationHandlers = v5;

    v7 = v2;
  }

  return v2;
}

+ (WFAlert)alertWithPreferredStyle:(int64_t)a3
{
  v4 = objc_opt_new();
  [v4 setPreferredStyle:a3];

  return v4;
}

+ (WFAlert)alertWithError:(id)a3 confirmationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alertWithPreferredStyle:0];
  objc_setAssociatedObject(v8, sel_associatedError, v6, 1);
  v9 = [v6 localizedFailureReason];
  [v8 setTitle:v9];

  v10 = [v6 localizedDescription];
  [v8 setMessage:v10];

  v11 = [v6 localizedRecoveryOptions];
  if (![v11 count])
  {

    goto LABEL_5;
  }

  v12 = [v6 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"WFRecoveryAttempter"];
  if (!v13)
  {
    v16 = [v6 recoveryAttempter];

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_5:
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke_4;
    v30 = &unk_27834A5A8;
    v31 = v7;
    v14 = [WFAlertButton okButtonWithHandler:&v27];
    [v8 addButton:{v14, v27, v28, v29, v30}];

    v15 = v31;
    goto LABEL_8;
  }

LABEL_7:
  v17 = [v6 userInfo];
  v18 = [v17 objectForKey:@"WFDestructiveRecoveryOptionIndex"];

  v19 = [v6 userInfo];
  v20 = [v19 objectForKey:@"WFPreferredRecoveryOptionIndex"];

  v21 = [v6 userInfo];
  v22 = [v21 objectForKeyedSubscript:@"WFRecoveryAttempter"];

  v23 = [v6 localizedRecoveryOptions];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke;
  v32[3] = &unk_27834A580;
  v33 = v18;
  v34 = v20;
  v35 = v8;
  v36 = v22;
  v37 = v6;
  v24 = v22;
  v25 = v20;
  v15 = v18;
  [v23 enumerateObjectsUsingBlock:v32];

LABEL_8:

  return v8;
}

void __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a2;
  v8 = [v6 numberWithUnsignedInteger:a3];
  if ([v5 isEqualToNumber:v8])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v10 isEqualToNumber:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke_2;
  v15[3] = &unk_27834A558;
  v13 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = a3;
  v14 = [WFAlertButton buttonWithTitle:v7 style:v9 preferred:v12 handler:v15];

  [v13 addButton:v14];
}

uint64_t __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    v4 = a1[6];

    [v2 attemptRecoveryFromError:v3 optionIndex:v4 userInterface:0 completionHandler:&__block_literal_global_27189];
  }

  else
  {
    v5 = [a1[5] recoveryAttempter];
    [v5 attemptRecoveryFromError:a1[5] optionIndex:a1[6]];
  }
}

@end