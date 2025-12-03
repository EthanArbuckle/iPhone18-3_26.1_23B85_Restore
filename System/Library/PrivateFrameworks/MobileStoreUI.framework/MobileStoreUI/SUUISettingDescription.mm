@interface SUUISettingDescription
+ (Class)viewClassForSettingDescription:(id)description;
- (BOOL)_isHidden;
- (SUUISettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (SUUISettingsGroupDescription)parent;
- (id)indexPath;
- (void)_deleteSetting;
- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_dispatchUpdate:(id)update;
- (void)_hideSetting;
- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_reloadSetting;
- (void)_revealSetting;
- (void)_setEditsValid:(BOOL)valid;
- (void)handleSelectionOnCompletion:(id)completion;
- (void)reloadWithViewElement:(id)element parent:(id)parent;
@end

@implementation SUUISettingDescription

- (SUUISettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  elementCopy = element;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = SUUISettingDescription;
  v9 = [(SUUISettingDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_parent, parentCopy);
    objc_storeStrong(&v10->_viewElement, element);
  }

  return v10;
}

+ (Class)viewClassForSettingDescription:(id)description
{
  descriptionCopy = description;
  v4 = [objc_opt_class() _viewClassForSettingDescription:descriptionCopy];

  return v4;
}

- (void)handleSelectionOnCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  viewElement = self->_viewElement;
  if (viewElement)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SUUISettingDescription_handleSelectionOnCompletion___block_invoke;
    v7[3] = &unk_2798F7288;
    v8 = completionCopy;
    [(SUUIViewElement *)viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v7];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (id)indexPath
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v4 = [WeakRetained indexPathForSettingDescription:self];

  return v4;
}

- (void)reloadWithViewElement:(id)element parent:(id)parent
{
  elementCopy = element;
  objc_storeWeak(&self->_parent, parent);
  viewElement = self->_viewElement;
  self->_viewElement = elementCopy;
}

- (void)_deleteSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained deleteSettingDescription:self];
}

- (void)_dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _dismissViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_dispatchUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained dispatchUpdate:updateCopy];
}

- (void)_hideSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained hideSettingDescription:self];
}

- (BOOL)_isHidden
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  LOBYTE(selfCopy) = [WeakRetained isSettingDescriptionHidden:selfCopy];

  return selfCopy;
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_reloadSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained reloadSettingDescription:self];
}

- (void)_revealSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained revealSettingDescription:self];
}

- (void)_setEditsValid:(BOOL)valid
{
  if (self->_editsValid != valid)
  {
    self->_editsValid = valid;
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    [WeakRetained _updatedEditsValid];
  }
}

- (SUUISettingsGroupDescription)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end