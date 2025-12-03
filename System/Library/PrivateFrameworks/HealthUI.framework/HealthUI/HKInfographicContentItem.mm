@interface HKInfographicContentItem
- (HKInfographicContentItem)initWithTitle:(id)title description:(id)description;
@end

@implementation HKInfographicContentItem

- (HKInfographicContentItem)initWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = HKInfographicContentItem;
  v8 = [(HKInfographicContentItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicContentItem *)v8 setTitleString:titleCopy];
    [(HKInfographicContentItem *)v9 setDescriptionString:descriptionCopy];
  }

  return v9;
}

@end