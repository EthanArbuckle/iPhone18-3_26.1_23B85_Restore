@interface SFUnifiedTabBarItemViewRegistration
- (SFUnifiedTabBarItemViewRegistration)initWithViewProvider:(id)provider configurationHandler:(id)handler;
- (id)dequeueOrCreateViewForItem:(id)item isPreview:(BOOL)preview;
- (void)configureView:(id)view forItem:(id)item inArrangement:(id)arrangement isPreview:(BOOL)preview;
@end

@implementation SFUnifiedTabBarItemViewRegistration

- (SFUnifiedTabBarItemViewRegistration)initWithViewProvider:(id)provider configurationHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = SFUnifiedTabBarItemViewRegistration;
  v8 = [(SFUnifiedTabBarItemViewRegistration *)&v17 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    configurationHandler = v8->_configurationHandler;
    v8->_configurationHandler = v9;

    v11 = _Block_copy(providerCopy);
    viewProvider = v8->_viewProvider;
    v8->_viewProvider = v11;

    array = [MEMORY[0x1E695DF70] array];
    viewReuseStack = v8->_viewReuseStack;
    v8->_viewReuseStack = array;

    v15 = v8;
  }

  return v8;
}

- (id)dequeueOrCreateViewForItem:(id)item isPreview:(BOOL)preview
{
  previewCopy = preview;
  itemCopy = item;
  v7 = itemCopy;
  if (previewCopy)
  {
    [itemCopy reusablePreviewView];
  }

  else
  {
    [itemCopy reusableView];
  }
  v8 = ;
  if (!v8)
  {
    lastObject = [(NSMutableArray *)self->_viewReuseStack lastObject];
    if (lastObject)
    {
      v8 = lastObject;
      [(NSMutableArray *)self->_viewReuseStack removeLastObject];
    }

    else
    {
      v8 = (*(self->_viewProvider + 2))();
    }

    if (previewCopy)
    {
      [v7 setReusablePreviewView:v8];
    }

    else
    {
      [v7 setReusableView:v8];
    }

    [v8 setItem:v7];
    [v8 prepareForReuse];
  }

  v10 = v8;

  return v10;
}

- (void)configureView:(id)view forItem:(id)item inArrangement:(id)arrangement isPreview:(BOOL)preview
{
  viewCopy = view;
  itemCopy = item;
  arrangementCopy = arrangement;
  v13 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__SFUnifiedTabBarItemViewRegistration_configureView_forItem_inArrangement_isPreview___block_invoke;
  v17[3] = &unk_1E721BC28;
  v17[4] = self;
  v18 = viewCopy;
  v19 = itemCopy;
  v20 = arrangementCopy;
  previewCopy = preview;
  v14 = arrangementCopy;
  v15 = itemCopy;
  v16 = viewCopy;
  [v13 performWithoutAnimation:v17];
}

uint64_t __85__SFUnifiedTabBarItemViewRegistration_configureView_forItem_inArrangement_isPreview___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);

  return [v3 configureItemView:v4 isPreview:v5];
}

@end