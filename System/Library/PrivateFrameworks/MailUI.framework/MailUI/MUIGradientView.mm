@interface MUIGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)gradientColors;
- (NSArray)locations;
- (void)setEndPoint:(CGPoint)point;
- (void)setGradientColors:(id)colors;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation MUIGradientView

- (void)setGradientColors:(id)colors
{
  v5 = [colors ef_map:&__block_literal_global_19];
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer setColors:v5];
}

uint64_t __37__MUIGradientView_setGradientColors___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (NSArray)gradientColors
{
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  colors = [gradientLayer colors];
  v4 = [colors ef_map:&__block_literal_global_3];

  return v4;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer setLocations:locationsCopy];
}

- (NSArray)locations
{
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  locations = [gradientLayer locations];

  return locations;
}

- (void)setStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer setStartPoint:{x, y}];
}

- (CGPoint)startPoint
{
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer setEndPoint:{x, y}];
}

- (CGPoint)endPoint
{
  gradientLayer = [(MUIGradientView *)self gradientLayer];
  [gradientLayer endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end