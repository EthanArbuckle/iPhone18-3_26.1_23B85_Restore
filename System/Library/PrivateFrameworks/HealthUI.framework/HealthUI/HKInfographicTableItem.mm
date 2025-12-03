@interface HKInfographicTableItem
- (HKInfographicTableItem)initWithTitle:(id)title value:(id)value separatorHidden:(BOOL)hidden;
@end

@implementation HKInfographicTableItem

- (HKInfographicTableItem)initWithTitle:(id)title value:(id)value separatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  titleCopy = title;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = HKInfographicTableItem;
  v10 = [(HKInfographicTableItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HKInfographicTableItem *)v10 setTitleString:titleCopy];
    [(HKInfographicTableItem *)v11 setValueString:valueCopy];
    [(HKInfographicTableItem *)v11 setSeparatorHidden:hiddenCopy];
  }

  return v11;
}

@end