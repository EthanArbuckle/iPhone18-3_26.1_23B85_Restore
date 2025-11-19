@interface NSLocale(IC)
- (BOOL)ic_timeUsesDotSeparator;
- (id)ic_numberingSystem;
- (uint64_t)ic_localeIsArabic;
- (uint64_t)ic_numberingSystemIsArabic;
- (uint64_t)ic_numberingSystemIsDevanagari;
@end

@implementation NSLocale(IC)

- (uint64_t)ic_localeIsArabic
{
  v1 = [a1 localeIdentifier];
  v2 = [v1 hasPrefix:@"ar"];

  return v2;
}

- (BOOL)ic_timeUsesDotSeparator
{
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"jm" options:0 locale:a1];
  v2 = [v1 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

- (id)ic_numberingSystem
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NSLocale_IC__ic_numberingSystem__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = a1;
  if (ic_numberingSystem_onceToken != -1)
  {
    dispatch_once(&ic_numberingSystem_onceToken, block);
  }

  return ic_numberingSystem_numberingSystem;
}

- (uint64_t)ic_numberingSystemIsArabic
{
  v1 = [a1 ic_numberingSystem];
  v2 = [v1 isEqualToString:@"arab"];

  return v2;
}

- (uint64_t)ic_numberingSystemIsDevanagari
{
  v1 = [a1 ic_numberingSystem];
  v2 = [v1 isEqualToString:@"deva"];

  return v2;
}

@end