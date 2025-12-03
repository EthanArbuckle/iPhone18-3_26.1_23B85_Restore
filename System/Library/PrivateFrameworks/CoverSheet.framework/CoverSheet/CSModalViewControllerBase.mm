@interface CSModalViewControllerBase
- (id)view;
- (id)viewIfLoaded;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)viewDidLoad;
@end

@implementation CSModalViewControllerBase

- (id)view
{
  v4.receiver = self;
  v4.super_class = CSModalViewControllerBase;
  view = [(CSModalViewControllerBase *)&v4 view];

  return view;
}

- (id)viewIfLoaded
{
  v4.receiver = self;
  v4.super_class = CSModalViewControllerBase;
  viewIfLoaded = [(CSModalViewControllerBase *)&v4 viewIfLoaded];

  return viewIfLoaded;
}

- (void)viewDidLoad
{
  view = [(CSModalViewControllerBase *)self view];
  [(CSCoverSheetViewControllerBase *)self registerView:view forRole:2];
  v4 = objc_opt_class();
  v5 = view;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setDelegate:self];
  v8.receiver = self;
  v8.super_class = CSModalViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v8 viewDidLoad];
}

- (void)aggregateAppearance:(id)appearance
{
  v40.receiver = self;
  v40.super_class = CSModalViewControllerBase;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v40 aggregateAppearance:appearanceCopy];
  v5 = [(CSModalViewControllerBase *)self view:v40.receiver];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 showsDateView] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_opt_new();
  v12 = [v11 priority:40];
  v13 = [v12 hidden:v10];
  v14 = [v13 constrainsTimeHeight:1];
  v15 = [v14 vibrantAndCentered:1];
  [appearanceCopy addComponent:v15];

  v16 = +[CSComponent backgroundContent];
  v17 = [v16 priority:40];
  v18 = [v17 hidden:1];
  [appearanceCopy addComponent:v18];

  v19 = +[CSComponent pageContent];
  v20 = [v19 priority:40];
  v21 = [v20 hidden:1];
  [appearanceCopy addComponent:v21];

  v22 = +[CSComponent pageControl];
  v23 = [v22 priority:40];
  v24 = [v23 hidden:1];
  [appearanceCopy addComponent:v24];

  v25 = objc_opt_new();
  v26 = [v25 priority:40];
  v27 = [v26 hidden:0];
  v28 = [v27 fakeStatusBar:0];
  [appearanceCopy addComponent:v28];

  v29 = +[CSComponent quickActions];
  v30 = [v29 priority:40];
  v31 = [v30 hidden:1];
  [appearanceCopy addComponent:v31];

  v32 = objc_opt_new();
  v33 = [v32 priority:40];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:7];
  v35 = [v33 style:v34];
  [appearanceCopy addComponent:v35];

  v36 = CSGetLegibilitySettingsForBackgroundStyle(7);
  [appearanceCopy setLegibilitySettings:v36];

  v37 = objc_opt_new();
  v38 = [v37 priority:40];
  v39 = [v38 shouldRenderInline:1];
  [appearanceCopy addComponent:v39];
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSModalViewControllerBase;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:{130, v4.receiver, v4.super_class}];
}

@end