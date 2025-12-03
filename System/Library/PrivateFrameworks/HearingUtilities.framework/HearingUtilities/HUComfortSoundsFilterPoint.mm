@interface HUComfortSoundsFilterPoint
- (BOOL)isEqual:(id)equal;
- (HUComfortSoundsFilterPoint)initWithCoder:(id)coder;
- (HUComfortSoundsFilterPoint)initWithPoint:(CGPoint)point;
- (double)frequencyForBandPass;
- (double)gainForHighResonance;
- (double)gainForLeftBellFilters;
- (double)gainForLowResonance;
- (double)gainForRightBellFilters;
- (double)widthForBandPass;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HUComfortSoundsFilterPoint

- (HUComfortSoundsFilterPoint)initWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8.receiver = self;
  v8.super_class = HUComfortSoundsFilterPoint;
  v5 = [(HUComfortSoundsFilterPoint *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUComfortSoundsFilterPoint *)v5 setXValue:x];
    [(HUComfortSoundsFilterPoint *)v6 setYValue:y];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HUComfortSoundsFilterPoint *)self xValue];
  *&v4 = v4;
  [coderCopy encodeFloat:@"y" forKey:v4];
  [(HUComfortSoundsFilterPoint *)self yValue];
  *&v5 = v5;
  [coderCopy encodeFloat:@"x" forKey:v5];
}

- (HUComfortSoundsFilterPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"y"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"x"];
  v8 = v7;

  return [(HUComfortSoundsFilterPoint *)self initWithPoint:v6, v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(HUComfortSoundsFilterPoint *)self xValue];
    v7 = v6;
    [v5 xValue];
    if (v7 == v8)
    {
      [(HUComfortSoundsFilterPoint *)self yValue];
      v10 = v9;
      [v5 yValue];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(HUComfortSoundsFilterPoint *)self xValue];
  *&v4 = v4;
  v5 = [v3 numberWithFloat:v4];
  v6 = [v5 hash];

  v7 = MEMORY[0x1E696AD98];
  [(HUComfortSoundsFilterPoint *)self yValue];
  *&v8 = v8;
  v9 = [v7 numberWithFloat:v8];
  v10 = [v9 hash];

  return v10 ^ v6;
}

- (double)frequencyForBandPass
{
  [(HUComfortSoundsFilterPoint *)self xValue];
  v4 = v3;
  [(HUComfortSoundsFilterPoint *)self xValue];
  if (v4 >= 0.0)
  {
    v6 = pow(1.06, fmax(fmin(v5, 1.0), 0.0)) + -1.0;
    v7 = 1000.0;
    v8 = 283333.333;
  }

  else
  {
    v6 = pow(1.06, fmax(fmin(v5, 0.0), -1.0) + 1.0) + -1.0;
    v7 = 50.0;
    v8 = 15833.3333;
  }

  return v7 + v6 * v8;
}

- (double)widthForBandPass
{
  [(HUComfortSoundsFilterPoint *)self yValue];
  [(HUComfortSoundsFilterPoint *)self yValue];

  [HUComfortSoundsFilterPoint linearTransformation:"linearTransformation:inputMin:inputMax:outputMin:outputMax:" inputMin:? inputMax:? outputMin:? outputMax:?];
  return result;
}

- (double)gainForLowResonance
{
  [(HUComfortSoundsFilterPoint *)self xValue];
  [(HUComfortSoundsFilterPoint *)self xValue];

  [HUComfortSoundsFilterPoint linearTransformation:"linearTransformation:inputMin:inputMax:outputMin:outputMax:" inputMin:? inputMax:? outputMin:? outputMax:?];
  return result;
}

- (double)gainForHighResonance
{
  [(HUComfortSoundsFilterPoint *)self xValue];
  [(HUComfortSoundsFilterPoint *)self xValue];

  [HUComfortSoundsFilterPoint linearTransformation:"linearTransformation:inputMin:inputMax:outputMin:outputMax:" inputMin:? inputMax:? outputMin:? outputMax:?];
  return result;
}

- (double)gainForLeftBellFilters
{
  [(HUComfortSoundsFilterPoint *)self yValue];
  if (v3 >= 0.0)
  {
    return 0.0;
  }

  [(HUComfortSoundsFilterPoint *)self yValue];

  [HUComfortSoundsFilterPoint linearTransformation:"linearTransformation:inputMin:inputMax:outputMin:outputMax:" inputMin:? inputMax:? outputMin:? outputMax:?];
  return result;
}

- (double)gainForRightBellFilters
{
  [(HUComfortSoundsFilterPoint *)self yValue];
  if (v3 <= 0.0)
  {
    return 0.0;
  }

  [(HUComfortSoundsFilterPoint *)self yValue];

  [HUComfortSoundsFilterPoint linearTransformation:"linearTransformation:inputMin:inputMax:outputMin:outputMax:" inputMin:? inputMax:? outputMin:? outputMax:?];
  return result;
}

@end