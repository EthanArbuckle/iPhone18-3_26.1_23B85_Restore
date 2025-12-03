@interface SystemRootLayerProxyView
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation SystemRootLayerProxyView

- (void)didMoveToSuperview
{
  selfCopy = self;
  SystemRootLayerProxyView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  SystemRootLayerProxyView.layoutSubviews()();
}

@end