@interface EDAddIndexingAnalyticsTablesUpgradeStep
+ (BOOL)runWithConnection:(id)a3 error:(id *)a4;
- (EDAddIndexingAnalyticsTablesUpgradeStep)init;
@end

@implementation EDAddIndexingAnalyticsTablesUpgradeStep

+ (BOOL)runWithConnection:(id)a3 error:(id *)a4
{
  v4 = a3;
  sub_1C63FBFF4(v4);

  return 1;
}

- (EDAddIndexingAnalyticsTablesUpgradeStep)init
{
  v3.receiver = self;
  v3.super_class = EDAddIndexingAnalyticsTablesUpgradeStep;
  return [(EDAddIndexingAnalyticsTablesUpgradeStep *)&v3 init];
}

@end