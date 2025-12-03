@interface MFPGradientBrush
- (MFPGradientBrush)init;
- (id)colorAtPosition:(float)position;
- (void)createPhoneBrush;
- (void)createShadingFunction;
- (void)createStopsFromBlend;
- (void)createStopsFromStartAndEndColors;
- (void)dealloc;
- (void)fillPath:(id)path;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation MFPGradientBrush

- (MFPGradientBrush)init
{
  v5.receiver = self;
  v5.super_class = MFPGradientBrush;
  result = [(MFPGradientBrush *)&v5 init];
  if (result)
  {
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v3 = *(MEMORY[0x277CBF2C0] + 32);
    *&result->mTransform.a = *MEMORY[0x277CBF2C0];
    *&result->mTransform.c = v4;
    *&result->mTransform.tx = v3;
  }

  return result;
}

- (void)dealloc
{
  CGShadingRelease(self->mShading);
  CGFunctionRelease(self->mShadingFunction);
  v3.receiver = self;
  v3.super_class = MFPGradientBrush;
  [(MFPGradientBrush *)&v3 dealloc];
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->mTransform.a = *&transform->a;
  *&self->mTransform.c = v4;
  *&self->mTransform.tx = v3;
}

- (void)fillPath:(id)path
{
  pathCopy = path;
  v4 = TCCurrentGraphicsContext();
  CGContextSaveGState(v4);
  [pathCopy addClip];
  CGContextDrawShading(v4, self->mShading);
  CGContextRestoreGState(v4);
}

- (void)createPhoneBrush
{
  if (self->mColorBlend)
  {
    [(MFPGradientBrush *)self createStopsFromColorBlend];
  }

  else if (self->mBlend)
  {
    [(MFPGradientBrush *)self createStopsFromBlend];
  }

  else
  {
    [(MFPGradientBrush *)self createStopsFromStartAndEndColors];
  }

  [(MFPGradientBrush *)self createShadingFunction];

  [(MFPGradientBrush *)self createShading];
}

- (id)colorAtPosition:(float)position
{
  if (position <= 0.0)
  {
    lastObject = [(NSArray *)self->mStops objectAtIndex:0];
    color = [lastObject color];
LABEL_11:
    v13 = color;
    goto LABEL_12;
  }

  mStops = self->mStops;
  if (position >= 1.0)
  {
    lastObject = [(NSArray *)mStops lastObject];
    color = [lastObject color];
    goto LABEL_11;
  }

  v6 = [(NSArray *)mStops count];
  if (v6 == 1)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 1;
  while (1)
  {
    lastObject = [(NSArray *)self->mStops objectAtIndex:v8 - 1];
    v10 = [(NSArray *)self->mStops objectAtIndex:v8];
    [lastObject position];
    if (v11 <= position)
    {
      [v10 position];
      if (v12 >= position)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_8;
    }
  }

  [v10 position];
  v17 = v16;
  [lastObject position];
  v19 = v18;
  [lastObject position];
  v21 = v20;
  color2 = [lastObject color];
  color3 = [v10 color];
  v13 = [color2 blendedColorWithFraction:color3 ofColor:((position - v21) / (v17 - v19))];

LABEL_12:
LABEL_13:

  return v13;
}

- (void)createStopsFromBlend
{
  startColor = [(MFPGradientBrush *)self startColor];
  endColor = [(MFPGradientBrush *)self endColor];
  v4 = [(NSArray *)self->mBlend count];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [(NSArray *)self->mBlend objectAtIndex:i];
      [v7 position];
      v9 = v8;
      [v7 factor];
      v11 = [startColor blendedColorWithFraction:endColor ofColor:v10];
      v12 = [MFPGradientStop alloc];
      LODWORD(v13) = v9;
      v14 = [(MFPGradientStop *)v12 initWithColor:v11 position:v13];
      [(NSArray *)v5 addObject:v14];
    }
  }

  mStops = self->mStops;
  self->mStops = v5;
}

- (void)createStopsFromStartAndEndColors
{
  startColor = [(MFPGradientBrush *)self startColor];
  v3 = [[MFPGradientStop alloc] initWithColor:startColor position:0.0];
  endColor = [(MFPGradientBrush *)self endColor];
  v5 = [MFPGradientStop alloc];
  LODWORD(v6) = 1.0;
  v7 = [(MFPGradientStop *)v5 initWithColor:endColor position:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, v7, 0}];
  mStops = self->mStops;
  self->mStops = v8;
}

- (void)createShadingFunction
{
  v11 = *MEMORY[0x277D85DE8];
  *domain = xmmword_25D6FDA60;
  range[0] = 0.0;
  v4 = 0;
  v6 = 0;
  range[1] = 1.0;
  v5 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v8 = 0;
  v9 = 0x3FF0000000000000;
  callbacks.version = 0;
  callbacks.evaluate = evaluateGradient;
  callbacks.releaseInfo = 0;
  self->mShadingFunction = CGFunctionCreate(self, 1uLL, domain, 4uLL, range, &callbacks);
}

@end