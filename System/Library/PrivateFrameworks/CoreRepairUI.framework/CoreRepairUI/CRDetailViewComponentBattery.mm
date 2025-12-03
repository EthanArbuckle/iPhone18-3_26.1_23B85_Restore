@interface CRDetailViewComponentBattery
- (CRDetailViewComponentBattery)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentBattery

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"Battery"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentBattery)init
{
  v16.receiver = self;
  v16.super_class = CRDetailViewComponentBattery;
  v2 = [(CRUDetailViewComponent *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v2 locale];
    v6 = [locale localizedStringWithKey:@"NONGENUINE_BATTERY_URL" defaultString:@"NONGENUINE_BATTERY_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"UNKNOWN_PART" defaultString:@"UNKNOWN_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"NONGENUINE_BATTERY_DESC" defaultString:@"NONGENUINE_BATTERY_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];

    v14 = objc_opt_new();
    [v14 clearFollowUpForkey:@"com.apple.mobilerepair.BatteryRepair"];
  }

  return v3;
}

@end