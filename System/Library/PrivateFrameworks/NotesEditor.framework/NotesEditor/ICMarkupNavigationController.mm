@interface ICMarkupNavigationController
- (ICMarkupDismissalDelegate)markupDelegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICMarkupNavigationController

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICMarkupNavigationController;
  [(ICMarkupNavigationController *)&v5 viewWillDisappear:a3];
  v4 = [(ICMarkupNavigationController *)self markupDelegate];
  [v4 markupViewWillDissappear];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ICMarkupNavigationController;
  [(ICMarkupNavigationController *)&v6 viewDidLoad];
  v3 = [(ICMarkupNavigationController *)self navigationBar];
  v4 = [v3 standardAppearance];
  v5 = [(ICMarkupNavigationController *)self navigationBar];
  [v5 setScrollEdgeAppearance:v4];
}

- (ICMarkupDismissalDelegate)markupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->markupDelegate);

  return WeakRetained;
}

@end