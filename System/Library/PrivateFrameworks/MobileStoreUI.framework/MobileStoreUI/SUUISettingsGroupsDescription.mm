@interface SUUISettingsGroupsDescription
- (BOOL)hasEditableSettingDescriptions;
- (BOOL)shouldShowFooterForGroupAtIndex:(unint64_t)index;
- (BOOL)shouldShowHeaderForGroupAtIndex:(unint64_t)index;
- (SUUIClientContext)clientContext;
- (SUUISettingsGroupsDescription)init;
- (SUUISettingsGroupsDescription)initWithDelegate:(id)delegate settingsContext:(id)context;
- (SUUISettingsGroupsDescriptionDelegate)delegate;
- (id)_controllerForGroupElement:(id)element;
- (id)_gatherEditableSettings;
- (id)createEditTransaction;
- (id)footerDescriptionForGroupAtIndex:(unint64_t)index;
- (id)headerDescriptionForGroupAtIndex:(unint64_t)index;
- (id)owningViewControllerForSettingsGroupController:(id)controller;
- (id)settingDescriptionAtIndexPath:(id)path;
- (id)settingsGroupController:(id)controller viewForSettingDescription:(id)description;
- (id)viewElementForSettingAtIndexPath:(id)path;
- (unint64_t)numberOfSettingsInGroupAtIndex:(unint64_t)index;
- (void)_addSettingsGroupWithViewElement:(id)element controller:(id)controller;
- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_dispatchUpdateForSettingsGroupDescription:(id)description atIndex:(unint64_t)index withUpdateType:(int64_t)type;
- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_updatedEditsValid;
- (void)deleteSettingAtIndexPath:(id)path;
- (void)deleteSettingsGroupDescription:(id)description;
- (void)dispatchUpdate:(id)update;
- (void)hideSettingsGroupDescription:(id)description;
- (void)requestLayoutForWidth:(double)width context:(id)context;
- (void)revealSettingsGroupDescription:(id)description;
@end

@implementation SUUISettingsGroupsDescription

- (SUUISettingsGroupsDescription)init
{
  v6.receiver = self;
  v6.super_class = SUUISettingsGroupsDescription;
  v2 = [(SUUISettingsGroupsDescription *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUUISettingsObjectStore);
    groupDescriptions = v2->_groupDescriptions;
    v2->_groupDescriptions = v3;
  }

  return v2;
}

- (SUUISettingsGroupsDescription)initWithDelegate:(id)delegate settingsContext:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  v8 = [(SUUISettingsGroupsDescription *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsContext, contextCopy);
    clientContext = [contextCopy clientContext];
    objc_storeWeak(&v9->_clientContext, clientContext);

    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (id)createEditTransaction
{
  _gatherEditableSettings = [(SUUISettingsGroupsDescription *)self _gatherEditableSettings];
  v3 = [[SUUISettingsEditTransaction alloc] initWithSettingDescriptions:_gatherEditableSettings];

  return v3;
}

- (void)deleteSettingAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = -[SUUISettingsObjectStore visibleObjectAtIndex:](self->_groupDescriptions, "visibleObjectAtIndex:", [pathCopy section]);
  v5 = [v4 settingDescriptionAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v4 deleteSettingDescription:v5];
  if ([v4 isEmpty])
  {
    [(SUUISettingsObjectStore *)self->_groupDescriptions removeObject:v4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 settingsGroupsDescription:self deletedSettingsGroupAtIndex:{objc_msgSend(pathCopy, "section")}];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 settingsGroupsDescription:self deletedSettingAtIndexPath:pathCopy];
  }

LABEL_7:
}

- (void)deleteSettingsGroupDescription:(id)description
{
  descriptionCopy = description;
  if ([(SUUISettingsObjectStore *)self->_groupDescriptions objectIsVisible:?])
  {
    index = [descriptionCopy index];
    [(SUUISettingsObjectStore *)self->_groupDescriptions removeObject:descriptionCopy];
    [(SUUISettingsGroupsDescription *)self _dispatchUpdateForSettingsGroupDescription:descriptionCopy atIndex:index withUpdateType:0];
  }

  else
  {
    [(SUUISettingsObjectStore *)self->_groupDescriptions removeObject:descriptionCopy];
  }
}

