@interface _CHSDynamicColorKey
+ (id)_darkP3;
+ (id)_darkSRGB;
+ (id)_lightP3;
+ (id)_lightSRGB;
+ (id)instanceForEncodingKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_CHSDynamicColorKey)initWithCoder:(id)a3;
- (_CHSDynamicColorKey)initWithColorScheme:(unint64_t)a3 displayGamut:(unint64_t)a4;
- (id)_encodingKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CHSDynamicColorKey

- (_CHSDynamicColorKey)initWithColorScheme:(unint64_t)a3 displayGamut:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _CHSDynamicColorKey;
  result = [(_CHSDynamicColorKey *)&v7 init];
  if (result)
  {
    result->_colorScheme = a3;
    result->_displayGamut = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_colorScheme == v4->_colorScheme && self->_displayGamut == v4->_displayGamut;
  }

  return v5;
}

- (id)_encodingKey
{
  displayGamut = self->_displayGamut;
  v3 = displayGamut == 0;
  if (displayGamut)
  {
    v4 = @"P_DarkSRGB";
  }

  else
  {
    v4 = @"P_DarkP3";
  }

  v5 = @"P_LightSRGB";
  if (v3)
  {
    v5 = @"P_LightP3";
  }

  if (self->_colorScheme == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (id)instanceForEncodingKey:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___CHSDynamicColorKey_instanceForEncodingKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (instanceForEncodingKey__onceToken != -1)
  {
    dispatch_once(&instanceForEncodingKey__onceToken, block);
  }

  v5 = [instanceForEncodingKey__keys objectForKeyedSubscript:v4];

  return v5;
}

+ (id)_lightSRGB
{
  if (_lightSRGB_onceToken != -1)
  {
    +[_CHSDynamicColorKey _lightSRGB];
  }

  v3 = _lightSRGB___instance;

  return v3;
}

+ (id)_darkSRGB
{
  if (_darkSRGB_onceToken != -1)
  {
    +[_CHSDynamicColorKey _darkSRGB];
  }

  v3 = _darkSRGB___instance;

  return v3;
}

+ (id)_lightP3
{
  if (_lightP3_onceToken != -1)
  {
    +[_CHSDynamicColorKey _lightP3];
  }

  v3 = _lightP3___instance;

  return v3;
}

+ (id)_darkP3
{
  if (_darkP3_onceToken != -1)
  {
    +[_CHSDynamicColorKey _darkP3];
  }

  v3 = _darkP3___instance;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_colorScheme forKey:@"colorScheme"];
  [v4 encodeInt64:self->_displayGamut forKey:@"displayGamut"];
}

- (_CHSDynamicColorKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[_CHSDynamicColorKey initWithColorScheme:displayGamut:](self, "initWithColorScheme:displayGamut:", [v4 decodeInt64ForKey:@"colorScheme"], objc_msgSend(v4, "decodeInt64ForKey:", @"displayGamut"));

  return v5;
}

@end