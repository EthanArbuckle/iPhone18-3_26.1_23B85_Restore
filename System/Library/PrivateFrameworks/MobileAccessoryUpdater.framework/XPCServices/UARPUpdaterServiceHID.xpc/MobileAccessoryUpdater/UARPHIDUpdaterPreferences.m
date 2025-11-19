@interface UARPHIDUpdaterPreferences
+ (id)sharedPrefs;
- (UARPHIDUpdaterPreferences)init;
@end

@implementation UARPHIDUpdaterPreferences

+ (id)sharedPrefs
{
  if (qword_100032F98 != -1)
  {
    sub_10001E1AC();
  }

  v3 = qword_100032F90;

  return v3;
}

- (UARPHIDUpdaterPreferences)init
{
  v6.receiver = self;
  v6.super_class = UARPHIDUpdaterPreferences;
  v2 = [(UARPHIDUpdaterPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSUserDefaults);
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

@end