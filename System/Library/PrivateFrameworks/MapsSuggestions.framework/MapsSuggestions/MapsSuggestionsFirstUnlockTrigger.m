@interface MapsSuggestionsFirstUnlockTrigger
- (MapsSuggestionsFirstUnlockTrigger)init;
- (MapsSuggestionsFirstUnlockTrigger)initWithFirstLock:(id)a3;
- (id)objectForJSON;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsFirstUnlockTrigger

- (id)objectForJSON
{
  v2 = [(MapsSuggestionsFirstUnlockTrigger *)self isTrue];

  return MSg::jsonFor(v2);
}

- (MapsSuggestionsFirstUnlockTrigger)init
{
  v3 = objc_alloc_init(MapsSuggestionsFirstUnlock);
  v4 = [(MapsSuggestionsFirstUnlockTrigger *)self initWithFirstLock:v3];

  return v4;
}

- (MapsSuggestionsFirstUnlockTrigger)initWithFirstLock:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsFirstUnlockTrigger;
  v6 = [(MapsSuggestionsBaseTrigger *)&v9 initWithName:@"MapsSuggestionsFirstUnlockTrigger"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_firstUnlock, a3);
  }

  return v7;
}

- (void)triggerFired:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Device First time Unlocked", v5, 2u);
  }

  [(MapsSuggestionsBaseTrigger *)self triggerMyObservers];
}

@end