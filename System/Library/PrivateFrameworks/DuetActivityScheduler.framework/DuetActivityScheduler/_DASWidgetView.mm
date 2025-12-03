@interface _DASWidgetView
+ (id)viewFrom:(id)from to:(id)to forWidgetID:(id)d;
- (_DASWidgetView)initWithViewID:(id)d budgetID:(id)iD extensionBundleID:(id)bundleID from:(id)from to:(id)to;
@end

@implementation _DASWidgetView

- (_DASWidgetView)initWithViewID:(id)d budgetID:(id)iD extensionBundleID:(id)bundleID from:(id)from to:(id)to
{
  dCopy = d;
  fromCopy = from;
  toCopy = to;
  v23.receiver = self;
  v23.super_class = _DASWidgetView;
  v15 = [(_DASWidgetInfo *)&v23 _initWithBudgetID:iD extensionBundleID:bundleID];
  if (v15)
  {
    v16 = [dCopy copy];
    viewID = v15->_viewID;
    v15->_viewID = v16;

    v18 = [fromCopy copy];
    startDate = v15->_startDate;
    v15->_startDate = v18;

    v20 = [toCopy copy];
    endDate = v15->_endDate;
    v15->_endDate = v20;
  }

  return v15;
}

+ (id)viewFrom:(id)from to:(id)to forWidgetID:(id)d
{
  dCopy = d;
  toCopy = to;
  fromCopy = from;
  v10 = [[_DASWidgetView alloc] initWithViewID:dCopy budgetID:dCopy extensionBundleID:@"unknown" from:fromCopy to:toCopy];

  return v10;
}

@end