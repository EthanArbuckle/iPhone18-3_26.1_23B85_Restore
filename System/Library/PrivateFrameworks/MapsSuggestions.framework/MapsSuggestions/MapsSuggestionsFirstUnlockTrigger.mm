@interface MapsSuggestionsFirstUnlockTrigger
- (MapsSuggestionsFirstUnlockTrigger)init;
- (MapsSuggestionsFirstUnlockTrigger)initWithFirstLock:(id)lock;
- (id)objectForJSON;
- (void)triggerFired:(id)fired;
@end

@implementation MapsSuggestionsFirstUnlockTrigger

- (id)objectForJSON
{
  isTrue = [(MapsSuggestionsFirstUnlockTrigger *)self isTrue];

  return MSg::jsonFor(isTrue);
}

- (MapsSuggestionsFirstUnlockTrigger)init
{
  v3 = objc_alloc_init(MapsSuggestionsFirstUnlock);
  v4 = [(MapsSuggestionsFirstUnlockTrigger *)self initWithFirstLock:v3];

  return v4;
}

- (MapsSuggestionsFirstUnlockTrigger)initWithFirstLock:(id)lock
{
  lockCopy = lock;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsFirstUnlockTrigger;
  v6 = [(MapsSuggestionsBaseTrigger *)&v9 initWithName:@"MapsSuggestionsFirstUnlockTrigger"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_firstUnlock, lock);
  }

  return v7;
}

- (void)triggerFired:(id)fired
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