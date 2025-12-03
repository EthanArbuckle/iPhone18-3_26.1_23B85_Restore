@interface _DASWidgetBudgetMigrationHelper
+ (id)resetWidgetBudgets;
@end

@implementation _DASWidgetBudgetMigrationHelper

+ (id)resetWidgetBudgets
{
  v2 = +[_DASScheduler sharedScheduler];
  _resetWidgetBudgets = [v2 _resetWidgetBudgets];

  return _resetWidgetBudgets;
}

@end