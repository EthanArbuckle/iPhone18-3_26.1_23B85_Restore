@interface CNUIAutocompleteColorRepository
+ (UIImageSymbolConfiguration)solariumButtonImageConfiguration;
@end

@implementation CNUIAutocompleteColorRepository

+ (UIImageSymbolConfiguration)solariumButtonImageConfiguration
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v8[0] = v3;
  v4 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 configurationWithPaletteColors:v5];

  return v6;
}

@end