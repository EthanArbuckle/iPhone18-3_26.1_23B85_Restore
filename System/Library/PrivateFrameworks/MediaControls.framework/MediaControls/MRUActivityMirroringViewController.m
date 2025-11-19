@interface MRUActivityMirroringViewController
- (MRUActivityMirroringViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (double)preferredHeightForBottomSafeArea;
- (void)loadView;
- (void)stopMirroring:(id)a3;
- (void)updateState;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MRUActivityMirroringViewController

- (MRUActivityMirroringViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = MRUActivityMirroringViewController;
  v4 = [(MRUActivityMirroringViewController *)&v8 initWithNibName:a3 bundle:a4];
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
  v3 = [(MRUActivityMirroringViewController *)self view];
  v4 = [v3 button];
  [v4 addTarget:self action:sel_stopMirroring_ forControlEvents:64];

  [(MRUActivityMirroringViewController *)self updateState];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MRUActivityMirroringViewController;
  v7 = a4;
  [(MRUActivityMirroringViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__MRUActivityMirroringViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76645E8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_46];
}

void __89__MRUActivityMirroringViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateState];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)stopMirroring:(id)a3
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
  v2 = [(MRUActivityMirroringViewController *)self view];
  [v2 preferredHeightForBottomSafeArea];
  v4 = v3;

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = [(MRUActivityMirroringViewController *)self view];
  v3 = [v2 leadingView];

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = [(MRUActivityMirroringViewController *)self view];
  v3 = [v2 trailingView];

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = [(MRUActivityMirroringViewController *)self view];
  v3 = [v2 leadingView];

  return v3;
}

- (void)updateState
{
  v3 = [(MRUMirroringController *)self->_mirroringController selectedOutputDevice];
  v19 = v3;
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MRUMirroringController symbolNameForOutputDevice:v3];
    v6 = [v4 _systemImageNamed:v5];
    v7 = [(MRUActivityMirroringViewController *)self view];
    [v7 setDeviceImage:v6];

    v8 = [v19 name];
    v9 = [(MRUActivityMirroringViewController *)self view];
    v10 = [v9 deviceImage];
    [v10 setAccessibilityLabel:v8];

    v11 = [v19 name];
    v12 = [(MRUActivityMirroringViewController *)self view];
    [v12 setDeviceName:v11];

    if (self->_activeLayoutMode == 4)
    {
      v13 = @"zoom";
    }

    else
    {
      v13 = @"breathe";
    }

    v14 = [(MRUActivityMirroringViewController *)self view];
    [v14 setState:v13];
  }

  else
  {
    v15 = [(MRUActivityMirroringViewController *)self view];
    [v15 setDeviceImage:0];

    v16 = [(MRUActivityMirroringViewController *)self view];
    [v16 setDeviceName:0];

    v17 = [(MRUActivityMirroringViewController *)self view];
    [v17 setState:&stru_1F1445548];
  }

  if (self->_activeLayoutMode == 4)
  {
    v18 = [(MRUActivityMirroringViewController *)self systemApertureElementContext];
    [v18 setElementNeedsUpdate];
  }
}

@end