@interface _DASWidgetInfo
- (NSString)widgetID;
- (id)_initWithBudgetID:(id)d extensionBundleID:(id)iD;
- (void)setWidgetID:(id)d;
@end

@implementation _DASWidgetInfo

- (id)_initWithBudgetID:(id)d extensionBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = _DASWidgetInfo;
  v8 = [(_DASWidgetInfo *)&v14 init];
  if (v8)
  {
    if (dCopy)
    {
      v9 = [dCopy copy];
      budgetID = v8->_budgetID;
      v8->_budgetID = v9;
    }

    v11 = [iDCopy copy];
    extensionBundleID = v8->_extensionBundleID;
    v8->_extensionBundleID = v11;
  }

  return v8;
}

- (NSString)widgetID
{
  v3 = self->_budgetID;
  v4 = v3;
  if (self->_budgetID)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setWidgetID:(id)d
{
  v4 = [d copy];
  budgetID = self->_budgetID;
  self->_budgetID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end