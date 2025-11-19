@interface NSLocale(IconServicesAdditions)
+ (uint64_t)_IS_currentLanguageDirection;
@end

@implementation NSLocale(IconServicesAdditions)

+ (uint64_t)_IS_currentLanguageDirection
{
  if (_IS_currentLanguageDirection_onceToken != -1)
  {
    +[NSLocale(IconServicesAdditions) _IS_currentLanguageDirection];
  }

  return _IS_currentLanguageDirection_direction;
}

@end