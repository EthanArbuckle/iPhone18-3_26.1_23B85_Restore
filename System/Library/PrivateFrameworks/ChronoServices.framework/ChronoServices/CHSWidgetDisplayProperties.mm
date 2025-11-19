@interface CHSWidgetDisplayProperties
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (CHSWidgetDisplayProperties)initWithCoder:(id)a3;
- (CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)a3;
- (CHSWidgetDisplayProperties)initWithScale:(double)a3 colorGamut:(unint64_t)a4;
- (CHSWidgetDisplayProperties)initWithSize:(CGSize)a3 scale:(double)a4 colorGamut:(unint64_t)a5;
- (CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)a3;
- (id)description;
- (id)fallbackDisplayProperties;
- (int64_t)comparedTo:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetDisplayProperties

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendCGFloat:self->_scale];
  v5 = [v3 appendUnsignedInteger:self->_colorGamut];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendDouble:@"scale" withName:2 decimalPrecision:self->_scale];
  if (self->_colorGamut)
  {
    v5 = @"sRGB";
  }

  else
  {
    v5 = @"P3";
  }

  [v3 appendString:v5 withName:@"gamut"];
  v6 = [v3 build];

  return v6;
}

- (CHSWidgetDisplayProperties)initWithScale:(double)a3 colorGamut:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = CHSWidgetDisplayProperties;
  result = [(CHSWidgetDisplayProperties *)&v12 init];
  if (result)
  {
    result->_scale = a3;
    result->_colorGamut = a4;
    __asm { FMOV            V0.2D, #1.0 }

    result->_size = _Q0;
  }

  return result;
}

- (CHSWidgetDisplayProperties)initWithSize:(CGSize)a3 scale:(double)a4 colorGamut:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  result = [(CHSWidgetDisplayProperties *)self initWithScale:a5 colorGamut:a4];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 colorGamut];
  [v4 pointScale];
  v6 = [(CHSWidgetDisplayProperties *)self initWithScale:v5 != 1 colorGamut:?];

  return v6;
}

- (CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)a3
{
  v4 = a3;
  [v4 scale];
  v6 = -[CHSWidgetDisplayProperties initWithScale:colorGamut:](self, "initWithScale:colorGamut:", [v4 colorGamut], v5);

  return v6;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
    scale = self->_scale;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__CHSWidgetDisplayProperties_isEqual___block_invoke;
    v22[3] = &unk_1E74530A0;
    v11 = v8;
    v23 = v11;
    v12 = [v9 appendCGFloat:v22 counterpart:scale];
    colorGamut = self->_colorGamut;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __38__CHSWidgetDisplayProperties_isEqual___block_invoke_2;
    v20 = &unk_1E7453318;
    v21 = v11;
    v14 = [v9 appendUnsignedInteger:colorGamut counterpart:&v17];
    v15 = [v9 isEqual];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)comparedTo:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetDisplayProperties *)self hash];
  if (v5 >= [v4 hash])
  {
    v7 = [(CHSWidgetDisplayProperties *)self hash];
    v6 = v7 > [v4 hash];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)fallbackDisplayProperties
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->_colorGamut)
  {
    v4 = [[CHSWidgetDisplayProperties alloc] initWithScale:0 colorGamut:self->_scale];
  }

  else
  {
    v4 = [[CHSWidgetDisplayProperties alloc] initWithScale:1 colorGamut:self->_scale];
  }

  [v3 addObject:v4];

  for (i = 3.0; i > self->_scale; i = i + -1.0)
  {
    if (self->_colorGamut)
    {
      v6 = [[CHSWidgetDisplayProperties alloc] initWithScale:self->_colorGamut colorGamut:i];
      [v3 addObject:v6];

      v7 = [[CHSWidgetDisplayProperties alloc] initWithScale:0 colorGamut:i];
    }

    else
    {
      v8 = [[CHSWidgetDisplayProperties alloc] initWithScale:self->_colorGamut colorGamut:i];
      [v3 addObject:v8];

      v7 = [[CHSWidgetDisplayProperties alloc] initWithScale:1 colorGamut:i];
    }

    [v3 addObject:v7];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  scale = self->_scale;
  *&scale = scale;
  v7 = v4;
  [v4 encodeFloat:@"scale" forKey:scale];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_colorGamut];
  [v7 encodeObject:v6 forKey:@"colorGamut"];
}

- (CHSWidgetDisplayProperties)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"scale"];
  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorGamut"];
  v8 = [v7 unsignedIntegerValue];
  v9 = v6;

  v10 = [(CHSWidgetDisplayProperties *)self initWithScale:v8 colorGamut:v9];
  v11 = v10;
  if (v10)
  {
    v10->_scale = v9;
    v10->_colorGamut = v8;
  }

  return v11;
}

@end