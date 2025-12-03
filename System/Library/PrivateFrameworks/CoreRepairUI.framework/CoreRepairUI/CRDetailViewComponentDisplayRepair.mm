@interface CRDetailViewComponentDisplayRepair
- (CRDetailViewComponentDisplayRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentDisplayRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)self locale];
    v7 = [locale localizedStringWithKey:@"Display" defaultString:@"Display"];
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

- (CRDetailViewComponentDisplayRepair)init
{
  v37.receiver = self;
  v37.super_class = CRDetailViewComponentDisplayRepair;
  v2 = [(CRUDetailViewComponent *)&v37 init];
  v3 = v2;
  if (v2)
  {
    deviceHistory = [(CRUDetailViewComponent *)v2 deviceHistory];
    rchlRepairHistory = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    claimCount = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [deviceHistory checkUsedStatusFor:1025 withHistory:rchlRepairHistory withClaimCount:claimCount]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = MEMORY[0x277CBEBC0];
    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v12 = [locale2 localizedStringWithKey:@"DISPLAY_REPAIR_KB_URL" defaultString:@"DISPLAY_REPAIR_KB_URL"];
    v13 = [v10 URLWithString:v12];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v13];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [locale3 localizedStringWithKey:@"GENUINE_DISPLAY_DESC" defaultString:@"GENUINE_DISPLAY_DESC"];
    v16 = [v15 mutableCopy];

    if ([(CRUDetailViewComponent *)v3 isUsed])
    {
      locale4 = [(CRUDetailViewComponent *)v3 locale];
      v18 = [locale4 localizedStringWithKey:@"USED_DISPLAY_DESC" defaultString:@"USED_DISPLAY_DESC"];
      v19 = [v18 mutableCopy];

      locale5 = [(CRUDetailViewComponent *)v3 locale];
      v21 = [locale5 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v21];

      v16 = v19;
    }

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v22 = MEMORY[0x277CBEBC0];
      locale6 = [(CRUDetailViewComponent *)v3 locale];
      v24 = [locale6 localizedStringWithKey:@"DISPLAY_REPAIR_KB_URL_IPAD" defaultString:@"DISPLAY_REPAIR_KB_URL_IPAD"];
      v25 = [v22 URLWithString:v24];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v25];

      LODWORD(locale6) = [(CRUDetailViewComponent *)v3 isUsed];
      locale7 = [(CRUDetailViewComponent *)v3 locale];
      v27 = locale7;
      if (locale6)
      {
        v28 = @"USED_DISPLAY_DESC_IPAD";
      }

      else
      {
        v28 = @"GENUINE_DISPLAY_DESC_IPAD";
      }

      v29 = [locale7 localizedStringWithKey:v28 defaultString:v28];
      v30 = [v29 mutableCopy];

      v16 = v30;
    }

    repairHistoryItems = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v32 = [repairHistoryItems objectForKeyedSubscript:@"Display"];

    if (v32)
    {
      repairDate = [v32 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:repairDate];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v16];
    locale8 = [(CRUDetailViewComponent *)v3 locale];
    v35 = [locale8 localizedStringWithKey:@"DISPLAY_FOOTER_LEARN_MORE" defaultString:@"DISPLAY_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v35];
  }

  return v3;
}

@end