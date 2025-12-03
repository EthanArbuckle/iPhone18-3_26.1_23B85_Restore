@interface NTKEmptyModuleView
- (NTKEmptyModuleView)initWithFrame:(CGRect)frame;
@end

@implementation NTKEmptyModuleView

- (NTKEmptyModuleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKEmptyModuleView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKEmptyModuleView *)v3 setHidden:1];
  }

  return v4;
}

@end