@interface HKEmergencyCardTableItem
- (BOOL)hasPresentableData;
- (UIEdgeInsets)separatorInset;
- (UIViewController)owningViewController;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4;
- (id)_dequeueNoValueCellInTableView:(id)a3 withTitle:(id)a4 disabled:(BOOL)a5;
- (id)initInEditMode:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
@end

@implementation HKEmergencyCardTableItem

- (id)initInEditMode:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKEmergencyCardTableItem;
  result = [(HKEmergencyCardTableItem *)&v5 init];
  if (result)
  {
    *(result + 9) = a3;
  }

  return result;
}

- (UIEdgeInsets)separatorInset
{
  v2 = 16.0;
  if (self->_isInEditMode)
  {
    v2 = 46.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4
{
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory() && [(HKEmergencyCardTableItem *)self isInEditMode])
  {
    return *MEMORY[0x1E69DE3D0];
  }

  else
  {
    return 52.0 + 24.0;
  }
}

- (id)_dequeueNoValueCellInTableView:(id)a3 withTitle:(id)a4 disabled:(BOOL)a5
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:0x1F4311540];
  v8 = [v7 addValueLabel];
  [v8 setText:v6];

  return v7;
}

- (UIViewController)owningViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningViewController);

  return WeakRetained;
}

- (BOOL)hasPresentableData
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = [(HKEmergencyCardTableItem *)self data];
  v4 = v3 != 0;

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end