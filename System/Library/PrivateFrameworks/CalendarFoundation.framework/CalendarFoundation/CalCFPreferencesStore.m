@interface CalCFPreferencesStore
+ (id)shared;
- (BOOL)getBoolean:(BOOL *)a3 forDomain:(id)a4 key:(id)a5;
- (BOOL)getInteger:(int64_t *)a3 forDomain:(id)a4 key:(id)a5;
- (BOOL)getValue:(id *)a3 forDomain:(id)a4 key:(id)a5;
@end

@implementation CalCFPreferencesStore

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[CalCFPreferencesStore shared];
  }

  v3 = shared_store;

  return v3;
}

uint64_t __31__CalCFPreferencesStore_shared__block_invoke()
{
  shared_store = objc_alloc_init(CalCFPreferencesStore);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)getBoolean:(BOOL *)a3 forDomain:(id)a4 key:(id)a5
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a5, a4, &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    *a3 = AppBooleanValue != 0;
  }

  return v7 != 0;
}

- (BOOL)getInteger:(int64_t *)a3 forDomain:(id)a4 key:(id)a5
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(a5, a4, &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    *a3 = AppIntegerValue;
  }

  return v7 != 0;
}

- (BOOL)getValue:(id *)a3 forDomain:(id)a4 key:(id)a5
{
  v6 = CFPreferencesCopyAppValue(a5, a4);
  if (v6)
  {
    v6 = v6;
    *a3 = v6;
  }

  v7 = v6 != 0;

  return v7;
}

@end