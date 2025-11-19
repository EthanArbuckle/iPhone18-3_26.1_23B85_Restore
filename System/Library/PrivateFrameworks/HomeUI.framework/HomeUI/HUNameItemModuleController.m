@interface HUNameItemModuleController
- (BOOL)supportsCustomIconEditing;
- (Class)cellClassForItem:(id)a3;
- (HUNameItemModuleController)initWithModule:(id)a3 host:(id)a4;
- (id)_builderName;
- (id)currentTextForTextField:(id)a3 item:(id)a4;
- (id)placeholderTextForTextField:(id)a3 item:(id)a4;
- (id)prepareForCommit;
- (void)_cleanupTextFieldSetBuilderName;
- (void)_setBuilderName:(id)a3;
- (void)cancelNameEdit;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)iconPicker:(id)a3 didPickIconDescriptor:(id)a4;
- (void)iconPickerDidCancel:(id)a3;
- (void)nameAndIconEditorCellDidTapIcon:(id)a3;
- (void)setShouldUseAccessoryName:(BOOL)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUNameItemModuleController

- (HUNameItemModuleController)initWithModule:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUNameItemModuleController;
  v8 = [(HUItemModuleController *)&v13 initWithModule:v6];
  v9 = v8;
  if (v8)
  {
    [(HUNameItemModuleController *)v8 setNameModule:v6];
    v10 = [v6 sourceItem];
    v11 = [v10 namingComponentForHomeKitObject];
    [(HUNameItemModuleController *)v9 setNamingComponent:v11];

    [(HUItemModuleController *)v9 setHost:v7];
    [(HUNameItemModuleController *)v9 setNameFieldHasClearButton:0];
    [(HUNameItemModuleController *)v9 setShowIcon:1];
    [(HUNameItemModuleController *)v9 setShouldUseAccessoryName:0];
  }

  return v9;
}

- (void)setShouldUseAccessoryName:(BOOL)a3
{
  if (a3)
  {
    v5 = [(HUNameItemModuleController *)self nameModule];
    v6 = [v5 sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(HUNameItemModuleController *)self nameModule];
      v9 = [v8 sourceItem];
      v10 = [v9 service];
      v11 = [v10 accessory];

      v12 = [MEMORY[0x277D14870] namingComponentFromAccessory:v11];
      [(HUNameItemModuleController *)self setNamingComponent:v12];
    }
  }

  self->_shouldUseAccessoryName = a3;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUNameItemModuleController *)self nameModule];
  v6 = [v5 nameAndIconItem];

  if (v6 == v4)
  {
    [(HUNameItemModuleController *)self showIcon];
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUNameItemModuleController;
  v5 = a4;
  v6 = a3;
  [(HUItemModuleController *)&v10 configureCell:v6 forItem:v5];
  v7 = [MEMORY[0x277D756E0] cellConfiguration];
  v8 = [v5 latestResults];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v7 setText:v9];

  [v6 setContentConfiguration:v7];
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v17 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = v17;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v6;
      if (v7)
      {
        goto LABEL_9;
      }

      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
    }

    v8 = 0;
LABEL_9:

    [v8 setDelegate:self];
    v11 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
    v12 = [v11 font];
    [v8 setTextFieldFont:v12];

    v13 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    v14 = [v8 iconButton];
    [v14 setSelected:v13];

    v15 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    v16 = [v8 iconButton];
    [v16 setUserInteractionEnabled:v15];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v14;
    v7 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    v8 = [v6 iconButton];
    [v8 setSelected:v7];

    v9 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    v10 = [v6 iconButton];
    [v10 setUserInteractionEnabled:v9];
LABEL_8:

    if ([(HUNameItemModuleController *)self nameFieldHasClearButton])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 textField];

    [v13 setClearButtonMode:v12];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v10 = v14;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v6 = v11;
    goto LABEL_8;
  }

LABEL_12:
}

