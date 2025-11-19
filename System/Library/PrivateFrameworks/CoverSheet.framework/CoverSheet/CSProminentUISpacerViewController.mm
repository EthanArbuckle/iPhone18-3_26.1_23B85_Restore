@interface CSProminentUISpacerViewController
- (CSProminentUISpacerViewController)init;
- (void)_updatePreferredContentSize;
- (void)loadView;
- (void)setContainerSize:(CGSize)a3;
- (void)setTopMarginToMimic:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSProminentUISpacerViewController

- (CSProminentUISpacerViewController)init
{
  v3.receiver = self;
  v3.super_class = CSProminentUISpacerViewController;
  result = [(CSProminentUISpacerViewController *)&v3 init];
  if (result)
  {
    result->_containerSize = *MEMORY[0x277CBF3A8];
  }

  return result;
}

- (void)loadView
{
  v3 = [CSProminentUISpacerView alloc];
  v4 = [(CSProminentUISpacerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CSProminentUISpacerView *)v4 setAutoresizingMask:0];
  [(CSProminentUISpacerViewController *)self setView:v4];
  [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CSProminentUISpacerViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidLoad];
  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 dashBoardRemoteContentSettings];
  remoteContentSettings = self->_remoteContentSettings;
  self->_remoteContentSettings = v4;

  [(PTSettings *)self->_remoteContentSettings addKeyObserver:self];
  [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
}

- (void)setTopMarginToMimic:(double)a3
{
  if (self->_topMarginToMimic != a3)
  {
    self->_topMarginToMimic = a3;
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)setContainerSize:(CGSize)a3
{
  if (self->_containerSize.width != a3.width || self->_containerSize.height != a3.height)
  {
    self->_containerSize = a3;
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_remoteContentSettings == a3)
  {
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)_updatePreferredContentSize
{
  width = self->_containerSize.width;
  topMarginToMimic = self->_topMarginToMimic;
  v5 = [(CSProminentUISpacerViewController *)self viewIfLoaded];
  [v5 setFrame:{0.0, 0.0, width, topMarginToMimic}];

  [(CSProminentUISpacerViewController *)self setPreferredContentSize:width, topMarginToMimic];
}

@end