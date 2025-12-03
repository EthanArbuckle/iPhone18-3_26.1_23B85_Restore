@interface TDEffectParameterValue
- (void)setBlueComponent:(unint64_t)component;
- (void)setGreenComponent:(unint64_t)component;
- (void)setRedComponent:(unint64_t)component;
@end

@implementation TDEffectParameterValue

- (void)setRedComponent:(unint64_t)component
{
  componentCopy = component;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  componentCopy = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFFFFFF00 | componentCopy];

  [(TDEffectParameterValue *)self setColorValue:componentCopy];
}

- (void)setGreenComponent:(unint64_t)component
{
  componentCopy = component;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFFFF00FFLL | (componentCopy << 8)];

  [(TDEffectParameterValue *)self setColorValue:v6];
}

- (void)setBlueComponent:(unint64_t)component
{
  componentCopy = component;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFF00FFFFLL | (componentCopy << 16)];

  [(TDEffectParameterValue *)self setColorValue:v6];
}

@end