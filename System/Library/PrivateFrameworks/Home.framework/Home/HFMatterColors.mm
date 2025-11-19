@interface HFMatterColors
+ (id)rvcTintColor;
- (HFMatterColors)init;
@end

@implementation HFMatterColors

+ (id)rvcTintColor
{
  sub_20D9D7510(0, &qword_27C844D70, 0x277D75348);
  v2 = sub_20DD65404();

  return v2;
}

- (HFMatterColors)init
{
  v3.receiver = self;
  v3.super_class = HFMatterColors;
  return [(HFMatterColors *)&v3 init];
}

@end