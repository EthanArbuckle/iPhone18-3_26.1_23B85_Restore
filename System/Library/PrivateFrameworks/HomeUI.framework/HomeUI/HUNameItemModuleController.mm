@interface HUNameItemModuleController
- (BOOL)supportsCustomIconEditing;
- (Class)cellClassForItem:(id)item;
- (HUNameItemModuleController)initWithModule:(id)module host:(id)host;
- (id)_builderName;
- (id)currentTextForTextField:(id)field item:(id)item;
- (id)placeholderTextForTextField:(id)field item:(id)item;
- (id)prepareForCommit;
- (void)_cleanupTextFieldSetBuilderName;
- (void)_setBuilderName:(id)name;
- (void)cancelNameEdit;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)iconPicker:(id)picker didPickIconDescriptor:(id)descriptor;
- (void)iconPickerDidCancel:(id)cancel;
- (void)nameAndIconEditorCellDidTapIcon:(id)icon;
- (void)setShouldUseAccessoryName:(BOOL)name;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUNameItemModuleController

- (HUNameItemModuleController)initWithModule:(id)module host:(id)host
{
  moduleCopy = module;
  hostCopy = host;
  v13.receiver = self;
  v13.super_class = HUNameItemModuleController;
  v8 = [(HUItemModuleController *)&v13 initWithModule:moduleCopy];
  v9 = v8;
  if (v8)
  {
    [(HUNameItemModuleController *)v8 setNameModule:moduleCopy];
    sourceItem = [moduleCopy sourceItem];
    namingComponentForHomeKitObject = [sourceItem namingComponentForHomeKitObject];
    [(HUNameItemModuleController *)v9 setNamingComponent:namingComponentForHomeKitObject];

    [(HUItemModuleController *)v9 setHost:hostCopy];
    [(HUNameItemModuleController *)v9 setNameFieldHasClearButton:0];
    [(HUNameItemModuleController *)v9 setShowIcon:1];
    [(HUNameItemModuleController *)v9 setShouldUseAccessoryName:0];
  }

  return v9;
}

- (void)setShouldUseAccessoryName:(BOOL)name
{
  if (name)
  {
    nameModule = [(HUNameItemModuleController *)self nameModule];
    sourceItem = [nameModule sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      nameModule2 = [(HUNameItemModuleController *)self nameModule];
      sourceItem2 = [nameModule2 sourceItem];
      service = [sourceItem2 service];
      accessory = [service accessory];

      v12 = [MEMORY[0x277D14870] namingComponentFromAccessory:accessory];
      [(HUNameItemModuleController *)self setNamingComponent:v12];
    }
  }

  self->_shouldUseAccessoryName = name;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  nameModule = [(HUNameItemModuleController *)self nameModule];
  nameAndIconItem = [nameModule nameAndIconItem];

  if (nameAndIconItem == itemCopy)
  {
    [(HUNameItemModuleController *)self showIcon];
  }

  v7 = objc_opt_class();

  return v7;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  v10.receiver = self;
  v10.super_class = HUNameItemModuleController;
  itemCopy = item;
  cellCopy = cell;
  [(HUItemModuleController *)&v10 configureCell:cellCopy forItem:itemCopy];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  latestResults = [itemCopy latestResults];

  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [cellConfiguration setText:v9];

  [cellCopy setContentConfiguration:cellConfiguration];
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
    }

    v8 = 0;
LABEL_9:

    [v8 setDelegate:self];
    v11 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
    font = [v11 font];
    [v8 setTextFieldFont:font];

    supportsCustomIconEditing = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    iconButton = [v8 iconButton];
    [iconButton setSelected:supportsCustomIconEditing];

    supportsCustomIconEditing2 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    iconButton2 = [v8 iconButton];
    [iconButton2 setUserInteractionEnabled:supportsCustomIconEditing2];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = cellCopy;
    supportsCustomIconEditing = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    iconButton = [v6 iconButton];
    [iconButton setSelected:supportsCustomIconEditing];

    supportsCustomIconEditing2 = [(HUNameItemModuleController *)self supportsCustomIconEditing];
    iconButton2 = [v6 iconButton];
    [iconButton2 setUserInteractionEnabled:supportsCustomIconEditing2];
