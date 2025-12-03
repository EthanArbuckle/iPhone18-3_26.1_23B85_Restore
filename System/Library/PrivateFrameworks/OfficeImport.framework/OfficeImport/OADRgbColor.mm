@interface OADRgbColor
+ (id)black;
+ (id)rgbColorWithRed:(float)red green:(float)green blue:(float)blue;
+ (id)rgbColorWithRedByte:(float)byte greenByte:(float)greenByte blueByte:(float)blueByte;
+ (id)rgbColorWithTSUColor:(id)color;
+ (id)rgbColorWithWhite:(float)white;
+ (id)rgbColorWithWhiteByte:(float)byte;
+ (id)white;
- (BOOL)isEqual:(id)equal;
- (OADRgbColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (OADRgbColor)initWithRedByte:(float)byte greenByte:(float)greenByte blueByte:(float)blueByte;
- (OADRgbColor)initWithWhite:(float)white;
- (OADRgbColor)initWithWhiteByte:(float)byte;
- (OADRgbColor)rgbColorWithFraction:(float)fraction ofRgbColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
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
  redByte = [(OADRgbColor *)self redByte];
  greenByte = [(OADRgbColor *)self greenByte];
  v5 = [(OADRgbColor *)self blueByte]| (greenByte << 8) | (redByte << 16);
  v7.receiver = self;
  v7.super_class = OADRgbColor;
  return [(OADColor *)&v7 hash]^ v5;
}

- (OADRgbColor)initWithRed:(float)red green:(float)green blue:(float)blue
{
  v9.receiver = self;
  v9.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v9 init];
  if (result)
  {
    result->mRed = red;
    result->mGreen = green;
    result->mBlue = blue;
  }

  return result;
}

+ (id)rgbColorWithRed:(float)red green:(float)green blue:(float)blue
{
  v8 = [OADRgbColor alloc];
  *&v9 = red;
  *&v10 = green;
  *&v11 = blue;
  v12 = [(OADRgbColor *)v8 initWithRed:v9 green:v10 blue:v11];

  return v12;
}

- (OADRgbColor)initWithRedByte:(float)byte greenByte:(float)greenByte blueByte:(float)blueByte
{
  v9.receiver = self;
  v9.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v9 init];
  if (result)
  {
    result->mRed = byte / 255.0;
    result->mGreen = greenByte / 255.0;
    result->mBlue = blueByte / 255.0;
  }

  return result;
}

+ (id)rgbColorWithRedByte:(float)byte greenByte:(float)greenByte blueByte:(float)blueByte
{
  v8 = [OADRgbColor alloc];
  *&v9 = byte;
  *&v10 = greenByte;
  *&v11 = blueByte;
  v12 = [(OADRgbColor *)v8 initWithRedByte:v9 greenByte:v10 blueByte:v11];

  return v12;
}

- (OADRgbColor)initWithWhite:(float)white
{
  v5.receiver = self;
  v5.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v5 init];
  if (result)
  {
    result->mRed = white;
    result->mGreen = white;
    result->mBlue = white;
  }

  return result;
}

+ (id)rgbColorWithWhite:(float)white
{
  v4 = [OADRgbColor alloc];
  *&v5 = white;
  v6 = [(OADRgbColor *)v4 initWithWhite:v5];

  return v6;
}

- (OADRgbColor)initWithWhiteByte:(float)byte
{
  v5.receiver = self;
  v5.super_class = OADRgbColor;
  result = [(OADRgbColor *)&v5 init];
  if (result)
  {
    result->mRed = byte / 255.0;
    result->mGreen = byte / 255.0;
    result->mBlue = byte / 255.0;
  }

  return result;
}

+ (id)rgbColorWithWhiteByte:(float)byte
{
  v4 = [OADRgbColor alloc];
  *&v5 = byte;
  v6 = [(OADRgbColor *)v4 initWithWhiteByte:v5];

  return v6;
}

- (OADRgbColor)rgbColorWithFraction:(float)fraction ofRgbColor:(id)color
{
  colorCopy = color;
  [(OADRgbColor *)self red];
  v8 = v7;
  [colorCopy red];
  v10 = v9;
  [(OADRgbColor *)self green];
  v12 = v11;
  [colorCopy green];
  v14 = v13;
  [(OADRgbColor *)self blue];
  v16 = v15;
  [colorCopy blue];
  v17 = 1.0 - fraction;
  v18 = (v10 * fraction) + v17 * v8;
  v19 = (v14 * fraction) + v17 * v12;
  *&v19 = v19;
  v21 = (v20 * fraction) + v17 * v16;
  *&v17 = v21;
  *&v21 = v18;
  v22 = [OADRgbColor rgbColorWithRed:v21 green:v19 blue:v17];

  return v22;
}

+ (id)rgbColorWithTSUColor:(id)color
{
  colorCopy = color;
  v4 = [OADRgbColor alloc];
  [colorCopy redComponent];
  v6 = v5;
  [colorCopy greenComponent];
  v8 = v7;
  [colorCopy blueComponent];
  v9 = v6;
  *&v10 = v8;
  *&v12 = v11;
  *&v11 = v9;
  v13 = [(OADRgbColor *)v4 initWithRed:v11 green:v10 blue:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  *&v6 = self->mRed;
  *&v7 = self->mGreen;
  *&v8 = self->mBlue;
  v9 = [v5 initWithRed:v6 green:v7 blue:v8];
  transforms = [(OADColor *)self transforms];
  v11 = [transforms copyWithZone:zone];
  [v9 setTransforms:v11];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[OADRgbColor hash](self, "hash"), v5 == [equalCopy hash]))
  {
    v8.receiver = self;
    v8.super_class = OADRgbColor;
    v6 = [(OADColor *)&v8 isEqual:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end