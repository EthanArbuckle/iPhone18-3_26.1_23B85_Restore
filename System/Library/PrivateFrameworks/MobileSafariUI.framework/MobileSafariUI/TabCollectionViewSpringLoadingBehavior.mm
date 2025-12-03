@interface TabCollectionViewSpringLoadingBehavior
+ (void)addSpringLoadedInteractionToTabView:(id)view;
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (TabCollectionView)tabView;
- (TabCollectionViewSpringLoadingBehavior)init;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation TabCollectionViewSpringLoadingBehavior

- (TabCollectionViewSpringLoadingBehavior)init
{
  v8.receiver = self;
  v8.super_class = TabCollectionViewSpringLoadingBehavior;
  v2 = [(TabCollectionViewSpringLoadingBehavior *)&v8 init];
  _defaultInteractionBehavior = [MEMORY[0x277D75A58] _defaultInteractionBehavior];
  behavior = v2->_behavior;
  v2->_behavior = _defaultInteractionBehavior;

  _blinkEffect = [MEMORY[0x277D75A58] _blinkEffect];
  effect = v2->_effect;
  v2->_effect = _blinkEffect;

  return v2;
}

+ (void)addSpringLoadedInteractionToTabView:(id)view
{
  viewCopy = view;
  view = [viewCopy view];

  if (view)
  {
    v5 = objc_alloc_init(TabCollectionViewSpringLoadingBehavior);
    [(TabCollectionViewSpringLoadingBehavior *)v5 setTabView:viewCopy];
    objc_initWeak(&location, viewCopy);
    view2 = [viewCopy view];
    v7 = objc_alloc(MEMORY[0x277D75A58]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __78__TabCollectionViewSpringLoadingBehavior_addSpringLoadedInteractionToTabView___block_invoke;
    v12 = &unk_2781DC630;
    objc_copyWeak(&v13, &location);
    v8 = [v7 initWithInteractionBehavior:v5 interactionEffect:v5 activationHandler:&v9];
    [view2 addInteraction:{v8, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __78__TabCollectionViewSpringLoadingBehavior_addSpringLoadedInteractionToTabView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [WeakRetained itemAtPoint:{v7, v9}];
  if (v10)
  {
    [WeakRetained activateItem:v10];
  }
}

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_tabView);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained presentationState] != 2)
  {
    LOBYTE(self) = 0;
  }

  else
  {
    view = [WeakRetained view];
    [contextCopy locationInView:view];
    v11 = v10;
    v13 = v12;

    v14 = [WeakRetained itemAtPoint:{v11, v13}];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained shouldSpringLoadItem:v14])
    {
      LOBYTE(self) = 0;
    }

    else
    {
      [contextCopy setTargetItem:v14];
      v15 = [(UISpringLoadedInteractionBehavior *)self->_behavior shouldAllowInteraction:interactionCopy withContext:contextCopy];
      LOBYTE(self) = 0;
      if (v15 && v14)
      {
        LODWORD(self) = [v14 isPlaceholder] ^ 1;
      }
    }
  }

  return self;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_tabView);
  targetItem = [contextCopy targetItem];
  if (targetItem)
  {
    v9 = [WeakRetained viewForItem:targetItem];
    [contextCopy setTargetView:v9];
  }

  else
  {
    [contextCopy setTargetView:0];
  }

  [(UISpringLoadedInteractionEffect *)self->_effect interaction:interactionCopy didChangeWithContext:contextCopy];
}

- (TabCollectionView)tabView
{
  WeakRetained = objc_loadWeakRetained(&self->_tabView);

  return WeakRetained;
}

@end