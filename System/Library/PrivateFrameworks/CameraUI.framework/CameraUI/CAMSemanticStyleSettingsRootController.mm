@interface CAMSemanticStyleSettingsRootController
- (void)_dismiss;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation CAMSemanticStyleSettingsRootController

- (void)loadView
{
  v3 = objc_alloc_init(CAMSemanticStyleSettingsView);
  settingsView = self->__settingsView;
  self->__settingsView = v3;

  [(CAMSemanticStyleSettingsView *)self->__settingsView setDelegate:self];
  [(CAMSemanticStyleSettingsRootController *)self setView:self->__settingsView];
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_CANCEL", 0);
  v8 = [v5 initWithTitle:v6 style:2 target:self action:sel__dismiss];

  v7 = [(CAMSemanticStyleSettingsRootController *)self navigationItem];
  [v7 setLeftBarButtonItem:v8];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = CAMSemanticStyleSettingsRootController;
  [(CAMSemanticStyleSettingsRootController *)&v9 viewWillLayoutSubviews];
  v3 = [(CAMSemanticStyleSettingsRootController *)self _settingsView];
  [v3 bounds];
  v6 = v4 / v5;
  if (v4 / v5 > 0.5615)
  {
    v7 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_SETTINGS_TITLE", 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CAMSemanticStyleSettingsRootController *)self navigationItem];
  [v8 setTitle:v7];

  if (v6 > 0.5615)
  {
  }

  [v3 setShowsTitle:v6 <= 0.5615];
}

- (void)_dismiss
{
  v3 = [(CAMSemanticStyleSettingsRootController *)self completionBlock];

  if (v3)
  {
    v4 = [(CAMSemanticStyleSettingsRootController *)self completionBlock];
    v4[2]();
  }

  v5 = [(CAMSemanticStyleSettingsRootController *)self navigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

@end