@interface NSLocale
@end

@implementation NSLocale

void __63__NSLocale_MNExtras___localeOverridesForLocaleWithCountryCode___block_invoke()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"GB";
  v6[0] = *MEMORY[0x1E695DA08];
  v0 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v6[1] = @"MNLocaleUseYardForShortDistance";
  v7[0] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = _localeOverridesForLocaleWithCountryCode__overridesPerCountryCode;
  _localeOverridesForLocaleWithCountryCode__overridesPerCountryCode = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end