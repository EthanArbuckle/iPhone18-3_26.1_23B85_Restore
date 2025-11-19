@interface SystemRootLayerProxyView
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation SystemRootLayerProxyView

- (void)didMoveToSuperview
{
  v1 = a1;
  SystemRootLayerProxyView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  v2 = self;
  SystemRootLayerProxyView.layoutSubviews()();
}

@end