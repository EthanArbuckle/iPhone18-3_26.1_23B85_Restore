@interface CHSMutableDynamicColor
- (CHSMutableDynamicColor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addColor:(id)color forColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut;
@end

@implementation CHSMutableDynamicColor

- (CHSMutableDynamicColor)init
{
  v6.receiver = self;
  v6.super_class = CHSMutableDynamicColor;
  v2 = [(CHSMutableDynamicColor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableColors = v2->_mutableColors;
    v2->_mutableColors = v3;

    objc_storeStrong(&v2->super._colors, v2->_mutableColors);
  }

  return v2;
}

- (void)addColor:(id)color forColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut
{
  colorCopy = color;
  v8 = [[_CHSDynamicColorKey alloc] initWithColorScheme:scheme displayGamut:gamut];
  [(NSMutableDictionary *)self->_mutableColors setObject:colorCopy forKeyedSubscript:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSDynamicColor alloc];
  mutableColors = self->_mutableColors;

  return [(CHSDynamicColor *)v4 _initWithColors:mutableColors];
}

@end