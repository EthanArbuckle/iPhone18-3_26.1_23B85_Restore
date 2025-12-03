@interface ICMarkupNavigationController
- (ICMarkupDismissalDelegate)markupDelegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICMarkupNavigationController

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICMarkupNavigationController;
  [(ICMarkupNavigationController *)&v5 viewWillDisappear:disappear];
  markupDelegate = [(ICMarkupNavigationController *)self markupDelegate];
  [markupDelegate markupViewWillDissappear];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ICMarkupNavigationController;
  [(ICMarkupNavigationController *)&v6 viewDidLoad];
  navigationBar = [(ICMarkupNavigationController *)self navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  navigationBar2 = [(ICMarkupNavigationController *)self navigationBar];
  [navigationBar2 setScrollEdgeAppearance:standardAppearance];
}

- (ICMarkupDismissalDelegate)markupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->markupDelegate);

  return WeakRetained;
}

@end