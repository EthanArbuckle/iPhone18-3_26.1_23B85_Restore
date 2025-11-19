@interface NSLocale
@end

@implementation NSLocale

void __52__NSLocale_EmailFoundationAdditions__ef_posixLocale__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = ef_posixLocale_locale;
  ef_posixLocale_locale = v0;
}

id __62__NSLocale_EmailFoundationAdditions__ef_localesFromLanguages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a2];

  return v2;
}

@end