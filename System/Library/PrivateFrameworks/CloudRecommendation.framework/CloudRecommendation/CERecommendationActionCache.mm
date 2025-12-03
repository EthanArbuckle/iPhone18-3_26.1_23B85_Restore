@interface CERecommendationActionCache
- (CERecommendationActionCache)init;
- (id)_timestamp:(id)_timestamp tableName:(id)name;
- (void)_clearAction:(id)action tableName:(id)name;
- (void)_trackAction:(id)action tableName:(id)name;
- (void)flushCache;
@end

@implementation CERecommendationActionCache

- (CERecommendationActionCache)init
{
  v6.receiver = self;
  v6.super_class = CERecommendationActionCache;
  v2 = [(CERecommendationActionCache *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cloudexperience"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

- (id)_timestamp:(id)_timestamp tableName:(id)name
{
  nameCopy = name;
  _timestampCopy = _timestamp;
  defaults = [(CERecommendationActionCache *)self defaults];
  v9 = [defaults dictionaryForKey:nameCopy];

  identifier = [_timestampCopy identifier];

  v11 = [v9 objectForKeyedSubscript:identifier];

  return v11;
}

- (void)_trackAction:(id)action tableName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  defaults = [(CERecommendationActionCache *)self defaults];
  v9 = [defaults dictionaryForKey:nameCopy];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEC10] mutableCopy];
  }

  date = [MEMORY[0x277CBEAA8] date];
  identifier = [actionCopy identifier];
  [v10 setObject:date forKeyedSubscript:identifier];

  defaults2 = [(CERecommendationActionCache *)self defaults];
  [defaults2 setObject:v10 forKey:nameCopy];

  objc_sync_exit(v7);
}

- (void)_clearAction:(id)action tableName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  defaults = [(CERecommendationActionCache *)self defaults];
  v9 = [defaults dictionaryForKey:nameCopy];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    identifier = [actionCopy identifier];
    [v10 setObject:0 forKeyedSubscript:identifier];

    defaults2 = [(CERecommendationActionCache *)self defaults];
    [defaults2 setObject:v10 forKey:nameCopy];
  }

  objc_sync_exit(v7);
}

- (void)flushCache
{
  defaults = [(CERecommendationActionCache *)self defaults];
  [defaults removeObjectForKey:@"CERecommendationCompletedActionsTable"];

  defaults2 = [(CERecommendationActionCache *)self defaults];
  [defaults2 removeObjectForKey:@"CERecommendationCanceledActionsTable"];

  defaults3 = [(CERecommendationActionCache *)self defaults];
  [defaults3 removeObjectForKey:@"CERecommendationDismissedActionsTable"];
}

@end