@interface PLPreferences
+ (void)setBool:(BOOL)bool key:(__CFString *)key domain:(__CFString *)domain;
+ (void)setDouble:(double)double key:(__CFString *)key domain:(__CFString *)domain;
+ (void)setInteger:(int64_t)integer key:(__CFString *)key domain:(__CFString *)domain;
@end

@implementation PLPreferences

+ (void)setDouble:(double)double key:(__CFString *)key domain:(__CFString *)domain
{
  v7 = [NSNumber numberWithDouble:double];
  CFPreferencesSetValue(key, v7, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (void)setInteger:(int64_t)integer key:(__CFString *)key domain:(__CFString *)domain
{
  v7 = [NSNumber numberWithInteger:integer];
  CFPreferencesSetValue(key, v7, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (void)setBool:(BOOL)bool key:(__CFString *)key domain:(__CFString *)domain
{
  v5 = &kCFBooleanTrue;
  if (!bool)
  {
    v5 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(key, *v5, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

@end