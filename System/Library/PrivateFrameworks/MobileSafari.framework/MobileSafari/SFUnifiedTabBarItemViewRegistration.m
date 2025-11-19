@interface SFUnifiedTabBarItemViewRegistration
- (SFUnifiedTabBarItemViewRegistration)initWithViewProvider:(id)a3 configurationHandler:(id)a4;
- (id)dequeueOrCreateViewForItem:(id)a3 isPreview:(BOOL)a4;
- (void)configureView:(id)a3 forItem:(id)a4 inArrangement:(id)a5 isPreview:(BOOL)a6;
@end

@implementation SFUnifiedTabBarItemViewRegistration

- (SFUnifiedTabBarItemViewRegistration)initWithViewProvider:(id)a3 configurationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SFUnifiedTabBarItemViewRegistration;
  v8 = [(SFUnifiedTabBarItemViewRegistration *)&v17 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
    configurationHandler = v8->_configurationHandler;
    v8->_configurationHandler = v9;

    v11 = _Block_copy(v6);
    viewProvider = v8->_viewProvider;
    v8->_viewProvider = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    viewReuseStack = v8->_viewReuseStack;
    v8->_viewReuseStack = v13;

    v15 = v8;
  }

  return v8;
}

- (id)dequeueOrCreateViewForItem:(id)a3 isPreview:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [v6 reusablePreviewView];
  }

  else
  {
    [v6 reusableView];
  }
  v8 = ;
  if (!v8)
  {
    v9 = [(NSMutableArray *)self->_viewReuseStack lastObject];
    if (v9)
    {
      v8 = v9;
      [(NSMutableArray *)self->_viewReuseStack removeLastObject];
    }

    else
    {
      v8 = (*(self->_viewProvider + 2))();
    }

    if (v4)
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

- (void)configureView:(id)a3 forItem:(id)a4 inArrangement:(id)a5 isPreview:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__SFUnifiedTabBarItemViewRegistration_configureView_forItem_inArrangement_isPreview___block_invoke;
  v17[3] = &unk_1E721BC28;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
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