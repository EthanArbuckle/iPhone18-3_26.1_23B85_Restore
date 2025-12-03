@interface SUUIFamilySettingDescription
- (SUUIFamilySettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (void)_updateViewState;
- (void)_updateWithViewState:(int64_t)state;
- (void)handleSelectionOnCompletion:(id)completion;
@end

@implementation SUUIFamilySettingDescription

- (SUUIFamilySettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = SUUIFamilySettingDescription;
  v4 = [(SUUISettingDescription *)&v7 initWithViewElement:element parent:parent];
  v5 = v4;
  if (v4)
  {
    v4->_viewState = -1;
    [(SUUIFamilySettingDescription *)v4 _updateViewState];
  }

  return v5;
}

- (void)handleSelectionOnCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_viewState + 1;
  if (v5 > 3)
  {
    v6 = @"complete";
  }

  else
  {
    v6 = off_2798F72F8[v5];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v6, @"state", 0}];
  viewElement = [(SUUISettingDescription *)self viewElement];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SUUIFamilySettingDescription_handleSelectionOnCompletion___block_invoke;
  v10[3] = &unk_2798F7288;
  v11 = completionCopy;
  v9 = completionCopy;
  [viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v7 completionBlock:v10];
}

- (void)_updateViewState
{
  objc_initWeak(&location, self);
  viewStateCoordinator = self->_viewStateCoordinator;
  if (!viewStateCoordinator)
  {
    v4 = objc_alloc_init(SUUISettingsFamilyViewStateCoordinator);
    v5 = self->_viewStateCoordinator;
    self->_viewStateCoordinator = v4;

    viewStateCoordinator = self->_viewStateCoordinator;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SUUIFamilySettingDescription__updateViewState__block_invoke;
  v6[3] = &unk_2798F72D8;
  objc_copyWeak(&v7, &location);
  [(SUUISettingsFamilyViewStateCoordinator *)viewStateCoordinator checkSettingsFamilyViewStateWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__SUUIFamilySettingDescription__updateViewState__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SUUIFamilySettingDescription__updateViewState__block_invoke_2;
  v3[3] = &unk_2798F72B0;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(v4);
}

void __48__SUUIFamilySettingDescription__updateViewState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithViewState:*(a1 + 40)];
}

- (void)_updateWithViewState:(int64_t)state
{
  self->_viewState = state;
  if ((state - 1) >= 3)
  {
    if (state)
    {
      if (state == -1 && ![(SUUISettingDescription *)self _isHidden])
      {

        [(SUUISettingDescription *)self _hideSetting];
      }
    }

    else
    {

      [(SUUISettingDescription *)self _deleteSetting];
    }
  }

  else
  {
    if ([(SUUISettingDescription *)self _isHidden])
    {
      [(SUUISettingDescription *)self _revealSetting];
    }

    [(SUUISettingDescription *)self _reloadSetting];
  }
}

@end