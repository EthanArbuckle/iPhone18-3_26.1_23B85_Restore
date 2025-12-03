@interface WFAlert
+ (WFAlert)alertWithError:(id)error confirmationHandler:(id)handler;
+ (WFAlert)alertWithPreferredStyle:(int64_t)style;
- (NSArray)buttons;
- (WFAlert)init;
- (WFAlertButton)escapeButton;
- (WFAlertPresenter)presenter;
- (void)addButton:(id)button;
- (void)addTextFieldWithConfigurationHandler:(id)handler;
- (void)dismissWithCompletionHandler:(id)handler;
- (void)setButtons:(id)buttons;
@end

@implementation WFAlert

- (WFAlertButton)escapeButton
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  buttons = [(WFAlert *)self buttons];
  v4 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 style] == 1)
        {
          firstObject = v8;
          goto LABEL_11;
        }
      }

      v5 = [buttons countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  buttons = [(WFAlert *)self buttons];
  firstObject = [buttons firstObject];
LABEL_11:
  v10 = firstObject;

  return v10;
}

- (WFAlertPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)dismissWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  presenter = [(WFAlert *)self presenter];

  if (presenter)
  {
    presenter2 = [(WFAlert *)self presenter];
    [presenter2 dismissAlert:self completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2]();
  }
}

- (void)addTextFieldWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  mutableTextFieldConfigurationHandlers = [(WFAlert *)self mutableTextFieldConfigurationHandlers];
  if (handlerCopy)
  {
    v5 = handlerCopy;
  }

  else
  {
    v5 = &__block_literal_global_14748;
  }

  v6 = _Block_copy(v5);

  [mutableTextFieldConfigurationHandlers addObject:v6];
}

- (NSArray)buttons
{
  mutableButtons = [(WFAlert *)self mutableButtons];
  v3 = [mutableButtons copy];

  return v3;
}

- (void)setButtons:(id)buttons
{
  v17 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [buttonsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(buttonsCopy);
        }

        [*(*(&v12 + 1) + 8 * v8++) setAlert:self];
      }

      while (v6 != v8);
      v6 = [buttonsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [buttonsCopy mutableCopy];
  [(WFAlert *)self setMutableButtons:v9];

  presenter = [(WFAlert *)self presenter];
  buttons = [(WFAlert *)self buttons];
  [presenter setButtons:buttons forAlert:self];
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  buttons = [(WFAlert *)self buttons];
  v5 = [buttons arrayByAddingObject:buttonCopy];

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

+ (WFAlert)alertWithPreferredStyle:(int64_t)style
{
  v4 = objc_opt_new();
  [v4 setPreferredStyle:style];

  return v4;
}

+ (WFAlert)alertWithError:(id)error confirmationHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = [self alertWithPreferredStyle:0];
  objc_setAssociatedObject(v8, sel_associatedError, errorCopy, 1);
  localizedFailureReason = [errorCopy localizedFailureReason];
  [v8 setTitle:localizedFailureReason];

  localizedDescription = [errorCopy localizedDescription];
  [v8 setMessage:localizedDescription];

  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  if (![localizedRecoveryOptions count])
  {

    goto LABEL_5;
  }

  userInfo = [errorCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"WFRecoveryAttempter"];
  if (!v13)
  {
    recoveryAttempter = [errorCopy recoveryAttempter];

    if (recoveryAttempter)
    {
      goto LABEL_7;
    }

LABEL_5:
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke_4;
    v30 = &unk_27834A5A8;
    v31 = handlerCopy;
    v14 = [WFAlertButton okButtonWithHandler:&v27];
    [v8 addButton:{v14, v27, v28, v29, v30}];

    v15 = v31;
    goto LABEL_8;
  }

LABEL_7:
  userInfo2 = [errorCopy userInfo];
  v18 = [userInfo2 objectForKey:@"WFDestructiveRecoveryOptionIndex"];

  userInfo3 = [errorCopy userInfo];
  v20 = [userInfo3 objectForKey:@"WFPreferredRecoveryOptionIndex"];

  userInfo4 = [errorCopy userInfo];
  v22 = [userInfo4 objectForKeyedSubscript:@"WFRecoveryAttempter"];

  localizedRecoveryOptions2 = [errorCopy localizedRecoveryOptions];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__WFAlert_Errors__alertWithError_confirmationHandler___block_invoke;
  v32[3] = &unk_27834A580;
  v33 = v18;
  v34 = v20;
  v35 = v8;
  v36 = v22;
  v37 = errorCopy;
  v24 = v22;
  v25 = v20;
  v15 = v18;
  [localizedRecoveryOptions2 enumerateObjectsUsingBlock:v32];

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