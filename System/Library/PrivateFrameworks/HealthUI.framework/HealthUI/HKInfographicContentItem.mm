@interface HKInfographicContentItem
- (HKInfographicContentItem)initWithTitle:(id)a3 description:(id)a4;
@end

@implementation HKInfographicContentItem

- (HKInfographicContentItem)initWithTitle:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKInfographicContentItem;
  v8 = [(HKInfographicContentItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicContentItem *)v8 setTitleString:v6];
    [(HKInfographicContentItem *)v9 setDescriptionString:v7];
  }

  return v9;
}

@end