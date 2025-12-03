@interface CRDetailViewComponentBatteryRepair
- (CRDetailViewComponentBatteryRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentBatteryRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)self locale];
    v7 = [locale localizedStringWithKey:@"Battery" defaultString:@"Battery"];
    isUsed = [(CRUDetailViewComponent *)self isUsed];
    repairDate = [(CRUDetailViewComponent *)self repairDate];
    v10 = [(CRUDetailViewComponent *)self componentRepairSpecifierForComponent:v7 IsUsed:isUsed repairDate:repairDate];
    [v5 addObjectsFromArray:v10];

    v11 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentBatteryRepair)init
{
  v22.receiver = self;
  v22.super_class = CRDetailViewComponentBatteryRepair;
  v2 = [(CRUDetailViewComponent *)&v22 init];
  v3 = v2;
  if (v2)
  {
    deviceHistory = [(CRUDetailViewComponent *)v2 deviceHistory];
    rchlRepairHistory = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    claimCount = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [deviceHistory checkUsedStatusFor:1024 withHistory:rchlRepairHistory withClaimCount:claimCount]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale localizedStringWithKey:@"BATTERY_REPAIR_KB_URL" defaultString:@"BATTERY_REPAIR_KB_URL"];
    v10 = [v7 URLWithString:v9];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v10];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v12 = [locale2 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v12];

    v13 = objc_opt_new();
    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [locale3 localizedStringWithKey:@"GENUINE_BATTERY_DESC" defaultString:@"GENUINE_BATTERY_DESC"];
    [v13 appendString:v15];

    repairHistoryItems = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v17 = [repairHistoryItems objectForKeyedSubscript:@"Battery"];

    if (v17)
    {
      repairDate = [v17 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:repairDate];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v13];
    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v20 = [locale4 localizedStringWithKey:@"BATTERY_FOOTER_LEARN_MORE" defaultString:@"BATTERY_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v20];
  }

  return v3;
}

@end