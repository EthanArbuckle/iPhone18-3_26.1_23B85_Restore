@interface SFStartPageBackgroundUIVisualEffectBackdropView
- (SFStartPageBackgroundUIVisualEffectBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation SFStartPageBackgroundUIVisualEffectBackdropView

- (SFStartPageBackgroundUIVisualEffectBackdropView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFStartPageBackgroundUIVisualEffectBackdropView;
  v3 = [(_UIVisualEffectSubview *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    captureGroup = [(_UIVisualEffectBackdropView *)v3 captureGroup];
    [captureGroup setGroupName:@"start-page-cell"];

    [(_UIVisualEffectBackdropView *)v4 setRenderMode:0];
    v6 = v4;
  }

  return v4;
}

@end