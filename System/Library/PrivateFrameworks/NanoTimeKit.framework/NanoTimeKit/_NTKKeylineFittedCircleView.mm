@interface _NTKKeylineFittedCircleView
- (_NTKKeylineFittedCircleView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation _NTKKeylineFittedCircleView

- (_NTKKeylineFittedCircleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _NTKKeylineFittedCircleView;
  v3 = [(CLKUIColoringImageView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_NTKKeylineFittedCircleView *)v3 layer];
    [layer setBorderWidth:1.5];

    objc_initWeak(&location, v4);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45___NTKKeylineFittedCircleView_initWithFrame___block_invoke;
    v7[3] = &unk_278780B30;
    objc_copyWeak(&v8, &location);
    [(_NTKKeylineImageView *)v4 setColorizationBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _NTKKeylineFittedCircleView;
  [(_NTKKeylineFittedCircleView *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_NTKKeylineFittedCircleView *)self bounds];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [(_NTKKeylineFittedCircleView *)self _setCornerRadius:v6 * 0.5];
}

@end