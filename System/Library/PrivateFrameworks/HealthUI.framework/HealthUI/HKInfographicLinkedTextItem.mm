@interface HKInfographicLinkedTextItem
- (HKInfographicLinkedTextItem)initWithDescription:(id)description didTapLinkedText:(id)text;
@end

@implementation HKInfographicLinkedTextItem

- (HKInfographicLinkedTextItem)initWithDescription:(id)description didTapLinkedText:(id)text
{
  descriptionCopy = description;
  textCopy = text;
  v11.receiver = self;
  v11.super_class = HKInfographicLinkedTextItem;
  v8 = [(HKInfographicLinkedTextItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicLinkedTextItem *)v8 setDescriptionString:descriptionCopy];
    [(HKInfographicLinkedTextItem *)v9 setDidTapLinkedText:textCopy];
  }

  return v9;
}

@end