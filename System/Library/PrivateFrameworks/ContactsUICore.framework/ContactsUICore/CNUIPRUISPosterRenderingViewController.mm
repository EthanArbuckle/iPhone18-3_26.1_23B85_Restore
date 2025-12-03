@interface CNUIPRUISPosterRenderingViewController
- (CGRect)salientContentRectangle;
- (CNUIPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape salientContentRectangle:(CGRect)rectangle;
- (CNUIPRUISPosterRenderingViewController)initWithWallpaper:(id)wallpaper;
- (CNUIPRUISPosterRenderingViewControllerDelegate)delegate;
- (void)registerLabel:(id)label;
- (void)renderingViewControllerDidFinishShowingContent:(id)content;
- (void)snapshotWithCompletionBlock:(id)block;
- (void)viewDidLoad;
@end

@implementation CNUIPRUISPosterRenderingViewController

- (CNUIPRUISPosterRenderingViewController)initWithConfiguration:(id)configuration context:(id)context boundingShape:(int64_t)shape salientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  configurationCopy = configuration;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = CNUIPRUISPosterRenderingViewController;
  v15 = [(CNUIPRUISPosterRenderingViewController *)&v23 init];
  if (v15)
  {
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    v17 = objc_alloc(getPRUISPosterRenderingViewControllerClass());
    wrappedIncomingCallPosterContext = [contextCopy wrappedIncomingCallPosterContext];
    v19 = [v17 initWithConfiguration:wrappedPosterConfiguration context:wrappedIncomingCallPosterContext boundingShape:shape];
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
  view = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNUIPRUISPosterRenderingViewController *)self addChildViewController:self->_wrappedPosterRenderingViewController];
  view2 = [(CNUIPRUISPosterRenderingViewController *)self view];
  [view2 addSubview:view];

  v15 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  view3 = [(CNUIPRUISPosterRenderingViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  bottomAnchor = [view bottomAnchor];
  view4 = [(CNUIPRUISPosterRenderingViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[1] = v14;
  leadingAnchor = [view leadingAnchor];
  view5 = [(CNUIPRUISPosterRenderingViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[2] = v7;
  trailingAnchor = [view trailingAnchor];
  view6 = [(CNUIPRUISPosterRenderingViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v15 activateConstraints:v12];

  [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController didMoveToParentViewController:self];
}

- (CNUIPRUISPosterRenderingViewController)initWithWallpaper:(id)wallpaper
{
  posterArchiveData = [wallpaper posterArchiveData];
  v5 = [CNUIPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData error:0];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD2E8]);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)renderingViewControllerDidFinishShowingContent:(id)content
{
  delegate = [(CNUIPRUISPosterRenderingViewController *)self delegate];
  [delegate renderingViewControllerDidFinishShowingContent:self];
}

- (void)registerLabel:(id)label
{
  labelCopy = label;
  obscurableContentView = [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController obscurableContentView];
  [obscurableContentView addSubview:labelCopy];

  v8 = labelCopy;
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

- (void)snapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    [(PRUISPosterRenderingViewController *)self->_wrappedPosterRenderingViewController snapshotWithOptions:2 forScreen:0 completionBlock:blockCopy];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

- (CNUIPRUISPosterRenderingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end