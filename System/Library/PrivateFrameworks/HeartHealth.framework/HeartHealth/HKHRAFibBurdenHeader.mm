@interface HKHRAFibBurdenHeader
- (HKHRAFibBurdenHeader)initWithText:(id)text;
@end

@implementation HKHRAFibBurdenHeader

- (HKHRAFibBurdenHeader)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenHeader;
  v5 = [(HKHRAFibBurdenHeader *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKHRAFibBurdenHeader *)v5 setHeaderText:textCopy];
    v7 = v6;
  }

  return v6;
}

@end