LABEL_8:

    if ([(HUNameItemModuleController *)self nameFieldHasClearButton])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    textField = [v6 textField];

    [textField setClearButtonMode:v12];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    iconButton2 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = iconButton2;
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
  nameModule = [(HUNameItemModuleController *)self nameModule];
  sourceItemBuilder = [nameModule sourceItemBuilder];
  if ([sourceItemBuilder conformsToProtocol:&unk_2825BD4E0])
  {
    v4 = sourceItemBuilder;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 home], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_currentUserIsRestrictedGuest"), v6, (v7 & 1) == 0))
  {
    availableIconDescriptors = [v5 availableIconDescriptors];
    v8 = [availableIconDescriptors count] > 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)placeholderTextForTextField:(id)field item:(id)item
{
  v4 = [(HUNameItemModuleController *)self namingComponent:field];
  placeholderText = [v4 placeholderText];

  return placeholderText;
}

- (id)currentTextForTextField:(id)field item:(id)item
{
  v4 = [(HUNameItemModuleController *)self namingComponent:field];
  textFieldDisplayText = [v4 textFieldDisplayText];

  return textFieldDisplayText;
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  editingCopy = editing;
  prepareForCommit = [(HUNameItemModuleController *)self prepareForCommit];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HUNameItemModuleController_textFieldDidEndEditing_item___block_invoke;
  v9[3] = &unk_277DB7158;
  v10 = editingCopy;
  selfCopy = self;
  v7 = editingCopy;
  v8 = [prepareForCommit addCompletionBlock:v9];
}

void __58__HUNameItemModuleController_textFieldDidEndEditing_item___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _builderName];
  [*(a1 + 32) setText:v2];
}

- (void)cancelNameEdit
{
  nameModule = [(HUNameItemModuleController *)self nameModule];
  nameAndIconItem = [nameModule nameAndIconItem];
  v5 = [(HUItemModuleController *)self textFieldForVisibleItem:nameAndIconItem];

  [v5 resignFirstResponder];
}

