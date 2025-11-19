@interface CHSDynamicColorKey
@end

@implementation CHSDynamicColorKey

void __46___CHSDynamicColorKey_instanceForEncodingKey___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) _lightSRGB];
  [v8 setObject:v2 forKeyedSubscript:@"P_LightSRGB"];

  v3 = [*(a1 + 32) _darkSRGB];
  [v8 setObject:v3 forKeyedSubscript:@"P_DarkSRGB"];

  v4 = [*(a1 + 32) _lightP3];
  [v8 setObject:v4 forKeyedSubscript:@"P_LightP3"];

  v5 = [*(a1 + 32) _darkP3];
  [v8 setObject:v5 forKeyedSubscript:@"P_DarkP3"];

  v6 = [v8 copy];
  v7 = instanceForEncodingKey__keys;
  instanceForEncodingKey__keys = v6;
}

void __33___CHSDynamicColorKey__lightSRGB__block_invoke()
{
  v0 = [[_CHSDynamicColorKey alloc] initWithColorScheme:1 displayGamut:1];
  v1 = _lightSRGB___instance;
  _lightSRGB___instance = v0;
}

void __32___CHSDynamicColorKey__darkSRGB__block_invoke()
{
  v0 = [[_CHSDynamicColorKey alloc] initWithColorScheme:2 displayGamut:1];
  v1 = _darkSRGB___instance;
  _darkSRGB___instance = v0;
}

void __31___CHSDynamicColorKey__lightP3__block_invoke()
{
  v0 = [[_CHSDynamicColorKey alloc] initWithColorScheme:1 displayGamut:0];
  v1 = _lightP3___instance;
  _lightP3___instance = v0;
}

void __30___CHSDynamicColorKey__darkP3__block_invoke()
{
  v0 = [[_CHSDynamicColorKey alloc] initWithColorScheme:2 displayGamut:0];
  v1 = _darkP3___instance;
  _darkP3___instance = v0;
}

@end