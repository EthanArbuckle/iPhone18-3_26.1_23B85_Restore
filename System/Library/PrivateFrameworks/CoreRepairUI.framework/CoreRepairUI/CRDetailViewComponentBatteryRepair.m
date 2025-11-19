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
    v6 = [(CRUDetailViewComponent *)self locale];
    v7 = [v6 localizedStringWithKey:@"Battery" defaultString:@"Battery"];
    v8 = [(CRUDetailViewComponent *)self isUsed];
    v9 = [(CRUDetailViewComponent *)self repairDate];
    v10 = [(CRUDetailViewComponent *)self componentRepairSpecifierForComponent:v7 IsUsed:v8 repairDate:v9];
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
    v4 = [(CRUDetailViewComponent *)v2 deviceHistory];
    v5 = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    v6 = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [v4 checkUsedStatusFor:1024 withHistory:v5 withClaimCount:v6]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = MEMORY[0x277CBEBC0];
    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"BATTERY_REPAIR_KB_URL" defaultString:@"BATTERY_REPAIR_KB_URL"];
    v10 = [v7 URLWithString:v9];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v10];

    v11 = [(CRUDetailViewComponent *)v3 locale];
    v12 = [v11 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v12];

    v13 = objc_opt_new();
    v14 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [v14 localizedStringWithKey:@"GENUINE_BATTERY_DESC" defaultString:@"GENUINE_BATTERY_DESC"];
    [v13 appendString:v15];

    v16 = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v17 = [v16 objectForKeyedSubscript:@"Battery"];

    if (v17)
    {
      v18 = [v17 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:v18];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v13];
    v19 = [(CRUDetailViewComponent *)v3 locale];
    v20 = [v19 localizedStringWithKey:@"BATTERY_FOOTER_LEARN_MORE" defaultString:@"BATTERY_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v20];
  }

  return v3;
}

@end