- (BOOL)supportsCustomIconEditing
{
  v2 = [(HUNameItemModuleController *)self nameModule];
  v3 = [v2 sourceItemBuilder];
  if ([v3 conformsToProtocol:&unk_2825BD4E0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 home], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_currentUserIsRestrictedGuest"), v6, (v7 & 1) == 0))
  {
    v10 = [v5 availableIconDescriptors];
    v8 = [v10 count] > 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)placeholderTextForTextField:(id)a3 item:(id)a4
{
  v4 = [(HUNameItemModuleController *)self namingComponent:a3];
  v5 = [v4 placeholderText];

  return v5;
}

- (id)currentTextForTextField:(id)a3 item:(id)a4
{
  v4 = [(HUNameItemModuleController *)self namingComponent:a3];
  v5 = [v4 textFieldDisplayText];

  return v5;
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = [(HUNameItemModuleController *)self prepareForCommit];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HUNameItemModuleController_textFieldDidEndEditing_item___block_invoke;
  v9[3] = &unk_277DB7158;
  v10 = v5;
  v11 = self;
  v7 = v5;
  v8 = [v6 addCompletionBlock:v9];
}

void __58__HUNameItemModuleController_textFieldDidEndEditing_item___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _builderName];
  [*(a1 + 32) setText:v2];
}

- (void)cancelNameEdit
{
  v3 = [(HUNameItemModuleController *)self nameModule];
  v4 = [v3 nameAndIconItem];
  v5 = [(HUItemModuleController *)self textFieldForVisibleItem:v4];

  [v5 resignFirstResponder];
}

- (id)prepareForCommit
{
  [(HUNameItemModuleController *)self _cleanupTextFieldSetBuilderName];
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = [v3 homeManager];

  v5 = objc_opt_new();
  v6 = [(HUNameItemModuleController *)self nameModule];
  v7 = [v6 sourceItemBuilder];
  if ([v7 conformsToProtocol:&unk_2825BD4E0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(HUNameItemModuleController *)self _builderName];
  v11 = [(HUNameItemModuleController *)self nameModule];
  v12 = [v11 nameAndIconItem];
  v13 = [(HUItemModuleController *)self textFieldForVisibleItem:v12];

  if (v9)
  {
    if (v10)
    {
      v14 = [v13 text];
      v15 = [(HUNameItemModuleController *)self namingComponent];
      v16 = [v15 name];
      v17 = [v14 isEqualToString:v16];

      if (!v17)
      {
        v18 = [v9 home];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __46__HUNameItemModuleController_prepareForCommit__block_invoke;
        v22[3] = &unk_277DB71A8;
        v23 = v5;
        v24 = v10;
        [v4 checkName:v24 inHome:v18 withValidationOptions:5 completionHandler:v22];

        goto LABEL_10;
      }
    }
  }

  else
  {
    v19 = [(HUNameItemModuleController *)self nameModule];
    v20 = [v19 sourceItem];
    NSLog(&cfstr_BuilderForItem.isa, v20);
  }

  [v5 finishWithNoResult];
LABEL_10:

  return v5;
}

void __46__HUNameItemModuleController_prepareForCommit__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HUNameItemModuleController_prepareForCommit__block_invoke_2;
  v8[3] = &unk_277DB7180;
  v12 = a2;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __46__HUNameItemModuleController_prepareForCommit__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);

    return [v2 finishWithNoResult];
  }

  else
  {
    v4 = [MEMORY[0x277D14640] sharedHandler];
    v5 = *MEMORY[0x277D13C80];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = *MEMORY[0x277D13860];
    v10[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v4 handleError:v7 operationType:v5 options:v8 retryBlock:0 cancelBlock:0];

    return [*(a1 + 32) finishWithError:*(a1 + 40)];
  }
}

- (void)_cleanupTextFieldSetBuilderName
{
  v3 = [(HUNameItemModuleController *)self nameModule];
  v4 = [v3 nameAndIconItem];
  v8 = [(HUItemModuleController *)self textFieldForVisibleItem:v4];

  v5 = [(HUNameItemModuleController *)self namingComponent];
  v6 = [v8 text];
  v7 = [v5 homeKitSafeStringForString:v6];

  [v8 setText:v7];
  [(HUNameItemModuleController *)self _setBuilderName:v7];
}

