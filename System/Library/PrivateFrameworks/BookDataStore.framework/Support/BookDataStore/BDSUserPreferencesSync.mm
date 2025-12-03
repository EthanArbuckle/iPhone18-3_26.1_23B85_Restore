@interface BDSUserPreferencesSync
+ (NSArray)syncedPreferenceKeys;
+ (id)objectFromGroupPreferencesForKey:(id)key;
@end

@implementation BDSUserPreferencesSync

+ (NSArray)syncedPreferenceKeys
{
  if (qword_1002749E8 != -1)
  {
    sub_1001BDD44();
  }

  v3 = qword_1002749E0;

  return v3;
}

+ (id)objectFromGroupPreferencesForKey:(id)key
{
  keyCopy = key;
  v4 = [NSUserDefaults alloc];
  v5 = +[BDSAppGroupContainer containerIdentifier];
  v6 = +[BDSAppGroupContainer containerURL];
  v7 = [v4 _initWithSuiteName:v5 container:v6];

  v8 = [@"watchSynced-" stringByAppendingString:keyCopy];
  v9 = [v7 objectForKey:v8];

  return v9;
}

@end