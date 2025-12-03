@interface ICTableClipView
- (ICTableClipView)initWithFrame:(CGRect)frame;
@end

@implementation ICTableClipView

- (ICTableClipView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ICTableClipView;
  v3 = [(ICTableClipView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(ICTableClipView *)v3 layer];
    [layer setMasksToBounds:1];
  }

  return v4;
}

@end