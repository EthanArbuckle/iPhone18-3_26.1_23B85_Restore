@interface CHSMutableDynamicColor
- (CHSMutableDynamicColor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addColor:(id)a3 forColorScheme:(unint64_t)a4 displayGamut:(unint64_t)a5;
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

- (void)addColor:(id)a3 forColorScheme:(unint64_t)a4 displayGamut:(unint64_t)a5
{
  v9 = a3;
  v8 = [[_CHSDynamicColorKey alloc] initWithColorScheme:a4 displayGamut:a5];
  [(NSMutableDictionary *)self->_mutableColors setObject:v9 forKeyedSubscript:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSDynamicColor alloc];
  mutableColors = self->_mutableColors;

  return [(CHSDynamicColor *)v4 _initWithColors:mutableColors];
}

@end