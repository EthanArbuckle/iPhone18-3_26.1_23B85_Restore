@interface _UIPreferredContentSizeRelayingNavigationController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation _UIPreferredContentSizeRelayingNavigationController

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSize];
  v7 = v6;
  v9 = v8;
  v13.receiver = self;
  v13.super_class = _UIPreferredContentSizeRelayingNavigationController;
  [(_UIPreferredContentSizeRelayingNavigationController *)&v13 setPreferredContentSize:width, height];
  if (width != v7 || height != v9)
  {
    v11 = [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSizeDidChange];

    if (v11)
    {
      v12 = [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSizeDidChange];
      (v12)[2](v12, self);
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  [a3 preferredContentSize];

  [(_UIPreferredContentSizeRelayingNavigationController *)self setPreferredContentSize:?];
}

@end