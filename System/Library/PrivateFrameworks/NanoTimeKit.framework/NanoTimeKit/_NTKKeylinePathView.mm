@interface _NTKKeylinePathView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_NTKKeylinePathView)initWithPath:(id)path secondPath:(id)secondPath scale:(double)scale;
- (void)drawRect:(CGRect)rect;
@end

@implementation _NTKKeylinePathView

- (_NTKKeylinePathView)initWithPath:(id)path secondPath:(id)secondPath scale:(double)scale
{
  pathCopy = path;
  secondPathCopy = secondPath;
  v18.receiver = self;
  v18.super_class = _NTKKeylinePathView;
  v11 = [(CLKUIColoringView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v11)
  {
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, scale, scale);
    location = v17;
    [pathCopy applyTransform:&location];
    location = v17;
    [secondPathCopy applyTransform:&location];
    objc_storeStrong(&v11->_path, path);
    objc_storeStrong(&v11->_secondPath, secondPath);
    objc_initWeak(&location, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53___NTKKeylinePathView_initWithPath_secondPath_scale___block_invoke;
    v14[3] = &unk_278780B08;
    objc_copyWeak(&v15, &location);
    v12 = [NTKKeylineTouchable touchableWithHandler:v14];
    [(_NTKKeylinePathView *)v11 setTouchable:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)drawRect:(CGRect)rect
{
  [(_NTKKeylinePathView *)self bounds:rect.origin.x];
  if (!CGRectIsEmpty(v7))
  {
    contentColor = [(_NTKKeylinePathView *)self contentColor];
    [contentColor set];

    [(UIBezierPath *)self->_path setLineWidth:1.5];
    [(UIBezierPath *)self->_path stroke];
    [(UIBezierPath *)self->_secondPath setLineWidth:1.5];
    secondPath = self->_secondPath;

    [(UIBezierPath *)secondPath stroke];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIBezierPath *)self->_path bounds:fits.width];
  v4 = v3 + 1.5;
  v6 = v5 + 1.5;
  result.height = v6;
  result.width = v4;
  return result;
}

@end