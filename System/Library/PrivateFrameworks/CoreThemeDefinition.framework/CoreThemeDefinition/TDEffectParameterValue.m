@interface TDEffectParameterValue
- (void)setBlueComponent:(unint64_t)a3;
- (void)setGreenComponent:(unint64_t)a3;
- (void)setRedComponent:(unint64_t)a3;
@end

@implementation TDEffectParameterValue

- (void)setRedComponent:(unint64_t)a3
{
  v3 = a3;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFFFFFF00 | v3];

  [(TDEffectParameterValue *)self setColorValue:v6];
}

- (void)setGreenComponent:(unint64_t)a3
{
  v3 = a3;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFFFF00FFLL | (v3 << 8)];

  [(TDEffectParameterValue *)self setColorValue:v6];
}

- (void)setBlueComponent:(unint64_t)a3
{
  v3 = a3;
  v5 = [-[TDEffectParameterValue colorValue](self "colorValue")];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 & 0xFFFFFFFFFF00FFFFLL | (v3 << 16)];

  [(TDEffectParameterValue *)self setColorValue:v6];
}

@end