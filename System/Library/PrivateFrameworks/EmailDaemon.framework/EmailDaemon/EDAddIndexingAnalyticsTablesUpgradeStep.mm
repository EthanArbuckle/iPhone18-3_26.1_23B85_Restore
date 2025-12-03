@interface EDAddIndexingAnalyticsTablesUpgradeStep
+ (BOOL)runWithConnection:(id)connection error:(id *)error;
- (EDAddIndexingAnalyticsTablesUpgradeStep)init;
@end

@implementation EDAddIndexingAnalyticsTablesUpgradeStep

+ (BOOL)runWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  sub_1C63FBFF4(connectionCopy);

  return 1;
}

- (EDAddIndexingAnalyticsTablesUpgradeStep)init
{
  v3.receiver = self;
  v3.super_class = EDAddIndexingAnalyticsTablesUpgradeStep;
  return [(EDAddIndexingAnalyticsTablesUpgradeStep *)&v3 init];
}

@end