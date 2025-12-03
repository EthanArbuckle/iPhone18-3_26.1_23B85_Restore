@interface HUNetworkConfigurationItemListModuleController
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUNetworkConfigurationItemListModuleController)initWithModule:(id)module style:(unint64_t)style;
- (id)_viewControllerToPresentForNetworkConfigurationGroupItem:(id)item;
- (id)presentNetworkConfigurationSettingsForItem:(id)item animated:(BOOL)animated;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUNetworkConfigurationItemListModuleController

- (HUNetworkConfigurationItemListModuleController)initWithModule:(id)module style:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = HUNetworkConfigurationItemListModuleController;
  result = [(HUItemModuleController *)&v6 initWithModule:module];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (id)presentNetworkConfigurationSettingsForItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v8 = [module isItemNetworkConfigurationGroupItem:itemCopy];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [itemCopy copy];
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v10;
      if (v11)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
    }

    v12 = 0;
LABEL_9:

    v15 = [(HUNetworkConfigurationItemListModuleController *)self _viewControllerToPresentForNetworkConfigurationGroupItem:v12];
    v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];

    [v16 setPreferredPresentationType:1];
    [v16 setAnimated:animatedCopy];
    host = [(HUItemModuleController *)self host];
    futureWithNoResult = [host moduleController:self presentViewControllerForRequest:v16];

    goto LABEL_11;
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_11:

  return futureWithNoResult;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkConfigurationGroupItem:itemCopy];

  if (v6)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v17.receiver = self;
  v17.super_class = HUNetworkConfigurationItemListModuleController;
  itemCopy = item;
  [(HUItemModuleController *)&v17 setupCell:cellCopy forItem:itemCopy];
  module = [(HUItemModuleController *)self module];
  v9 = [module isItemNetworkConfigurationGroupItem:itemCopy];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = cellCopy;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11;
      if (v12)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class(), v17.receiver, v17.super_class}];
    }

    v13 = 0;
LABEL_9:

    [v13 setAccessoryType:1];
    v16 = +[HUIconCellContentMetrics compactMetrics];
    [v13 setContentMetrics:v16];

    [v13 setHideIcon:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v27.receiver = self;
  v27.super_class = HUNetworkConfigurationItemListModuleController;
  [(HUItemModuleController *)&v27 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  module = [(HUItemModuleController *)self module];
  LODWORD(self) = [module isItemNetworkConfigurationGroupItem:itemCopy];

  if (!self)
  {
    goto LABEL_20;
  }

  v11 = objc_opt_class();
  v12 = cellCopy;
  if (!v12)
  {
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

LABEL_8:
    v14 = 0;
  }

  v17 = objc_opt_class();
  v18 = itemCopy;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18;
    if (v19)
    {
      goto LABEL_16;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler2 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
  }

  v20 = 0;
LABEL_16:

  latestResults = [v20 latestResults];
  v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14038]];
  if ([v24 BOOLValue])
  {
    [v14 setDisabled:1];
  }

  else
  {
    latestResults2 = [v20 latestResults];
    v26 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14050]];
    [v14 setDisabled:{objc_msgSend(v26, "BOOLValue")}];
  }

LABEL_20:
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkConfigurationGroupItem:itemCopy];

  return v6;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkConfigurationGroupItem:itemCopy];

  if (v6)
  {
    v7 = [(HUNetworkConfigurationItemListModuleController *)self presentNetworkConfigurationSettingsForItem:itemCopy animated:1];
  }

  return 0;
}

- (id)_viewControllerToPresentForNetworkConfigurationGroupItem:(id)item
{
  itemCopy = item;
  if ([(HUNetworkConfigurationItemListModuleController *)self style])
  {
    NSLog(&cfstr_InvalidStyleLu.isa, [(HUNetworkConfigurationItemListModuleController *)self style]);
  }

  else
  {
    self = [[HUNetworkConfigurationSettingsViewController alloc] initWithNetworkConfigurationGroupItem:itemCopy];
  }

  return self;
}

@end