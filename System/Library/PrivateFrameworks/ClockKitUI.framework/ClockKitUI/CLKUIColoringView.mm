@interface CLKUIColoringView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CLKUIColoringView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
@end

@implementation CLKUIColoringView

- (CLKUIColoringView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CLKUIColoringView;
  v3 = [(CLKUIColoringView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CLKUIColoringView *)v3 setOpaque:0];
    v5 = objc_alloc_init(_CLKUIColorManager);
    colorManager = v4->_colorManager;
    v4->_colorManager = v5;

    v7 = v4->_colorManager;
    layer = [(CLKUIColoringView *)v4 layer];
    [(_CLKUIColorManager *)v7 setLayer:layer];
  }

  return v4;
}

- (void)setBackgroundColor:(id)color
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v5.receiver = self;
  v5.super_class = CLKUIColoringView;
  [(CLKUIColoringView *)&v5 setBackgroundColor:clearColor];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = CLKUIColoringView;
  v5 = [(CLKUIColoringView *)&v7 _shouldAnimatePropertyWithKey:keyCopy]|| [(_CLKUIColorManager *)self->_colorManager shouldAnimatePropertyWithKey:keyCopy];

  return v5;
}

@end