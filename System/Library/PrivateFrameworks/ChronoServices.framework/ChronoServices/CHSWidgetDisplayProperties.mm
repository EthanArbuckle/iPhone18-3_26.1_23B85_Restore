@interface CHSWidgetDisplayProperties
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CHSWidgetDisplayProperties)initWithCoder:(id)coder;
- (CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)configuration;
- (CHSWidgetDisplayProperties)initWithScale:(double)scale colorGamut:(unint64_t)gamut;
- (CHSWidgetDisplayProperties)initWithSize:(CGSize)size scale:(double)scale colorGamut:(unint64_t)gamut;
- (CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)properties;
- (id)description;
- (id)fallbackDisplayProperties;
- (int64_t)comparedTo:(id)to;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetDisplayProperties

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendCGFloat:self->_scale];
  v5 = [builder appendUnsignedInteger:self->_colorGamut];
  v6 = [builder hash];

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
  build = [v3 build];

  return build;
}

- (CHSWidgetDisplayProperties)initWithScale:(double)scale colorGamut:(unint64_t)gamut
{
  v12.receiver = self;
  v12.super_class = CHSWidgetDisplayProperties;
  result = [(CHSWidgetDisplayProperties *)&v12 init];
  if (result)
  {
    result->_scale = scale;
    result->_colorGamut = gamut;
    __asm { FMOV            V0.2D, #1.0 }

    result->_size = _Q0;
  }

  return result;
}

- (CHSWidgetDisplayProperties)initWithSize:(CGSize)size scale:(double)scale colorGamut:(unint64_t)gamut
{
  height = size.height;
  width = size.width;
  result = [(CHSWidgetDisplayProperties *)self initWithScale:gamut colorGamut:scale];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  colorGamut = [configurationCopy colorGamut];
  [configurationCopy pointScale];
  v6 = [(CHSWidgetDisplayProperties *)self initWithScale:colorGamut != 1 colorGamut:?];

  return v6;
}

- (CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy scale];
  v6 = -[CHSWidgetDisplayProperties initWithScale:colorGamut:](self, "initWithScale:colorGamut:", [propertiesCopy colorGamut], v5);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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

- (int64_t)comparedTo:(id)to
{
  toCopy = to;
  v5 = [(CHSWidgetDisplayProperties *)self hash];
  if (v5 >= [toCopy hash])
  {
    v7 = [(CHSWidgetDisplayProperties *)self hash];
    v6 = v7 > [toCopy hash];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)fallbackDisplayProperties
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_colorGamut)
  {
    v4 = [[CHSWidgetDisplayProperties alloc] initWithScale:0 colorGamut:self->_scale];
  }

  else
  {
    v4 = [[CHSWidgetDisplayProperties alloc] initWithScale:1 colorGamut:self->_scale];
  }

  [array addObject:v4];

  for (i = 3.0; i > self->_scale; i = i + -1.0)
  {
    if (self->_colorGamut)
    {
      v6 = [[CHSWidgetDisplayProperties alloc] initWithScale:self->_colorGamut colorGamut:i];
      [array addObject:v6];

      v7 = [[CHSWidgetDisplayProperties alloc] initWithScale:0 colorGamut:i];
    }

    else
    {
      v8 = [[CHSWidgetDisplayProperties alloc] initWithScale:self->_colorGamut colorGamut:i];
      [array addObject:v8];

      v7 = [[CHSWidgetDisplayProperties alloc] initWithScale:1 colorGamut:i];
    }

    [array addObject:v7];
  }

  return array;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scale = self->_scale;
  *&scale = scale;
  v7 = coderCopy;
  [coderCopy encodeFloat:@"scale" forKey:scale];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_colorGamut];
  [v7 encodeObject:v6 forKey:@"colorGamut"];
}

- (CHSWidgetDisplayProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"scale"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorGamut"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  v9 = v6;

  v10 = [(CHSWidgetDisplayProperties *)self initWithScale:unsignedIntegerValue colorGamut:v9];
  v11 = v10;
  if (v10)
  {
    v10->_scale = v9;
    v10->_colorGamut = unsignedIntegerValue;
  }

  return v11;
}

@end