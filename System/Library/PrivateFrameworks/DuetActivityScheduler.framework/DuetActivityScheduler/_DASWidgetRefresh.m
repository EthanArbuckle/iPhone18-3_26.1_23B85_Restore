@interface _DASWidgetRefresh
+ (id)refreshAt:(id)a3 forWidgetID:(id)a4;
- (_DASWidgetRefresh)initWithBudgetID:(id)a3 extensionBundleID:(id)a4 refreshDate:(id)a5;
- (_DASWidgetRefresh)initWithRateLimitConfigurationName:(id)a3 budgetID:(id)a4 extensionBundleID:(id)a5 refreshDate:(id)a6 initiatedByDAS:(BOOL)a7;
@end

@implementation _DASWidgetRefresh

- (_DASWidgetRefresh)initWithBudgetID:(id)a3 extensionBundleID:(id)a4 refreshDate:(id)a5
{
  v9 = a5;
  v10 = [(_DASWidgetInfo *)self _initWithBudgetID:a3 extensionBundleID:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, a5);
  }

  return v11;
}

- (_DASWidgetRefresh)initWithRateLimitConfigurationName:(id)a3 budgetID:(id)a4 extensionBundleID:(id)a5 refreshDate:(id)a6 initiatedByDAS:(BOOL)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [(_DASWidgetInfo *)self _initWithBudgetID:a4 extensionBundleID:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 4, a6);
    if (v12)
    {
      v16 = [v12 copy];
      rateLimitConfigurationName = v15->_rateLimitConfigurationName;
      v15->_rateLimitConfigurationName = v16;
    }

    v15->_isDASInitiated = a7;
  }

  return v15;
}

+ (id)refreshAt:(id)a3 forWidgetID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_DASWidgetRefresh alloc] initWithBudgetID:v5 extensionBundleID:@"unknown" refreshDate:v6];

  return v7;
}

@end