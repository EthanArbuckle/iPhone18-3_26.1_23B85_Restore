@interface NSLocale(NTKLocaleOverride)
+ (void)__loadSwizzledCurrentLocaleIfNeeded;
+ (void)__setCurrentLocal:()NTKLocaleOverride;
@end

@implementation NSLocale(NTKLocaleOverride)

+ (void)__loadSwizzledCurrentLocaleIfNeeded
{
  if (__loadSwizzledCurrentLocaleIfNeeded_onceToken != -1)
  {
    +[NSLocale(NTKLocaleOverride) __loadSwizzledCurrentLocaleIfNeeded];
  }
}

+ (void)__setCurrentLocal:()NTKLocaleOverride
{
  objc_storeStrong(&__currentLocaleOverride, obj);
  v4 = obj;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CBE620] object:__currentLocaleOverride];
}

@end