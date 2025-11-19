@interface PLPreferences
+ (void)setBool:(BOOL)a3 key:(__CFString *)a4 domain:(__CFString *)a5;
+ (void)setDouble:(double)a3 key:(__CFString *)a4 domain:(__CFString *)a5;
+ (void)setInteger:(int64_t)a3 key:(__CFString *)a4 domain:(__CFString *)a5;
@end

@implementation PLPreferences

+ (void)setDouble:(double)a3 key:(__CFString *)a4 domain:(__CFString *)a5
{
  v7 = [NSNumber numberWithDouble:a3];
  CFPreferencesSetValue(a4, v7, a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (void)setInteger:(int64_t)a3 key:(__CFString *)a4 domain:(__CFString *)a5
{
  v7 = [NSNumber numberWithInteger:a3];
  CFPreferencesSetValue(a4, v7, a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

+ (void)setBool:(BOOL)a3 key:(__CFString *)a4 domain:(__CFString *)a5
{
  v5 = &kCFBooleanTrue;
  if (!a3)
  {
    v5 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(a4, *v5, a5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

@end