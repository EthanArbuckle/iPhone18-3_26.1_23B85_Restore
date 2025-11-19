@interface CNUIPRUISPosterRenderingViewController
- (CGRect)salientContentRectangle;
- (CNUIPRUISPosterRenderingViewController)initWithConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5 salientContentRectangle:(CGRect)a6;
- (CNUIPRUISPosterRenderingViewController)initWithWallpaper:(id)a3;
- (CNUIPRUISPosterRenderingViewControllerDelegate)delegate;
- (void)registerLabel:(id)a3;
- (void)renderingViewControllerDidFinishShowingContent:(id)a3;
- (void)snapshotWithCompletionBlock:(id)a3;
- (void)viewDidLoad;
@end

@implementation CNUIPRUISPosterRenderingViewController

- (CNUIPRUISPosterRenderingViewController)initWithConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5 salientContentRectangle:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v23.receiver = self;
  v23.super_class = CNUIPRUISPosterRenderingViewController;
  v15 = [(CNUIPRUISPosterRenderingViewController *)&v23 init];
  if (v15)
  {
    v16 = [v13 wrappedPosterConfiguration];
    v17 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    v18 = [v14 wrappedIncomingCallPosterContext];
    v19 = [v17 initWithConfiguration:v16 context:v18 boundingShape:a5];
    wrappedPosterRenderingViewController = v15->_wrappedPosterRenderingViewController;
    v15->_wrappedPosterRenderingViewController = v19;

    [(PRUISPosterRenderingViewController *)v15->_wrappedPosterRenderingViewController setSalientContentRectangle:x, y, width, height];
    [(PRUISPosterRenderingViewController *)v15->_wrappedPosterRenderingViewController setDelegate:v15];
    v21 = v15;
  }

  return v15;
}

- (void)viewDidLoad
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CNUIPRUISPosterRenderingViewController;
  [(CNUIPRUISPosterRenderingViewController *)&v23 viewDidLoad];
  v3 = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNUIPRUISPosterRenderingViewController *)self addChildViewController:self->_wrappedPosterRenderingViewController];
  v4 = [(CNUIPRUISPosterRenderingViewController *)self view];
  [v4 addSubview:v3];

  v15 = MEMORY[0x1E696ACD8];
  v21 = [v3 topAnchor];
  v22 = [(CNUIPRUISPosterRenderingViewController *)self view];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v17 = [v3 bottomAnchor];
  v18 = [(CNUIPRUISPosterRenderingViewController *)self view];
  v16 = [v18 bottomAnchor];
  v14 = [v17 constraintEqualToAnchor:v16];
  v24[1] = v14;
  v13 = [v3 leadingAnchor];
  v5 = [(CNUIPRUISPosterRenderingViewController *)self view];
  v6 = [v5 leadingAnchor];
  v7 = [v13 constraintEqualToAnchor:v6];
  v24[2] = v7;
  v8 = [v3 trailingAnchor];
  v9 = [(CNUIPRUISPosterRenderingViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v15 activateConstraints:v12];

  [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController didMoveToParentViewController:self];
}

- (CNUIPRUISPosterRenderingViewController)initWithWallpaper:(id)a3
{
  v4 = [a3 posterArchiveData];
  v5 = [CNUIPRSPosterArchiver unarchiveCNConfigurationFromData:v4 error:0];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD2E8]);
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];

    [getTPIncomingCallMetricsProviderClass() horizontalNameLabelBoundingRectForName:&stru_1F162C170 window:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [getTPIncomingCallMetricsProviderClass() verticalNameLabelBoundingRectForName:&stru_1F162C170 window:v8];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [[CNUIPRUISIncomingCallPosterContextNameVariations alloc] initWithShortName:0 fullName:0];
    v26 = [[CNUIPRUISIncomingCallPosterContext alloc] initWithNameVariations:v25 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:0 imageAssetID:v10 personalPoster:v12, v14, v16, v18, v20, v22, v24];
    self = [(CNUIPRUISPosterRenderingViewController *)self initWithConfiguration:v5 context:v26];

    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (CGRect)salientContentRectangle
{
  [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController salientContentRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)renderingViewControllerDidFinishShowingContent:(id)a3
{
  v4 = [(CNUIPRUISPosterRenderingViewController *)self delegate];
  [v4 renderingViewControllerDidFinishShowingContent:self];
}

- (void)registerLabel:(id)a3
{
  v4 = a3;
  v5 = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController obscurableContentView];
  [v5 addSubview:v4];

  v8 = v4;
  if ([v8 conformsToProtocol:&unk_1F1665C68])
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController registerPosterAppearanceObserver:v7];
}

- (void)snapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController snapshotWithOptions:2 forScreen:0 completionBlock:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (CNUIPRUISPosterRenderingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end