- (void)dispatchUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 settingsGroupsDescription:self didUpdateSettingsDescription:updateCopy];
  }
}

- (id)footerDescriptionForGroupAtIndex:(unint64_t)index
{
  v3 = [(SUUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:index];
  footerDescription = [v3 footerDescription];

  return footerDescription;
}

- (BOOL)hasEditableSettingDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  groupDescriptions = self->_groupDescriptions;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SUUISettingsGroupsDescription_hasEditableSettingDescriptions__block_invoke;
  v5[3] = &unk_2798F9258;
  v5[4] = &v6;
  [(SUUISettingsObjectStore *)groupDescriptions enumerateObjects:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__SUUISettingsGroupsDescription_hasEditableSettingDescriptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasEditableSettingDescriptions];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)headerDescriptionForGroupAtIndex:(unint64_t)index
{
  v3 = [(SUUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:index];
  headerDescription = [v3 headerDescription];

  return headerDescription;
}

- (void)hideSettingsGroupDescription:(id)description
{
  descriptionCopy = description;
  index = [descriptionCopy index];
  [(SUUISettingsObjectStore *)self->_groupDescriptions hideObject:descriptionCopy];
  [(SUUISettingsGroupsDescription *)self _dispatchUpdateForSettingsGroupDescription:descriptionCopy atIndex:index withUpdateType:0];
}

- (unint64_t)numberOfSettingsInGroupAtIndex:(unint64_t)index
{
  v3 = [(SUUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:index];
  numberOfSettings = [v3 numberOfSettings];

  return numberOfSettings;
}

- (void)requestLayoutForWidth:(double)width context:(id)context
{
  contextCopy = context;
  groupDescriptions = self->_groupDescriptions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SUUISettingsGroupsDescription_requestLayoutForWidth_context___block_invoke;
  v9[3] = &unk_2798F92A0;
  widthCopy = width;
  v10 = contextCopy;
  v8 = contextCopy;
  [(SUUISettingsObjectStore *)groupDescriptions enumerateObjects:v9];
}

- (void)revealSettingsGroupDescription:(id)description
{
  groupDescriptions = self->_groupDescriptions;
  descriptionCopy = description;
  [(SUUISettingsObjectStore *)groupDescriptions revealObject:descriptionCopy];
  -[SUUISettingsGroupsDescription _dispatchUpdateForSettingsGroupDescription:atIndex:withUpdateType:](self, "_dispatchUpdateForSettingsGroupDescription:atIndex:withUpdateType:", descriptionCopy, [descriptionCopy index], 1);
}

- (id)settingDescriptionAtIndexPath:(id)path
{
  groupDescriptions = self->_groupDescriptions;
  pathCopy = path;
  v5 = -[SUUISettingsObjectStore visibleObjectAtIndex:](groupDescriptions, "visibleObjectAtIndex:", [pathCopy section]);
  v6 = [pathCopy row];

  v7 = [v5 settingDescriptionAtIndex:v6];

  return v7;
}

- (BOOL)shouldShowFooterForGroupAtIndex:(unint64_t)index
{
  v3 = [(SUUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:index];
  hasFooter = [v3 hasFooter];

  return hasFooter;
}

- (BOOL)shouldShowHeaderForGroupAtIndex:(unint64_t)index
{
  v3 = [(SUUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:index];
  hasHeader = [v3 hasHeader];

  return hasHeader;
}

- (id)viewElementForSettingAtIndexPath:(id)path
{
  groupDescriptions = self->_groupDescriptions;
  pathCopy = path;
  v5 = -[SUUISettingsObjectStore visibleObjectAtIndex:](groupDescriptions, "visibleObjectAtIndex:", [pathCopy section]);
  item = [pathCopy item];

  v7 = [v5 viewElementForSettingAtIndex:item];

  return v7;
}

- (id)owningViewControllerForSettingsGroupController:(id)controller
{
  delegate = [(SUUISettingsGroupsDescription *)self delegate];
  v5 = [delegate owningViewControllerForSettingsGroupsDescription:self];

  return v5;
}

- (id)settingsGroupController:(id)controller viewForSettingDescription:(id)description
{
  descriptionCopy = description;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    indexPath = [descriptionCopy indexPath];
    if (indexPath)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = [v9 settingsGroupsDescription:self viewForSettingAtIndexPath:indexPath];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addSettingsGroupWithViewElement:(id)element controller:(id)controller
{
  elementCopy = element;
  controllerCopy = controller;
  v8 = [SUUISettingsGroupDescription alloc];
  WeakRetained = objc_loadWeakRetained(&self->_settingsContext);
  v10 = [(SUUISettingsGroupDescription *)v8 initWithParent:self settingsContext:WeakRetained];

  if (controllerCopy)
  {
    [(SUUISettingsGroupDescription *)v10 setController:controllerCopy];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SUUISettingsGroupsDescription__addSettingsGroupWithViewElement_controller___block_invoke;
  v13[3] = &unk_2798F92C8;
  v14 = v10;
  selfCopy = self;
  v16 = elementCopy;
  v11 = elementCopy;
  v12 = v10;
  [v11 enumerateChildrenUsingBlock:v13];
  [(SUUISettingsObjectStore *)self->_groupDescriptions addObject:v12 hidden:[(SUUISettingsGroupDescription *)v12 hasNoVisibleSettings]];
}

void __77__SUUISettingsGroupsDescription__addSettingsGroupWithViewElement_controller___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  switch(v3)
  {
    case '0':
      [*(a1 + 32) setHeaderViewElement:v5];
      break;
    case '.':
      v4 = [*(a1 + 40) _controllerForGroupElement:*(a1 + 48)];
      [*(a1 + 40) _addSettingsGroupWithViewElement:v5 controller:v4];

      break;
    case ')':
      [*(a1 + 32) setFooterViewElement:v5];
      break;
    default:
      [*(a1 + 32) addSettingViewElement:v5];
      break;
  }
}

- (id)_controllerForGroupElement:(id)element
{
  elementCopy = element;
  v5 = [(NSMapTable *)self->_controllers objectForKey:elementCopy];
  if (!v5)
  {
    type = [elementCopy type];
    if ([type isEqualToString:@"signin"])
    {
      v5 = objc_alloc_init(SUUISignInSettingsGroupController);
    }

    else
    {
      v5 = 0;
    }

    if (!self->_controllers)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      controllers = self->_controllers;
      self->_controllers = v7;
    }

    if (v5)
    {
      [(SUUISettingsGroupController *)v5 setDelegate:self];
      [(NSMapTable *)self->_controllers setObject:v5 forKey:elementCopy];
    }
  }

  return v5;
}

- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 settingsGroupsDescription:self dismissViewController:controllerCopy animated:animatedCopy completion:completionCopy];
    }
  }
}

