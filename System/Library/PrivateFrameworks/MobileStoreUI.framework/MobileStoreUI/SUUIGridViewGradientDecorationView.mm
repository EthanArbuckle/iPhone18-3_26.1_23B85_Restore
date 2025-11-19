@interface SUUIGridViewGradientDecorationView
- (SUUIGridViewGradientDecorationView)initWithFrame:(CGRect)a3;
- (void)_createGradient:(id)a3 withGradientType:(int64_t)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation SUUIGridViewGradientDecorationView

- (SUUIGridViewGradientDecorationView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIGridViewGradientDecorationView;
  return [(SUUIGridViewGradientDecorationView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUIGridViewGradientDecorationView;
  [(SUUIGridViewGradientDecorationView *)&v9 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(SUUIGridViewGradientDecorationView *)self bounds];
  [(SUUIGridViewGradientDecorationBackgroundView *)backgroundView setFrame:?];
  if ([(IKColor *)self->_kolor colorType]== 3)
  {
    v4 = MEMORY[0x277CBEB18];
    v5 = [(IKColor *)self->_kolor gradientColors];
    v6 = [v4 arrayWithArray:v5];

    if ([v6 count])
    {
      v7 = [(IKColor *)self->_kolor gradientColors];
      v8 = [v7 firstObject];

      [v6 removeObjectAtIndex:0];
      [(SUUIGridViewGradientDecorationBackgroundView *)self->_backgroundView setBackgroundColor:v8];
      [(SUUIGridViewGradientDecorationView *)self _createGradient:v6 withGradientType:[(IKColor *)self->_kolor gradientDirectionType]];
    }
  }
}

- (void)_createGradient:(id)a3 withGradientType:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SUUIGridViewGradientDecorationBackgroundView *)self->_backgroundView layer];
  if ([(IKColor *)self->_kolor gradientType]== 1)
  {
    v7 = 1.0;
    v8 = 0.5;
    v9 = 0.0;
    v10 = 0.5;
  }

  else
  {
    if ([(IKColor *)self->_kolor gradientType]!= 2)
    {
      goto LABEL_6;
    }

    v9 = 0.5;
    v10 = 1.0;
    v8 = 0.0;
    v7 = 0.5;
  }

  [v6 setStartPoint:{v8, v9}];
  [v6 setEndPoint:{v10, v7}];
LABEL_6:
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        [v11 addObject:{objc_msgSend(v17, "CGColor", v18)}];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [v6 setColors:v11];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUUIGridViewGradientDecorationView;
  [(SUUIGridViewGradientDecorationView *)&v15 applyLayoutAttributes:v4];
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(SUUIGridViewGradientDecorationBackgroundView *)backgroundView removeFromSuperview];
    v6 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  v7 = [SUUIGridViewGradientDecorationBackgroundView alloc];
  v8 = [(SUUIGridViewGradientDecorationBackgroundView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = self->_backgroundView;
  self->_backgroundView = v8;

  [(SUUIGridViewGradientDecorationBackgroundView *)self->_backgroundView setUserInteractionEnabled:0];
  [(SUUIGridViewGradientDecorationView *)self addSubview:self->_backgroundView];
  v10 = [v4 gradientColor];
  kolor = self->_kolor;
  self->_kolor = v10;

  if ([(IKColor *)self->_kolor colorType]!= 3)
  {
    v12 = self->_backgroundView;
    v13 = [v4 gradientColor];
    v14 = [v13 color];
    [(SUUIGridViewGradientDecorationBackgroundView *)v12 setBackgroundColor:v14];
  }
}

@end