@interface CSContentStyleGradientView
- (CSContentStyleGradientView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setColors:(id)colors locations:(id)locations type:(id)type;
- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
@end

@implementation CSContentStyleGradientView

- (CSContentStyleGradientView)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CSContentStyleGradientView;
  v3 = [(CSContentStyleGradientView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSContentStyleGradientView *)v3 setClipsToBounds:1];
    layer = [MEMORY[0x1E6979380] layer];
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = layer;

    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:0.5, 1.0];
    v7 = v4->_gradientLayer;
    [(CSContentStyleGradientView *)v4 bounds];
    [(CAGradientLayer *)v7 setFrame:?];
    layer2 = [(CSContentStyleGradientView *)v4 layer];
    [layer2 addSublayer:v4->_gradientLayer];

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

- (void)setColors:(id)colors locations:(id)locations type:(id)type
{
  colorsCopy = colors;
  locationsCopy = locations;
  typeCopy = type;
  if (colorsCopy)
  {
    colors = [(CAGradientLayer *)self->_gradientLayer colors];
    v11 = [colorsCopy isEqualToArray:colors] ^ 1;

    if (locationsCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (typeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!locationsCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  locations = [(CAGradientLayer *)self->_gradientLayer locations];
  v13 = [locationsCopy isEqualToArray:locations] ^ 1;

  if (typeCopy)
  {
LABEL_4:
    type = [(CAGradientLayer *)self->_gradientLayer type];
    v15 = type != typeCopy;

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (v11)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(CAGradientLayer *)self->_gradientLayer setColors:colorsCopy];
    if (v13)
    {
LABEL_10:
      [(CAGradientLayer *)self->_gradientLayer setLocations:locationsCopy];
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
    [(CAGradientLayer *)self->_gradientLayer setType:typeCopy];
  }

  [MEMORY[0x1E6979518] commit];
LABEL_17:
}

- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v6 = point.y;
  v7 = point.x;
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