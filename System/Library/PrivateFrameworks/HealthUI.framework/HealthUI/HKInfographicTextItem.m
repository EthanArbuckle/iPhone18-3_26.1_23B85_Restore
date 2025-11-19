@interface HKInfographicTextItem
- (HKInfographicTextItem)initWithDescription:(id)a3;
@end

@implementation HKInfographicTextItem

- (HKInfographicTextItem)initWithDescription:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKInfographicTextItem;
  v5 = [(HKInfographicTextItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKInfographicTextItem *)v5 setDescriptionString:v4];
  }

  return v6;
}

@end