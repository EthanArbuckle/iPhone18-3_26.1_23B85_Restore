@interface _UIPreferredContentSizeRelayingNavigationController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation _UIPreferredContentSizeRelayingNavigationController

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSize];
  v7 = v6;
  v9 = v8;
  v13.receiver = self;
  v13.super_class = _UIPreferredContentSizeRelayingNavigationController;
  [(_UIPreferredContentSizeRelayingNavigationController *)&v13 setPreferredContentSize:width, height];
  if (width != v7 || height != v9)
  {
    preferredContentSizeDidChange = [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSizeDidChange];

    if (preferredContentSizeDidChange)
    {
      preferredContentSizeDidChange2 = [(_UIPreferredContentSizeRelayingNavigationController *)self preferredContentSizeDidChange];
      (preferredContentSizeDidChange2)[2](preferredContentSizeDidChange2, self);
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];

  [(_UIPreferredContentSizeRelayingNavigationController *)self setPreferredContentSize:?];
}

@end