- (void)_setBuilderName:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUNameItemModuleController *)self nameModule];
  v6 = [v5 sourceItemBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;

  if ([(HUNameItemModuleController *)self shouldUseAccessoryName]&& v12)
  {
    [v12 setAccessoryName:v4];
    [v12 setName:v4];
  }

  else
  {
    v8 = [(HUNameItemModuleController *)self nameModule];
    v9 = [v8 sourceItemBuilder];
    if ([v9 conformsToProtocol:&unk_2825BD4E0])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v11 setName:v4];
  }
}

- (id)_builderName
{
  objc_opt_class();
  v3 = [(HUNameItemModuleController *)self nameModule];
  v4 = [v3 sourceItemBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([(HUNameItemModuleController *)self shouldUseAccessoryName]&& v6)
  {
    v7 = [v6 accessoryName];
  }

  else
  {
    v8 = [(HUNameItemModuleController *)self nameModule];
    v9 = [v8 sourceItemBuilder];
    if ([v9 conformsToProtocol:&unk_2825BD4E0])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v7 = [v11 name];
  }

  return v7;
}

- (void)nameAndIconEditorCellDidTapIcon:(id)a3
{
  if ([(HUNameItemModuleController *)self supportsCustomIconEditing])
  {
    v4 = [(HUNameItemModuleController *)self nameModule];
    v5 = [v4 sourceItemBuilder];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      v7 = [(HUNameItemModuleController *)self nameModule];
      v8 = [v7 sourceItemBuilder];
      NSLog(&cfstr_ServiceLikeBui.isa, v8);
    }

    v9 = [(HUNameItemModuleController *)self nameModule];
    v10 = [v9 sourceItemBuilder];
    if ([v10 conformsToProtocol:&unk_2825BD4E0])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v19 = [v12 availableIconDescriptors];
    v13 = [v12 iconDescriptor];

    v14 = [[HUIconPickerViewController alloc] initWithIconDescriptors:v19 selectedIconDescriptor:v13 delegate:self];
    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
    [v15 setModalPresentationStyle:2];
    v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
    v17 = [(HUItemModuleController *)self host];
    v18 = [v17 moduleController:self presentViewControllerForRequest:v16];
  }
}

- (void)iconPickerDidCancel:(id)a3
{
  v6 = [HUViewControllerDismissalRequest requestWithViewController:a3];
  v4 = [(HUItemModuleController *)self host];
  v5 = [v4 moduleController:self dismissViewControllerForRequest:v6];
}

- (void)iconPicker:(id)a3 didPickIconDescriptor:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (![(HUNameItemModuleController *)self supportsCustomIconEditing])
  {
    NSLog(&cfstr_UpdatingIconsI.isa);
  }

  v9 = [(HUNameItemModuleController *)self nameModule];
  v10 = [v9 sourceItemBuilder];
  if ([v10 conformsToProtocol:&unk_2825BD4E0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setIconDescriptor:v7];
  v13 = [v12 commitItem];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HUNameItemModuleController_iconPicker_didPickIconDescriptor___block_invoke;
  v18[3] = &unk_277DB71D0;
  v18[4] = self;
  v18[5] = a2;
  v14 = [v13 addSuccessBlock:v18];

  v15 = [HUViewControllerDismissalRequest requestWithViewController:v8];

  v16 = [(HUItemModuleController *)self host];
  v17 = [v16 moduleController:self dismissViewControllerForRequest:v15];
}

void __63__HUNameItemModuleController_iconPicker_didPickIconDescriptor___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) nameModule];
  v3 = [v2 itemUpdater];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;

  if (v10)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [*(a1 + 32) nameModule];
    v7 = [v6 nameAndIconItem];
    v8 = [v5 setWithObject:v7];
    v9 = [v10 updateResultsForItems:v8 senderSelector:*(a1 + 40)];
  }

  else
  {
    v6 = [*(a1 + 32) nameModule];
    v7 = [v6 itemUpdater];
    NSLog(&cfstr_SomehowWeDonTH.isa, v7);
  }
}

@end