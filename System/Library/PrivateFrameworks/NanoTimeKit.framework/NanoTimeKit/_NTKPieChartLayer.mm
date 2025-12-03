@interface _NTKPieChartLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_NTKPieChartLayer)init;
- (id)actionForKey:(id)key;
- (void)drawInContext:(CGContext *)context;
@end

@implementation _NTKPieChartLayer

- (_NTKPieChartLayer)init
{
  v5.receiver = self;
  v5.super_class = _NTKPieChartLayer;
  v2 = [(_NTKPieChartLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_NTKPieChartLayer *)v2 setProgress:0.01];
  }

  return v3;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____NTKPieChartLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

- (id)actionForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"])
  {
    v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:keyCopy];
    presentationLayer = [(_NTKPieChartLayer *)self presentationLayer];
    v7 = [presentationLayer valueForKey:keyCopy];
    [v5 setFromValue:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _NTKPieChartLayer;
    v5 = [(_NTKPieChartLayer *)&v9 actionForKey:keyCopy];
  }

  return v5;
}

- (void)drawInContext:(CGContext *)context
{
  [(_NTKPieChartLayer *)self progress];
  CLKInterpolateBetweenFloatsClipped();
  v6 = v5;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
  cGColor = [v7 CGColor];

  CGContextSetFillColorWithColor(context, cGColor);
  [(_NTKPieChartLayer *)self bounds];
  MidX = CGRectGetMidX(v13);
  [(_NTKPieChartLayer *)self bounds];
  MidY = CGRectGetMidY(v14);
  if (MidX >= MidY)
  {
    MidX = MidY;
  }

  [(_NTKPieChartLayer *)self bounds];
  v11 = CGRectGetMidY(v15);
  CGContextMoveToPoint(context, MidX, v11);
  CGContextAddArc(context, MidX, v11, MidX, -1.57079633, (v6 + v6) * 3.14159265 + -1.57079633, 1);
  CGContextClosePath(context);
  CGContextFillPath(context);
  v12.receiver = self;
  v12.super_class = _NTKPieChartLayer;
  [(_NTKPieChartLayer *)&v12 drawInContext:context];
}

@end