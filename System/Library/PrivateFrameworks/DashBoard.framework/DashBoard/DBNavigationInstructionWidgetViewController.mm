@interface DBNavigationInstructionWidgetViewController
- (DBNavigationInstructionWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager;
- (void)prepareLoadingViewAnimated:(BOOL)animated;
@end

@implementation DBNavigationInstructionWidgetViewController

- (DBNavigationInstructionWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager
{
  v8.receiver = self;
  v8.super_class = DBNavigationInstructionWidgetViewController;
  v5 = [(DBSceneWidgetViewController *)&v8 initWithEnvironment:environment animationManager:manager widgetSizeManager:sizeManager];
  v6 = v5;
  if (v5)
  {
    [(DBSceneWidgetViewController *)v5 setWidgetStyle:1];
  }

  return v6;
}

- (void)prepareLoadingViewAnimated:(BOOL)animated
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(DBWidgetViewController *)self contentView];
  [contentView addSubview:v5];

  getIconPlaceholderLayerView = [(DBSceneWidgetViewController *)self getIconPlaceholderLayerView];
  [getIconPlaceholderLayerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:getIconPlaceholderLayerView];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__DBNavigationInstructionWidgetViewController_prepareLoadingViewAnimated___block_invoke;
  aBlock[3] = &unk_278F015F8;
  v8 = v5;
  v16 = v8;
  selfCopy = self;
  v9 = getIconPlaceholderLayerView;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (animated)
  {
    (*(v10 + 2))(v10);
    [(DBSceneWidgetViewController *)self replaceLoadingViewWithView:v8];
    [v8 setAlpha:0.0];
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__DBNavigationInstructionWidgetViewController_prepareLoadingViewAnimated___block_invoke_2;
    v13[3] = &unk_278F01580;
    v14 = v8;
    [v12 animateWithDuration:v13 animations:0.25];
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v10];
    [(DBSceneWidgetViewController *)self replaceLoadingViewWithView:v8];
  }
}

void __74__DBNavigationInstructionWidgetViewController_prepareLoadingViewAnimated___block_invoke(id *a1)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v19 = MEMORY[0x277CCAAD0];
  v30 = [a1[4] topAnchor];
  v31 = [a1[5] contentView];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v32[0] = v28;
  v26 = [a1[4] bottomAnchor];
  v27 = [a1[5] contentView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v24;
  v22 = [a1[4] leftAnchor];
  v23 = [a1[5] contentView];
  v21 = [v23 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v32[2] = v20;
  v17 = [a1[4] rightAnchor];
  v18 = [a1[5] contentView];
  v16 = [v18 rightAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v32[3] = v15;
  v13 = [a1[6] centerXAnchor];
  v14 = [a1[5] contentView];
  v12 = [v14 centerXAnchor];
  v2 = [v13 constraintEqualToAnchor:v12];
  v32[4] = v2;
  v3 = [a1[6] centerYAnchor];
  v4 = [a1[5] contentView];
  v5 = [v4 centerYAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v32[5] = v6;
  v7 = [a1[6] widthAnchor];
  v8 = [v7 constraintEqualToConstant:40.0];
  v32[6] = v8;
  v9 = [a1[6] heightAnchor];
  v10 = [v9 constraintEqualToConstant:40.0];
  v32[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:8];
  [v19 activateConstraints:v11];
}

@end