- (id)prepareForCommit
{
  [(HUNameItemModuleController *)self _cleanupTextFieldSetBuilderName];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];

  v5 = objc_opt_new();
  nameModule = [(HUNameItemModuleController *)self nameModule];
  sourceItemBuilder = [nameModule sourceItemBuilder];
  if ([sourceItemBuilder conformsToProtocol:&unk_2825BD4E0])
  {
    v8 = sourceItemBuilder;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _builderName = [(HUNameItemModuleController *)self _builderName];
  nameModule2 = [(HUNameItemModuleController *)self nameModule];
  nameAndIconItem = [nameModule2 nameAndIconItem];
  v13 = [(HUItemModuleController *)self textFieldForVisibleItem:nameAndIconItem];

  if (v9)
  {
    if (_builderName)
    {
      text = [v13 text];
      namingComponent = [(HUNameItemModuleController *)self namingComponent];
      name = [namingComponent name];
      v17 = [text isEqualToString:name];

      if (!v17)
      {
        home = [v9 home];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __46__HUNameItemModuleController_prepareForCommit__block_invoke;
        v22[3] = &unk_277DB71A8;
        v23 = v5;
        v24 = _builderName;
        [homeManager checkName:v24 inHome:home withValidationOptions:5 completionHandler:v22];

        goto LABEL_10;
      }
    }
  }

  else
  {
    nameModule3 = [(HUNameItemModuleController *)self nameModule];
    sourceItem = [nameModule3 sourceItem];
    NSLog(&cfstr_BuilderForItem.isa, sourceItem);
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
  nameModule = [(HUNameItemModuleController *)self nameModule];
  nameAndIconItem = [nameModule nameAndIconItem];
  v8 = [(HUItemModuleController *)self textFieldForVisibleItem:nameAndIconItem];

  namingComponent = [(HUNameItemModuleController *)self namingComponent];
  text = [v8 text];
  v7 = [namingComponent homeKitSafeStringForString:text];

  [v8 setText:v7];
  [(HUNameItemModuleController *)self _setBuilderName:v7];
}

- (void)_setBuilderName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  nameModule = [(HUNameItemModuleController *)self nameModule];
  sourceItemBuilder = [nameModule sourceItemBuilder];
  if (objc_opt_isKindOfClass())
  {
    v7 = sourceItemBuilder;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;

  if ([(HUNameItemModuleController *)self shouldUseAccessoryName]&& v12)
  {
    [v12 setAccessoryName:nameCopy];
    [v12 setName:nameCopy];
  }

  else
  {
    nameModule2 = [(HUNameItemModuleController *)self nameModule];
    sourceItemBuilder2 = [nameModule2 sourceItemBuilder];
    if ([sourceItemBuilder2 conformsToProtocol:&unk_2825BD4E0])
    {
      v10 = sourceItemBuilder2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v11 setName:nameCopy];
  }
}

- (id)_builderName
{
  objc_opt_class();
  nameModule = [(HUNameItemModuleController *)self nameModule];
  sourceItemBuilder = [nameModule sourceItemBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItemBuilder;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([(HUNameItemModuleController *)self shouldUseAccessoryName]&& v6)
  {
    accessoryName = [v6 accessoryName];
  }

  else
  {
    nameModule2 = [(HUNameItemModuleController *)self nameModule];
    sourceItemBuilder2 = [nameModule2 sourceItemBuilder];
    if ([sourceItemBuilder2 conformsToProtocol:&unk_2825BD4E0])
    {
      v10 = sourceItemBuilder2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    accessoryName = [v11 name];
  }

  return accessoryName;
}

- (void)nameAndIconEditorCellDidTapIcon:(id)icon
{
  if ([(HUNameItemModuleController *)self supportsCustomIconEditing])
  {
    nameModule = [(HUNameItemModuleController *)self nameModule];
    sourceItemBuilder = [nameModule sourceItemBuilder];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      nameModule2 = [(HUNameItemModuleController *)self nameModule];
      sourceItemBuilder2 = [nameModule2 sourceItemBuilder];
      NSLog(&cfstr_ServiceLikeBui.isa, sourceItemBuilder2);
    }

    nameModule3 = [(HUNameItemModuleController *)self nameModule];
    sourceItemBuilder3 = [nameModule3 sourceItemBuilder];
    if ([sourceItemBuilder3 conformsToProtocol:&unk_2825BD4E0])
    {
      v11 = sourceItemBuilder3;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    availableIconDescriptors = [v12 availableIconDescriptors];
    iconDescriptor = [v12 iconDescriptor];

    v14 = [[HUIconPickerViewController alloc] initWithIconDescriptors:availableIconDescriptors selectedIconDescriptor:iconDescriptor delegate:self];
    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
    [v15 setModalPresentationStyle:2];
    v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
    host = [(HUItemModuleController *)self host];
    v18 = [host moduleController:self presentViewControllerForRequest:v16];
  }
}

- (void)iconPickerDidCancel:(id)cancel
{
  v6 = [HUViewControllerDismissalRequest requestWithViewController:cancel];
  host = [(HUItemModuleController *)self host];
  v5 = [host moduleController:self dismissViewControllerForRequest:v6];
}

- (void)iconPicker:(id)picker didPickIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  pickerCopy = picker;
  if (![(HUNameItemModuleController *)self supportsCustomIconEditing])
  {
    NSLog(&cfstr_UpdatingIconsI.isa);
  }

  nameModule = [(HUNameItemModuleController *)self nameModule];
  sourceItemBuilder = [nameModule sourceItemBuilder];
  if ([sourceItemBuilder conformsToProtocol:&unk_2825BD4E0])
  {
    v11 = sourceItemBuilder;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setIconDescriptor:descriptorCopy];
  commitItem = [v12 commitItem];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HUNameItemModuleController_iconPicker_didPickIconDescriptor___block_invoke;
  v18[3] = &unk_277DB71D0;
  v18[4] = self;
  v18[5] = a2;
  v14 = [commitItem addSuccessBlock:v18];

  v15 = [HUViewControllerDismissalRequest requestWithViewController:pickerCopy];

  host = [(HUItemModuleController *)self host];
  v17 = [host moduleController:self dismissViewControllerForRequest:v15];
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