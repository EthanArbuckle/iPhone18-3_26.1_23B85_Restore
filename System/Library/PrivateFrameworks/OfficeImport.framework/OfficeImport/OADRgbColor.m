@interface OADRgbColor
+ (id)black;
+ (id)rgbColorWithRed:(float)a3 green:(float)a4 blue:(float)a5;
+ (id)rgbColorWithRedByte:(float)a3 greenByte:(float)a4 blueByte:(float)a5;
+ (id)rgbColorWithTSUColor:(id)a3;
+ (id)rgbColorWithWhite:(float)a3;
+ (id)rgbColorWithWhiteByte:(float)a3;
+ (id)white;
- (BOOL)isEqual:(id)a3;
- (OADRgbColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5;
- (OADRgbColor)initWithRedByte:(float)a3 greenByte:(float)a4 blueByte:(float)a5;
- (OADRgbColor)initWithWhite:(float)a3;
- (OADRgbColor)initWithWhiteByte:(float)a3;
- (OADRgbColor)rgbColorWithFraction:(float)a3 ofRgbColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADRgbColor

+ (id)black
{
  v2 = [[OADRgbColor alloc] initWithRed:0.0 green:0.0 blue:0.0];

  return v2;
}

+ (id)white
{
  v2 = [OADRgbColor alloc];
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  v6 = [(OADRgbColor *)v2 initWithRed:v3 green:v4 blue:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(OADRgbColor *)self redByte];
  v4 = [(OADRgbColor *)self greenByte];
  v5 = [(OADRgbColor *)self blueByte]| (v4 << 8) | (v3 << 16);
  v7.receiver = self;
  v7.super_class = OADRgbColor;
  return [(OADColor *)&v7 hash]^ v5;
}

- (OADRgbColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5
{
  v9.receiver = self;
  v9.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v9 init];
  if (result)
  {
    result->mRed = a3;
    result->mGreen = a4;
    result->mBlue = a5;
  }

  return result;
}

+ (id)rgbColorWithRed:(float)a3 green:(float)a4 blue:(float)a5
{
  v8 = [OADRgbColor alloc];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;
  v12 = [(OADRgbColor *)v8 initWithRed:v9 green:v10 blue:v11];

  return v12;
}

- (OADRgbColor)initWithRedByte:(float)a3 greenByte:(float)a4 blueByte:(float)a5
{
  v9.receiver = self;
  v9.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v9 init];
  if (result)
  {
    result->mRed = a3 / 255.0;
    result->mGreen = a4 / 255.0;
    result->mBlue = a5 / 255.0;
  }

  return result;
}

+ (id)rgbColorWithRedByte:(float)a3 greenByte:(float)a4 blueByte:(float)a5
{
  v8 = [OADRgbColor alloc];
  *&v9 = a3;
  *&v10 = a4;
  *&v11 = a5;
  v12 = [(OADRgbColor *)v8 initWithRedByte:v9 greenByte:v10 blueByte:v11];

  return v12;
}

- (OADRgbColor)initWithWhite:(float)a3
{
  v5.receiver = self;
  v5.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v5 init];
  if (result)
  {
    result->mRed = a3;
    result->mGreen = a3;
    result->mBlue = a3;
  }

  return result;
}

+ (id)rgbColorWithWhite:(float)a3
{
  v4 = [OADRgbColor alloc];
  *&v5 = a3;
  v6 = [(OADRgbColor *)v4 initWithWhite:v5];

  return v6;
}

- (OADRgbColor)initWithWhiteByte:(float)a3
{
  v5.receiver = self;
  v5.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v5 init];
  if (result)
  {
    result->mRed = a3 / 255.0;
    result->mGreen = a3 / 255.0;
    result->mBlue = a3 / 255.0;
  }

  return result;
}

+ (id)rgbColorWithWhiteByte:(float)a3
{
  v4 = [OADRgbColor alloc];
  *&v5 = a3;
  v6 = [(OADRgbColor *)v4 initWithWhiteByte:v5];

  return v6;
}

- (OADRgbColor)rgbColorWithFraction:(float)a3 ofRgbColor:(id)a4
{
  v6 = a4;
  [(OADRgbColor *)self red];
  v8 = v7;
  [v6 red];
  v10 = v9;
  [(OADRgbColor *)self green];
  v12 = v11;
  [v6 green];
  v14 = v13;
  [(OADRgbColor *)self blue];
  v16 = v15;
  [v6 blue];
  v17 = 1.0 - a3;
  v18 = (v10 * a3) + v17 * v8;
  v19 = (v14 * a3) + v17 * v12;
  *&v19 = v19;
  v21 = (v20 * a3) + v17 * v16;
  *&v17 = v21;
  *&v21 = v18;
  v22 = [OADRgbColor rgbColorWithRed:v21 green:v19 blue:v17];

  return v22;
}

+ (id)rgbColorWithTSUColor:(id)a3
{
  v3 = a3;
  v4 = [OADRgbColor alloc];
  [v3 redComponent];
  v6 = v5;
  [v3 greenComponent];
  v8 = v7;
  [v3 blueComponent];
  v9 = v6;
  *&v10 = v8;
  *&v12 = v11;
  *&v11 = v9;
  v13 = [(OADRgbColor *)v4 initWithRed:v11 green:v10 blue:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  *&v6 = self->mRed;
  *&v7 = self->mGreen;
  *&v8 = self->mBlue;
  v9 = [v5 initWithRed:v6 green:v7 blue:v8];
  v10 = [(OADColor *)self transforms];
  v11 = [v10 copyWithZone:a3];
  [v9 setTransforms:v11];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADRgbColor hash](self, "hash"), v5 == [v4 hash]))
  {
    v8.receiver = self;
    v8.super_class = OADRgbColor;
    v6 = [(OADColor *)&v8 isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end