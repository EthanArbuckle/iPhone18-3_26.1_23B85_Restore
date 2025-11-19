@interface OBBaseWelcomeController
+ (CGSize)preferredContentSize;
+ (CGSize)preferredContentSizeInSetupAssistant;
- (BOOL)_isBuddyiPad;
- (BOOL)_isInFormSheet;
- (CGSize)preferredContentSize;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSDirectionalEdgeInsets)insetsForTemplateType:(unint64_t)a3;
- (id)description;
- (id)navigationItem;
- (void)_applyChromelessToBar:(int64_t)a3 navigationItem:(id)a4;
- (void)_presentationStyleValidationCheck;
- (void)loadView;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation OBBaseWelcomeController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = OBBaseWelcomeController;
  [(OBBaseWelcomeController *)&v5 loadView];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(OBBaseWelcomeController *)self view];
  [v4 setBackgroundColor:v3];

  [(OBBaseWelcomeController *)self updateDirectionalLayoutMargins];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBBaseWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(OBBaseWelcomeController *)self updateDirectionalLayoutMargins];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = OBBaseWelcomeController;
  [(OBBaseWelcomeController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OBBaseWelcomeController *)self description];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "[%@ viewWillTransitionToSize:withTransitionCoordinator:]", buf, 0xCu);
  }

  [(OBBaseWelcomeController *)self updateDirectionalLayoutMargins];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLoad
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = OBBaseWelcomeController;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  v3 = _OBLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OBBaseWelcomeController *)self description];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B4FB6000, v3, OS_LOG_TYPE_DEFAULT, "[%@ viewDidLoad]", buf, 0xCu);
  }

  if ([(OBBaseWelcomeController *)self conformsToProtocol:&unk_1F2D146E0])
  {
    [(OBBaseWelcomeController *)self setTemplateType:2];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateDirectionalLayoutMargins
{
  [(OBBaseWelcomeController *)self directionalLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(OBBaseWelcomeController *)self view];
  [v11 setDirectionalLayoutMargins:{v4, v6, v8, v10}];
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  v3 = +[OBDevice currentDevice];
  -[OBBaseWelcomeController insetsForTemplateType:](self, "insetsForTemplateType:", [v3 templateType]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (NSDirectionalEdgeInsets)insetsForTemplateType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v5 userInterfaceIdiom])
  {
  }

  else
  {
    v6 = [(OBBaseWelcomeController *)self traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 2)
    {
      v8 = 5.0;
      goto LABEL_33;
    }
  }

  v8 = 5.0;
  *&v9 = 0.0;
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_25;
        }

LABEL_17:
        v10 = !+[OBFeatureFlags isNaturalUIEnabled];
        v11 = 24.0;
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (a3 == 1)
    {
      goto LABEL_18;
    }

    if (a3 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  if (a3 > 7)
  {
    switch(a3)
    {
      case 8uLL:
        goto LABEL_17;
      case 0xAuLL:
        if (+[OBFeatureFlags isNaturalUIEnabled])
        {
          v12 = 60.0;
        }

        else
        {
          v12 = 68.0;
        }

        v8 = 0.0;
        goto LABEL_38;
      case 9uLL:
LABEL_18:
        v8 = 38.0;
        if (+[OBFeatureFlags isNaturalUIEnabled])
        {
          v12 = 38.0;
        }

        else
        {
          v12 = 44.0;
        }

        if (!+[OBFeatureFlags isNaturalUIEnabled])
        {
          v8 = 34.0;
        }

        goto LABEL_38;
    }

LABEL_40:
    v12 = 0.0;
    v20 = 0.0;
    goto LABEL_39;
  }

  if (a3 != 6)
  {
LABEL_25:
    v10 = !+[OBFeatureFlags isNaturalUIEnabled];
    v11 = 16.0;
LABEL_26:
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 38.0;
    }

    goto LABEL_38;
  }

  v13 = [(OBBaseWelcomeController *)self view];
  v14 = [v13 window];

  if (v14)
  {
    v15 = +[OBDevice currentDevice];
    v16 = [(OBBaseWelcomeController *)self view];
    v17 = [v16 window];
    [v17 bounds];
    v19 = [v15 templateTypeForBoundsWidth:v18];

    if (v19 != 6 && ![(OBBaseWelcomeController *)self _isBuddyiPad])
    {
      [(OBBaseWelcomeController *)self insetsForTemplateType:v19];
      v9 = v24;
      v12 = v25;
      v8 = v26;
      goto LABEL_39;
    }
  }

  if (!self || ![(UIViewController *)self ob_isFormSheet]&& ![(OBBaseWelcomeController *)self _isBuddyiPad])
  {
    [(OBBaseWelcomeController *)self insetsForTemplateType:?];
    v12 = v27;
    goto LABEL_38;
  }

