@interface HKInfographicSection
- (HKInfographicSection)initWithItems:(id)items footer:(id)footer;
@end

@implementation HKInfographicSection

- (HKInfographicSection)initWithItems:(id)items footer:(id)footer
{
  itemsCopy = items;
  footerCopy = footer;
  v11.receiver = self;
  v11.super_class = HKInfographicSection;
  v8 = [(HKInfographicSection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicSection *)v8 setItems:itemsCopy];
    [(HKInfographicSection *)v9 setFooter:footerCopy];
  }

  return v9;
}

@end