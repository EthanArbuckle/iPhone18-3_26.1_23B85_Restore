@interface ICCollapsibleContainerView
- (void)performSetup;
@end

@implementation ICCollapsibleContainerView

- (void)performSetup
{
  v3 = [(ICCollapsibleContainerView *)self containedView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:v3];
}

@end