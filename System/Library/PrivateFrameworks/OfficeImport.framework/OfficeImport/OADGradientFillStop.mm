@interface OADGradientFillStop
+ (void)addStopWithColor:(id)color position:(float)position toArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (OADGradientFillStop)initWithColor:(id)color position:(float)position;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStyleColor:(id)color;
@end

@implementation OADGradientFillStop

- (OADGradientFillStop)initWithColor:(id)color position:(float)position
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = OADGradientFillStop;
  v8 = [(OADGradientFillStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mColor, color);
    v9->mPosition = position;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(OADColor *)self->mColor copyWithZone:?];
  v6 = [objc_opt_class() allocWithZone:zone];
  *&v7 = self->mPosition;
  v8 = [v6 initWithColor:v5 position:v7];

  return v8;
}

- (void)setStyleColor:(id)color
{
  colorCopy = color;
  v4 = [(OADColor *)self->mColor colorForStyleColor:?];
  mColor = self->mColor;
  self->mColor = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if ([(OADColor *)self->mColor isEqual:*(v7 + 1)])
    {
      v6 = self->mPosition == v7[4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)addStopWithColor:(id)color position:(float)position toArray:(id)array
{
  colorCopy = color;
  arrayCopy = array;
  if (colorCopy)
  {
    v8 = [OADGradientFillStop alloc];
    *&v9 = position;
    v10 = [(OADGradientFillStop *)v8 initWithColor:colorCopy position:v9];
    [arrayCopy addObject:v10];
  }
}

@end