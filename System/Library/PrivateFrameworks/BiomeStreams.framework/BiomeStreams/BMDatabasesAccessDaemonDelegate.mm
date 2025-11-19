@interface BMDatabasesAccessDaemonDelegate
- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5;
@end

@implementation BMDatabasesAccessDaemonDelegate

- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5
{
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BMDatabasesAccessDaemonDelegate prepareResource:v6 withMode:a4 inContainer:v7];
  }

  v8 = [v6 name];
  v9 = [_TtC12BiomeStreams21BMDatabaseInitializer initializeSQLDatabaseWithIdentifier:v8];

  return v9;
}

@end