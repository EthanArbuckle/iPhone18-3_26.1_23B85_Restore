@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_RTExtensions__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_22;
  _MergedGlobals_22 = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_MergedGlobals_22 setLocale:v2];

  [_MergedGlobals_22 setDateStyle:1];
  v3 = _MergedGlobals_22;

  return [v3 setTimeStyle:3];
}

uint64_t __47__NSDate_RTExtensions__dateFormatterForLogging__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED7C3878;
  qword_1ED7C3878 = v0;

  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1ED7C3878 setLocale:v2];

  [qword_1ED7C3878 setDateStyle:1];
  v3 = qword_1ED7C3878;

  return [v3 setTimeStyle:3];
}

@end