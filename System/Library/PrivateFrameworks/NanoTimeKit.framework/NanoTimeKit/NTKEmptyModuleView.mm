@interface NTKEmptyModuleView
- (NTKEmptyModuleView)initWithFrame:(CGRect)a3;
@end

@implementation NTKEmptyModuleView

- (NTKEmptyModuleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKEmptyModuleView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKEmptyModuleView *)v3 setHidden:1];
  }

  return v4;
}

@end