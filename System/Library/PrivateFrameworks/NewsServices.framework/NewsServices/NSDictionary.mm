@interface NSDictionary
- (BOOL)nn_active;
- (unint64_t)sync_headlineCount;
- (unint64_t)sync_type;
@end

@implementation NSDictionary

- (BOOL)nn_active
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"nn_active"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)sync_headlineCount
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_headlineCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)sync_type
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_type"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue >= 6)
  {
    v4 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = unsignedIntegerValue;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Unknown type %lu", &v6, 0xCu);
    }

    return 0;
  }

  return unsignedIntegerValue;
}

@end