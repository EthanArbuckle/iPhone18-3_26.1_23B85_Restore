@interface SFStartPageBackgroundUIVisualEffectBackdropView
- (SFStartPageBackgroundUIVisualEffectBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation SFStartPageBackgroundUIVisualEffectBackdropView

- (SFStartPageBackgroundUIVisualEffectBackdropView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFStartPageBackgroundUIVisualEffectBackdropView;
  v3 = [(_UIVisualEffectSubview *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIVisualEffectBackdropView *)v3 captureGroup];
    [v5 setGroupName:@"start-page-cell"];

    [(_UIVisualEffectBackdropView *)v4 setRenderMode:0];
    v6 = v4;
  }

  return v4;
}

@end