@interface MTStaticColorPillView
- (MTStaticColorPillView)initWithFrame:(CGRect)a3 settings:(id)a4;
- (id)backgroundColor:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setPillColor:(id)a3;
@end

@implementation MTStaticColorPillView

- (MTStaticColorPillView)initWithFrame:(CGRect)a3 settings:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTStaticColorPillView;
  v4 = [(MTPillView *)&v9 initWithFrame:a4 settings:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v10.width = 1.0;
    v10.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v10, 1, 1.0);
    v5 = [MEMORY[0x277D75348] whiteColor];
    [v5 setFill];

    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = 1.0;
    v11.size.height = 1.0;
    UIRectFill(v11);
    v6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v7 = [(MTStaticColorPillView *)v4 layer];
    [v7 setContents:{objc_msgSend(v6, "CGImage")}];
  }

  return v4;
}

- (id)backgroundColor:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTStaticColorPillView.m" lineNumber:34 description:{@"cannot call %s use pillColor instead", "-[MTStaticColorPillView backgroundColor:]"}];

  v8.receiver = self;
  v8.super_class = MTStaticColorPillView;
  v6 = [(MTStaticColorPillView *)&v8 backgroundColor];

  return v6;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MTStaticColorPillView.m" lineNumber:39 description:{@"cannot call %s use setPillColor: instead", "-[MTStaticColorPillView setBackgroundColor:]"}];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7.receiver = self;
  v7.super_class = MTStaticColorPillView;
  [(MTStaticColorPillView *)&v7 setBackgroundColor:v6];
}

- (void)setPillColor:(id)a3
{
  v5 = a3;
  if (self->_pillColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_pillColor, a3);
    v6 = [(MTStaticColorPillView *)self layer];
    [v6 setContentsMultiplyColor:{-[UIColor CGColor](self->_pillColor, "CGColor")}];

    v5 = v7;
  }
}

@end