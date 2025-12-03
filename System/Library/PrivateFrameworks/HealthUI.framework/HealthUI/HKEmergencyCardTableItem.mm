@interface HKEmergencyCardTableItem
- (BOOL)hasPresentableData;
- (UIEdgeInsets)separatorInset;
- (UIViewController)owningViewController;
- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index;
- (id)_dequeueNoValueCellInTableView:(id)view withTitle:(id)title disabled:(BOOL)disabled;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
@end

@implementation HKEmergencyCardTableItem

- (id)initInEditMode:(BOOL)mode
{
  v5.receiver = self;
  v5.super_class = HKEmergencyCardTableItem;
  result = [(HKEmergencyCardTableItem *)&v5 init];
  if (result)
  {
    *(result + 9) = mode;
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

- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index
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

- (id)_dequeueNoValueCellInTableView:(id)view withTitle:(id)title disabled:(BOOL)disabled
{
  titleCopy = title;
  v7 = [view dequeueReusableCellWithIdentifier:0x1F4311540];
  addValueLabel = [v7 addValueLabel];
  [addValueLabel setText:titleCopy];

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
  data = [(HKEmergencyCardTableItem *)self data];
  v4 = data != 0;

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end