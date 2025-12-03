@interface CalCFPreferencesStore
+ (id)shared;
- (BOOL)getBoolean:(BOOL *)boolean forDomain:(id)domain key:(id)key;
- (BOOL)getInteger:(int64_t *)integer forDomain:(id)domain key:(id)key;
- (BOOL)getValue:(id *)value forDomain:(id)domain key:(id)key;
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

- (BOOL)getBoolean:(BOOL *)boolean forDomain:(id)domain key:(id)key
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, domain, &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    *boolean = AppBooleanValue != 0;
  }

  return v7 != 0;
}

- (BOOL)getInteger:(int64_t *)integer forDomain:(id)domain key:(id)key
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(key, domain, &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    *integer = AppIntegerValue;
  }

  return v7 != 0;
}

- (BOOL)getValue:(id *)value forDomain:(id)domain key:(id)key
{
  v6 = CFPreferencesCopyAppValue(key, domain);
  if (v6)
  {
    v6 = v6;
    *value = v6;
  }

  v7 = v6 != 0;

  return v7;
}

@end