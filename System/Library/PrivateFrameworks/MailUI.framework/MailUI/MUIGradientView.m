@interface MUIGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)gradientColors;
- (NSArray)locations;
- (void)setEndPoint:(CGPoint)a3;
- (void)setGradientColors:(id)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation MUIGradientView

- (void)setGradientColors:(id)a3
{
  v5 = [a3 ef_map:&__block_literal_global_19];
  v4 = [(MUIGradientView *)self gradientLayer];
  [v4 setColors:v5];
}

uint64_t __37__MUIGradientView_setGradientColors___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (NSArray)gradientColors
{
  v2 = [(MUIGradientView *)self gradientLayer];
  v3 = [v2 colors];
  v4 = [v3 ef_map:&__block_literal_global_3];

  return v4;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(MUIGradientView *)self gradientLayer];
  [v5 setLocations:v4];
}

- (NSArray)locations
{
  v2 = [(MUIGradientView *)self gradientLayer];
  v3 = [v2 locations];

  return v3;
}

- (void)setStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUIGradientView *)self gradientLayer];
  [v5 setStartPoint:{x, y}];
}

- (CGPoint)startPoint
{
  v2 = [(MUIGradientView *)self gradientLayer];
  [v2 startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MUIGradientView *)self gradientLayer];
  [v5 setEndPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(MUIGradientView *)self gradientLayer];
  [v2 endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end