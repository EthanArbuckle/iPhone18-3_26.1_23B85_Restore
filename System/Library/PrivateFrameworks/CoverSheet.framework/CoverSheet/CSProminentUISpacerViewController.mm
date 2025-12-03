@interface CSProminentUISpacerViewController
- (CSProminentUISpacerViewController)init;
- (void)_updatePreferredContentSize;
- (void)loadView;
- (void)setContainerSize:(CGSize)size;
- (void)setTopMarginToMimic:(double)mimic;
- (void)settings:(id)settings changedValueForKey:(id)key;
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
  dashBoardRemoteContentSettings = [v3 dashBoardRemoteContentSettings];
  remoteContentSettings = self->_remoteContentSettings;
  self->_remoteContentSettings = dashBoardRemoteContentSettings;

  [(PTSettings *)self->_remoteContentSettings addKeyObserver:self];
  [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
}

- (void)setTopMarginToMimic:(double)mimic
{
  if (self->_topMarginToMimic != mimic)
  {
    self->_topMarginToMimic = mimic;
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)setContainerSize:(CGSize)size
{
  if (self->_containerSize.width != size.width || self->_containerSize.height != size.height)
  {
    self->_containerSize = size;
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_remoteContentSettings == settings)
  {
    [(CSProminentUISpacerViewController *)self _updatePreferredContentSize];
  }
}

- (void)_updatePreferredContentSize
{
  width = self->_containerSize.width;
  topMarginToMimic = self->_topMarginToMimic;
  viewIfLoaded = [(CSProminentUISpacerViewController *)self viewIfLoaded];
  [viewIfLoaded setFrame:{0.0, 0.0, width, topMarginToMimic}];

  [(CSProminentUISpacerViewController *)self setPreferredContentSize:width, topMarginToMimic];
}

@end