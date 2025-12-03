@interface _CHSDynamicColorKey
+ (id)_darkP3;
+ (id)_darkSRGB;
+ (id)_lightP3;
+ (id)_lightSRGB;
+ (id)instanceForEncodingKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (_CHSDynamicColorKey)initWithCoder:(id)coder;
- (_CHSDynamicColorKey)initWithColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut;
- (id)_encodingKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CHSDynamicColorKey

- (_CHSDynamicColorKey)initWithColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut
{
  v7.receiver = self;
  v7.super_class = _CHSDynamicColorKey;
  result = [(_CHSDynamicColorKey *)&v7 init];
  if (result)
  {
    result->_colorScheme = scheme;
    result->_displayGamut = gamut;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_colorScheme == equalCopy->_colorScheme && self->_displayGamut == equalCopy->_displayGamut;
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

+ (id)instanceForEncodingKey:(id)key
{
  keyCopy = key;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___CHSDynamicColorKey_instanceForEncodingKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (instanceForEncodingKey__onceToken != -1)
  {
    dispatch_once(&instanceForEncodingKey__onceToken, block);
  }

  v5 = [instanceForEncodingKey__keys objectForKeyedSubscript:keyCopy];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_colorScheme forKey:@"colorScheme"];
  [coderCopy encodeInt64:self->_displayGamut forKey:@"displayGamut"];
}

- (_CHSDynamicColorKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_CHSDynamicColorKey initWithColorScheme:displayGamut:](self, "initWithColorScheme:displayGamut:", [coderCopy decodeInt64ForKey:@"colorScheme"], objc_msgSend(coderCopy, "decodeInt64ForKey:", @"displayGamut"));

  return v5;
}

@end