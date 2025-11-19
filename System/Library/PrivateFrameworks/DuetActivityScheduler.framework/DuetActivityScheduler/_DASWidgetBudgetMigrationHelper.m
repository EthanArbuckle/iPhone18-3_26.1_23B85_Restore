@interface _DASWidgetBudgetMigrationHelper
+ (id)resetWidgetBudgets;
@end

@implementation _DASWidgetBudgetMigrationHelper

+ (id)resetWidgetBudgets
{
  v2 = +[_DASScheduler sharedScheduler];
  v3 = [v2 _resetWidgetBudgets];

  return v3;
}

@end