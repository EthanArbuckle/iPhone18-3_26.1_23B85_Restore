@interface _NTKKeylinePathView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_NTKKeylinePathView)initWithPath:(id)a3 secondPath:(id)a4 scale:(double)a5;
- (void)drawRect:(CGRect)a3;
@end

@implementation _NTKKeylinePathView

- (_NTKKeylinePathView)initWithPath:(id)a3 secondPath:(id)a4 scale:(double)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = _NTKKeylinePathView;
  v11 = [(CLKUIColoringView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v11)
  {
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, a5, a5);
    location = v17;
    [v9 applyTransform:&location];
    location = v17;
    [v10 applyTransform:&location];
    objc_storeStrong(&v11->_path, a3);
    objc_storeStrong(&v11->_secondPath, a4);
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

- (void)drawRect:(CGRect)a3
{
  [(_NTKKeylinePathView *)self bounds:a3.origin.x];
  if (!CGRectIsEmpty(v7))
  {
    v4 = [(_NTKKeylinePathView *)self contentColor];
    [v4 set];

    [(UIBezierPath *)self->_path setLineWidth:1.5];
    [(UIBezierPath *)self->_path stroke];
    [(UIBezierPath *)self->_secondPath setLineWidth:1.5];
    secondPath = self->_secondPath;

    [(UIBezierPath *)secondPath stroke];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIBezierPath *)self->_path bounds:a3.width];
  v4 = v3 + 1.5;
  v6 = v5 + 1.5;
  result.height = v6;
  result.width = v4;
  return result;
}

@end