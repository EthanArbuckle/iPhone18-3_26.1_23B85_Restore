@interface BMDatabasesAccessDaemonDelegate
- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container;
@end

@implementation BMDatabasesAccessDaemonDelegate

- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container
{
  resourceCopy = resource;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BMDatabasesAccessDaemonDelegate prepareResource:resourceCopy withMode:mode inContainer:v7];
  }

  name = [resourceCopy name];
  v9 = [_TtC12BiomeStreams21BMDatabaseInitializer initializeSQLDatabaseWithIdentifier:name];

  return v9;
}

@end