@interface HKHRAFibBurdenHeader
- (HKHRAFibBurdenHeader)initWithText:(id)a3;
@end

@implementation HKHRAFibBurdenHeader

- (HKHRAFibBurdenHeader)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenHeader;
  v5 = [(HKHRAFibBurdenHeader *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKHRAFibBurdenHeader *)v5 setHeaderText:v4];
    v7 = v6;
  }

  return v6;
}

@end