@interface SUUIOverlayContainerView
- (void)setFrame:(CGRect)frame;
@end

@implementation SUUIOverlayContainerView

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SUUIOverlayContainerView;
  [(SUUIOverlayContainerView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SUUIOverlayContainerView *)self sendActionsForControlEvents:4096];
}

@end