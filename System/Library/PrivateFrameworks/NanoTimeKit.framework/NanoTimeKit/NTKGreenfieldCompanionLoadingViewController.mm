@interface NTKGreenfieldCompanionLoadingViewController
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldCompanionLoadingViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldCompanionLoadingViewController;
  [(NTKGreenfieldCompanionLoadingViewController *)&v6 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v3;

  view = [(NTKGreenfieldCompanionLoadingViewController *)self view];
  [view addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKGreenfieldCompanionLoadingViewController;
  [(NTKGreenfieldCompanionLoadingViewController *)&v4 viewDidLayoutSubviews];
  view = [(NTKGreenfieldCompanionLoadingViewController *)self view];
  [view center];
  [(UIActivityIndicatorView *)self->_spinner setCenter:?];
}

@end