- (void)_dispatchUpdateForSettingsGroupDescription:(id)description atIndex:(unint64_t)index withUpdateType:(int64_t)type
{
  v8 = [[SUUISettingsDescriptionUpdate alloc] initWithUpdateType:type];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  [(SUUISettingsDescriptionUpdate *)v8 setIndexSet:v7];

  [(SUUISettingsGroupsDescription *)self dispatchUpdate:v8];
}

- (id)_gatherEditableSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  groupDescriptions = self->_groupDescriptions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUUISettingsGroupsDescription__gatherEditableSettings__block_invoke;
  v7[3] = &unk_2798F92F0;
  v5 = v3;
  v8 = v5;
  [(SUUISettingsObjectStore *)groupDescriptions enumerateObjects:v7];

  return v5;
}

void __56__SUUISettingsGroupsDescription__gatherEditableSettings__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasEditableSettingDescriptions])
  {
    v3 = [v6 editableSettingDescriptions];
    v4 = *(a1 + 32);
    v5 = [v3 allObjects];
    [v4 addObjectsFromArray:v5];
  }
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 settingsGroupsDescription:self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
    }
  }
}

- (void)_updatedEditsValid
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsGroupsDescriptionDidUpdateValidity:self];
    }
  }
}

- (SUUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_clientContext);

  return WeakRetained;
}

- (SUUISettingsGroupsDescriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end