LABEL_33:
  v12 = 88.0;
  *&v9 = 56.0;
LABEL_38:
  v20 = v12;
LABEL_39:
  v21 = *&v9;
  v22 = v12;
  v23 = v8;
  result.trailing = v20;
  result.bottom = v23;
  result.leading = v22;
  result.top = v21;
  return result;
}

+ (CGSize)preferredContentSize
{
  [a1 _preferredContentSizeInBuddy:0];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)preferredContentSizeInSetupAssistant
{
  [a1 _preferredContentSizeInBuddy:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)navigationItem
{
  if (![(OBBaseWelcomeController *)self isViewLoaded])
  {
    v3 = [(OBBaseWelcomeController *)self navigationBarScrollToEdgeBehavior];
    v8.receiver = self;
    v8.super_class = OBBaseWelcomeController;
    v4 = [(OBBaseWelcomeController *)&v8 navigationItem];
    [(OBBaseWelcomeController *)self _applyChromelessToBar:v3 navigationItem:v4];
  }

  v7.receiver = self;
  v7.super_class = OBBaseWelcomeController;
  v5 = [(OBBaseWelcomeController *)&v7 navigationItem];

  return v5;
}

- (void)_applyChromelessToBar:(int64_t)a3 navigationItem:(id)a4
{
  v12 = a4;
  if (([v12 _isManualScrollEdgeAppearanceEnabled] & 1) == 0)
  {
    if (a3 == 2)
    {
      [v12 _setManualScrollEdgeAppearanceEnabled:1];
      v7 = +[OBDevice currentDevice];
      v8 = [v7 type] == 2;

      v9 = [objc_alloc(MEMORY[0x1E69DC700]) initWithIdiom:v8];
      [v9 configureWithTransparentBackground];
      v10 = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:v10];

      v11 = [objc_alloc(MEMORY[0x1E69DCCC8]) initWithBarAppearance:v9];
      [v12 setStandardAppearance:v11];

      [v12 _setBackgroundHidden:1];
    }

    else if (a3 == 1)
    {
      [(OBBaseWelcomeController *)self autoScrollEdgeTransitionDistance];
      *&v6 = v6;
      [v12 ob_applyAutomaticScrollToEdgeBehaviorWithDistance:{fmaxf(*&v6, 16.0)}];
    }
  }
}

- (void)_presentationStyleValidationCheck
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_FAULT, "The modal presentation style %@ is not supported; you must use UIModalPresentationFullScreen or UIModalPresentationFormSheet", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (CGSize)preferredContentSize
{
  [objc_opt_class() _preferredContentSizeInBuddy:{-[OBBaseWelcomeController templateType](self, "templateType") == 2}];
  v4 = v3;
  v6 = v5;
  v7 = [(OBBaseWelcomeController *)self navigationController];

  if (v7)
  {
    v8 = [(OBBaseWelcomeController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 frame];
    v6 = v6 - CGRectGetHeight(v13);
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)_isBuddyiPad
{
  if (!a1 || ![a1 conformsToProtocol:&unk_1F2D146E0])
  {
    return 0;
  }

  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 userInterfaceIdiom] == 1;

  return v2;
}

- (BOOL)_isInFormSheet
{
  if (result)
  {
    v1 = result;
    if ([result ob_isFormSheet])
    {
      return 1;
    }

    else
    {

      return [(OBBaseWelcomeController *)v1 _isBuddyiPad];
    }
  }

  return result;
}

- (void)insetsForTemplateType:(void *)a1 .cold.1(void *a1, double *a2)
{
  v4 = [a1 view];
  [v4 bounds];
  *a2 = (v3 + -624.0) * 0.5;
}

@end