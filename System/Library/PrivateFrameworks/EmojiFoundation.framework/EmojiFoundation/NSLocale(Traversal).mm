@interface NSLocale(Traversal)
+ (void)_enumerateLanguageFallbackGraphForLocaleIdentifier:()Traversal usingBlock:;
@end

@implementation NSLocale(Traversal)

+ (void)_enumerateLanguageFallbackGraphForLocaleIdentifier:()Traversal usingBlock:
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  v7 = [v6 languageIdentifier];

  v8 = v7;
  v12 = 0;
  v9 = &stru_1F24C94E8;
  v10 = v8;
  do
  {
    if (([(__CFString *)v10 isEqualToString:v9]& 1) != 0)
    {
      break;
    }

    v11 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v10];

    v10 = v11;
    v5[2](v5, v10, &v12);
    v9 = v10;
  }

  while (v12 != 1);
}

@end