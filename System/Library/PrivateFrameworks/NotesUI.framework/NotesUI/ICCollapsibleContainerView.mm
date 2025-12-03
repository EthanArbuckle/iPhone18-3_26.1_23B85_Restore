@interface ICCollapsibleContainerView
- (void)performSetup;
@end

@implementation ICCollapsibleContainerView

- (void)performSetup
{
  containedView = [(ICCollapsibleContainerView *)self containedView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:containedView];
}

@end