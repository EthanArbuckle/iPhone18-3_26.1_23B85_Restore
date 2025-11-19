@interface CERecommendationActionCache
- (CERecommendationActionCache)init;
- (id)_timestamp:(id)a3 tableName:(id)a4;
- (void)_clearAction:(id)a3 tableName:(id)a4;
- (void)_trackAction:(id)a3 tableName:(id)a4;
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

- (id)_timestamp:(id)a3 tableName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CERecommendationActionCache *)self defaults];
  v9 = [v8 dictionaryForKey:v6];

  v10 = [v7 identifier];

  v11 = [v9 objectForKeyedSubscript:v10];

  return v11;
}

- (void)_trackAction:(id)a3 tableName:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [(CERecommendationActionCache *)self defaults];
  v9 = [v8 dictionaryForKey:v6];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEC10] mutableCopy];
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v14 identifier];
  [v10 setObject:v11 forKeyedSubscript:v12];

  v13 = [(CERecommendationActionCache *)self defaults];
  [v13 setObject:v10 forKey:v6];

  objc_sync_exit(v7);
}

- (void)_clearAction:(id)a3 tableName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [(CERecommendationActionCache *)self defaults];
  v9 = [v8 dictionaryForKey:v6];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    v11 = [v13 identifier];
    [v10 setObject:0 forKeyedSubscript:v11];

    v12 = [(CERecommendationActionCache *)self defaults];
    [v12 setObject:v10 forKey:v6];
  }

  objc_sync_exit(v7);
}

- (void)flushCache
{
  v3 = [(CERecommendationActionCache *)self defaults];
  [v3 removeObjectForKey:@"CERecommendationCompletedActionsTable"];

  v4 = [(CERecommendationActionCache *)self defaults];
  [v4 removeObjectForKey:@"CERecommendationCanceledActionsTable"];

  v5 = [(CERecommendationActionCache *)self defaults];
  [v5 removeObjectForKey:@"CERecommendationDismissedActionsTable"];
}

@end