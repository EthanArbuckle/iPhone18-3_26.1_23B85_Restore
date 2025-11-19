@interface _DASWidgetView
+ (id)viewFrom:(id)a3 to:(id)a4 forWidgetID:(id)a5;
- (_DASWidgetView)initWithViewID:(id)a3 budgetID:(id)a4 extensionBundleID:(id)a5 from:(id)a6 to:(id)a7;
@end

@implementation _DASWidgetView

- (_DASWidgetView)initWithViewID:(id)a3 budgetID:(id)a4 extensionBundleID:(id)a5 from:(id)a6 to:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = _DASWidgetView;
  v15 = [(_DASWidgetInfo *)&v23 _initWithBudgetID:a4 extensionBundleID:a5];
  if (v15)
  {
    v16 = [v12 copy];
    viewID = v15->_viewID;
    v15->_viewID = v16;

    v18 = [v13 copy];
    startDate = v15->_startDate;
    v15->_startDate = v18;

    v20 = [v14 copy];
    endDate = v15->_endDate;
    v15->_endDate = v20;
  }

  return v15;
}

+ (id)viewFrom:(id)a3 to:(id)a4 forWidgetID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_DASWidgetView alloc] initWithViewID:v7 budgetID:v7 extensionBundleID:@"unknown" from:v9 to:v8];

  return v10;
}

@end