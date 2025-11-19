@interface HKInfographicTableItem
- (HKInfographicTableItem)initWithTitle:(id)a3 value:(id)a4 separatorHidden:(BOOL)a5;
@end

@implementation HKInfographicTableItem

- (HKInfographicTableItem)initWithTitle:(id)a3 value:(id)a4 separatorHidden:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HKInfographicTableItem;
  v10 = [(HKInfographicTableItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HKInfographicTableItem *)v10 setTitleString:v8];
    [(HKInfographicTableItem *)v11 setValueString:v9];
    [(HKInfographicTableItem *)v11 setSeparatorHidden:v5];
  }

  return v11;
}

@end