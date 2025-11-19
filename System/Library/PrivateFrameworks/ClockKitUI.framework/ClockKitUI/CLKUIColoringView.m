@interface CLKUIColoringView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CLKUIColoringView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation CLKUIColoringView

- (CLKUIColoringView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CLKUIColoringView;
  v3 = [(CLKUIColoringView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringView *)v3 setOpaque:0];
    v5 = objc_alloc_init(_CLKUIColorManager);
    colorManager = v4->_colorManager;
    v4->_colorManager = v5;

    v7 = v4->_colorManager;
    v8 = [(CLKUIColoringView *)v4 layer];
    [(_CLKUIColorManager *)v7 setLayer:v8];
  }

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5.receiver = self;
  v5.super_class = CLKUIColoringView;
  [(CLKUIColoringView *)&v5 setBackgroundColor:v4];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKUIColoringView;
  v5 = [(CLKUIColoringView *)&v7 _shouldAnimatePropertyWithKey:v4]|| [(_CLKUIColorManager *)self->_colorManager shouldAnimatePropertyWithKey:v4];

  return v5;
}

@end