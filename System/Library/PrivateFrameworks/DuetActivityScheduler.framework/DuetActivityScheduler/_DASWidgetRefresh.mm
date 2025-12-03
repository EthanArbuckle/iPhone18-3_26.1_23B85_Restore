@interface _DASWidgetRefresh
+ (id)refreshAt:(id)at forWidgetID:(id)d;
- (_DASWidgetRefresh)initWithBudgetID:(id)d extensionBundleID:(id)iD refreshDate:(id)date;
- (_DASWidgetRefresh)initWithRateLimitConfigurationName:(id)name budgetID:(id)d extensionBundleID:(id)iD refreshDate:(id)date initiatedByDAS:(BOOL)s;
@end

@implementation _DASWidgetRefresh

- (_DASWidgetRefresh)initWithBudgetID:(id)d extensionBundleID:(id)iD refreshDate:(id)date
{
  dateCopy = date;
  v10 = [(_DASWidgetInfo *)self _initWithBudgetID:d extensionBundleID:iD];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, date);
  }

  return v11;
}

- (_DASWidgetRefresh)initWithRateLimitConfigurationName:(id)name budgetID:(id)d extensionBundleID:(id)iD refreshDate:(id)date initiatedByDAS:(BOOL)s
{
  nameCopy = name;
  dateCopy = date;
  v14 = [(_DASWidgetInfo *)self _initWithBudgetID:d extensionBundleID:iD];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 4, date);
    if (nameCopy)
    {
      v16 = [nameCopy copy];
      rateLimitConfigurationName = v15->_rateLimitConfigurationName;
      v15->_rateLimitConfigurationName = v16;
    }

    v15->_isDASInitiated = s;
  }

  return v15;
}

+ (id)refreshAt:(id)at forWidgetID:(id)d
{
  dCopy = d;
  atCopy = at;
  v7 = [[_DASWidgetRefresh alloc] initWithBudgetID:dCopy extensionBundleID:@"unknown" refreshDate:atCopy];

  return v7;
}

@end