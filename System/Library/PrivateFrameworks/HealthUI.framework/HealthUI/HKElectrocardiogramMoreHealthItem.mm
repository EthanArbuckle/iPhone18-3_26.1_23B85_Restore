@interface HKElectrocardiogramMoreHealthItem
- (HKElectrocardiogramMoreHealthItem)initWithView:(id)view identifier:(id)identifier;
@end

@implementation HKElectrocardiogramMoreHealthItem

- (HKElectrocardiogramMoreHealthItem)initWithView:(id)view identifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HKElectrocardiogramMoreHealthItem;
  v9 = [(HKElectrocardiogramMoreHealthItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, view);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end