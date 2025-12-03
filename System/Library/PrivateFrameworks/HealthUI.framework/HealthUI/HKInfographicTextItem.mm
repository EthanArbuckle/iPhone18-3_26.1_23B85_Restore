@interface HKInfographicTextItem
- (HKInfographicTextItem)initWithDescription:(id)description;
@end

@implementation HKInfographicTextItem

- (HKInfographicTextItem)initWithDescription:(id)description
{
  descriptionCopy = description;
  v8.receiver = self;
  v8.super_class = HKInfographicTextItem;
  v5 = [(HKInfographicTextItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKInfographicTextItem *)v5 setDescriptionString:descriptionCopy];
  }

  return v6;
}

@end