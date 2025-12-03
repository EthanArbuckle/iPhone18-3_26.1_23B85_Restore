@interface NSDateFormatter(CalClassAdditions)
+ (id)CalSharedDateFormatter;
@end

@implementation NSDateFormatter(CalClassAdditions)

+ (id)CalSharedDateFormatter
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v2 = [threadDictionary objectForKey:@"CalSharedDateFormatterKey"];
  if (!v2)
  {
    v2 = objc_opt_new();
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v2 setLocale:currentLocale];

    [threadDictionary setObject:v2 forKey:@"CalSharedDateFormatterKey"];
  }

  [v2 setDateFormat:0];

  return v2;
}

@end