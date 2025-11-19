@interface HKInfographicSection
- (HKInfographicSection)initWithItems:(id)a3 footer:(id)a4;
@end

@implementation HKInfographicSection

- (HKInfographicSection)initWithItems:(id)a3 footer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKInfographicSection;
  v8 = [(HKInfographicSection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKInfographicSection *)v8 setItems:v6];
    [(HKInfographicSection *)v9 setFooter:v7];
  }

  return v9;
}

@end