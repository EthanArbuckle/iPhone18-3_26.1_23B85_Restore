@interface HKInfographicLinkedTextItem
- (HKInfographicLinkedTextItem)initWithDescription:(id)a3 didTapLinkedText:(id)a4;
@end

@implementation HKInfographicLinkedTextItem

- (HKInfographicLinkedTextItem)initWithDescription:(id)a3 didTapLinkedText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKInfographicLinkedTextItem;
  v8 = [(HKInfographicLinkedTextItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicLinkedTextItem *)v8 setDescriptionString:v6];
    [(HKInfographicLinkedTextItem *)v9 setDidTapLinkedText:v7];
  }

  return v9;
}

@end