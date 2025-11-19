@interface CSContentStyleGradientView
- (CSContentStyleGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setColors:(id)a3 locations:(id)a4 type:(id)a5;
- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
@end

@implementation CSContentStyleGradientView

- (CSContentStyleGradientView)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CSContentStyleGradientView;
  v3 = [(CSContentStyleGradientView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSContentStyleGradientView *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x1E6979380] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v5;

    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:0.5, 1.0];
    v7 = v4->_gradientLayer;
    [(CSContentStyleGradientView *)v4 bounds];
    [(CAGradientLayer *)v7 setFrame:?];
    v8 = [(CSContentStyleGradientView *)v4 layer];
    [v8 addSublayer:v4->_gradientLayer];

    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v9 setValue:&unk_1F15930E0 forKey:@"inputRadius"];
    [v9 setName:@"filters.gaussianBlur.inputRadius"];
    v10 = v4->_gradientLayer;
    v14[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(CAGradientLayer *)v10 setFilters:v11];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSContentStyleGradientView;
  [(CSContentStyleGradientView *)&v4 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  gradientLayer = self->_gradientLayer;
  [(CSContentStyleGradientView *)self bounds];
  [(CAGradientLayer *)gradientLayer setFrame:?];
  [MEMORY[0x1E6979518] commit];
}

- (void)setColors:(id)a3 locations:(id)a4 type:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (v16)
  {
    v10 = [(CAGradientLayer *)self->_gradientLayer colors];
    v11 = [v16 isEqualToArray:v10] ^ 1;

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [(CAGradientLayer *)self->_gradientLayer locations];
  v13 = [v8 isEqualToArray:v12] ^ 1;

  if (v9)
  {
LABEL_4:
    v14 = [(CAGradientLayer *)self->_gradientLayer type];
    v15 = v14 != v9;

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (v11)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(CAGradientLayer *)self->_gradientLayer setColors:v16];
    if (v13)
    {
LABEL_10:
      [(CAGradientLayer *)self->_gradientLayer setLocations:v8];
    }
  }

  else
  {
    if (((v13 | v15) & 1) == 0)
    {
      goto LABEL_17;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (v15)
  {
    [(CAGradientLayer *)self->_gradientLayer setType:v9];
  }

  [MEMORY[0x1E6979518] commit];
LABEL_17:
}

- (void)setStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  [(CAGradientLayer *)self->_gradientLayer startPoint];
  v11 = v6 == v10 && v7 == v9;
  [(CAGradientLayer *)self->_gradientLayer endPoint];
  v14 = y == v13 && x == v12;
  if (!v11 || !v14)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (!v11)
    {
      [(CAGradientLayer *)self->_gradientLayer setStartPoint:v7, v6];
    }

    if (!v14)
    {
      [(CAGradientLayer *)self->_gradientLayer setEndPoint:x, y];
    }

    v15 = MEMORY[0x1E6979518];

    [v15 commit];
  }
}

@end