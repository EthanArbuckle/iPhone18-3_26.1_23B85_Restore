@interface MRUActivityMirroringViewController
- (MRUActivityMirroringViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (double)preferredHeightForBottomSafeArea;
- (void)loadView;
- (void)stopMirroring:(id)mirroring;
- (void)updateState;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MRUActivityMirroringViewController

- (MRUActivityMirroringViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = MRUActivityMirroringViewController;
  v4 = [(MRUActivityMirroringViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MRUMirroringController);
    mirroringController = v4->_mirroringController;
    v4->_mirroringController = v5;

    [(MRUMirroringController *)v4->_mirroringController setDelegate:v4];
  }

  return v4;
}

- (void)loadView
{
  v3 = objc_alloc_init(MRUActivityMirroringView);
  [(MRUActivityMirroringViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MRUActivityMirroringViewController;
  [(MRUActivityMirroringViewController *)&v5 viewDidLoad];
  view = [(MRUActivityMirroringViewController *)self view];
  button = [view button];
  [button addTarget:self action:sel_stopMirroring_ forControlEvents:64];

  [(MRUActivityMirroringViewController *)self updateState];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MRUActivityMirroringViewController;
  coordinatorCopy = coordinator;
  [(MRUActivityMirroringViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MRUActivityMirroringViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76645E8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_46];
}

void __89__MRUActivityMirroringViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateState];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)stopMirroring:(id)mirroring
{
  mirroringController = self->_mirroringController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MRUActivityMirroringViewController_stopMirroring___block_invoke;
  v4[3] = &unk_1E76643F0;
  v4[4] = self;
  [(MRUMirroringController *)mirroringController stopMirroringWithCompletion:v4];
}

void __52__MRUActivityMirroringViewController_stopMirroring___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) systemApertureElementContext];
  [v1 requestTransitionToPreferredLayoutMode];
}

- (double)preferredHeightForBottomSafeArea
{
  view = [(MRUActivityMirroringViewController *)self view];
  [view preferredHeightForBottomSafeArea];
  v4 = v3;

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  view = [(MRUActivityMirroringViewController *)self view];
  leadingView = [view leadingView];

  return leadingView;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  view = [(MRUActivityMirroringViewController *)self view];
  trailingView = [view trailingView];

  return trailingView;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  view = [(MRUActivityMirroringViewController *)self view];
  leadingView = [view leadingView];

  return leadingView;
}

- (void)updateState
{
  selectedOutputDevice = [(MRUMirroringController *)self->_mirroringController selectedOutputDevice];
  v19 = selectedOutputDevice;
  if (selectedOutputDevice)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MRUMirroringController symbolNameForOutputDevice:selectedOutputDevice];
    v6 = [v4 _systemImageNamed:v5];
    view = [(MRUActivityMirroringViewController *)self view];
    [view setDeviceImage:v6];

    name = [v19 name];
    view2 = [(MRUActivityMirroringViewController *)self view];
    deviceImage = [view2 deviceImage];
    [deviceImage setAccessibilityLabel:name];

    name2 = [v19 name];
    view3 = [(MRUActivityMirroringViewController *)self view];
    [view3 setDeviceName:name2];

    if (self->_activeLayoutMode == 4)
    {
      v13 = @"zoom";
    }

    else
    {
      v13 = @"breathe";
    }

    view4 = [(MRUActivityMirroringViewController *)self view];
    [view4 setState:v13];
  }

  else
  {
    view5 = [(MRUActivityMirroringViewController *)self view];
    [view5 setDeviceImage:0];

    view6 = [(MRUActivityMirroringViewController *)self view];
    [view6 setDeviceName:0];

    view7 = [(MRUActivityMirroringViewController *)self view];
    [view7 setState:&stru_1F1445548];
  }

  if (self->_activeLayoutMode == 4)
  {
    systemApertureElementContext = [(MRUActivityMirroringViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];
  }
}

@end