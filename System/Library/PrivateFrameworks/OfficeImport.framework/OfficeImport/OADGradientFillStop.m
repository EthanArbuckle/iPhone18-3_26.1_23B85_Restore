@interface OADGradientFillStop
+ (void)addStopWithColor:(id)a3 position:(float)a4 toArray:(id)a5;
- (BOOL)isEqual:(id)a3;
- (OADGradientFillStop)initWithColor:(id)a3 position:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStyleColor:(id)a3;
@end

@implementation OADGradientFillStop

- (OADGradientFillStop)initWithColor:(id)a3 position:(float)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OADGradientFillStop;
  v8 = [(OADGradientFillStop *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mColor, a3);
    v9->mPosition = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(OADColor *)self->mColor copyWithZone:?];
  v6 = [objc_opt_class() allocWithZone:a3];
  *&v7 = self->mPosition;
  v8 = [v6 initWithColor:v5 position:v7];

  return v8;
}

- (void)setStyleColor:(id)a3
{
  v6 = a3;
  v4 = [(OADColor *)self->mColor colorForStyleColor:?];
  mColor = self->mColor;
  self->mColor = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
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

+ (void)addStopWithColor:(id)a3 position:(float)a4 toArray:(id)a5
{
  v11 = a3;
  v7 = a5;
  if (v11)
  {
    v8 = [OADGradientFillStop alloc];
    *&v9 = a4;
    v10 = [(OADGradientFillStop *)v8 initWithColor:v11 position:v9];
    [v7 addObject:v10];
  }
}

@end