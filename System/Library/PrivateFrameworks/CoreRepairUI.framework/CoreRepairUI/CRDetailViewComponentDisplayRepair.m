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
    v6 = [(CRUDetailViewComponent *)self locale];
    v7 = [v6 localizedStringWithKey:@"Display" defaultString:@"Display"];
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

- (CRDetailViewComponentDisplayRepair)init
{
  v37.receiver = self;
  v37.super_class = CRDetailViewComponentDisplayRepair;
  v2 = [(CRUDetailViewComponent *)&v37 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CRUDetailViewComponent *)v2 deviceHistory];
    v5 = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    v6 = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [v4 checkUsedStatusFor:1025 withHistory:v5 withClaimCount:v6]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = objc_opt_new();
    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = MEMORY[0x277CBEBC0];
    v11 = [(CRUDetailViewComponent *)v3 locale];
    v12 = [v11 localizedStringWithKey:@"DISPLAY_REPAIR_KB_URL" defaultString:@"DISPLAY_REPAIR_KB_URL"];
    v13 = [v10 URLWithString:v12];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v13];

    v14 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [v14 localizedStringWithKey:@"GENUINE_DISPLAY_DESC" defaultString:@"GENUINE_DISPLAY_DESC"];
    v16 = [v15 mutableCopy];

    if ([(CRUDetailViewComponent *)v3 isUsed])
    {
      v17 = [(CRUDetailViewComponent *)v3 locale];
      v18 = [v17 localizedStringWithKey:@"USED_DISPLAY_DESC" defaultString:@"USED_DISPLAY_DESC"];
      v19 = [v18 mutableCopy];

      v20 = [(CRUDetailViewComponent *)v3 locale];
      v21 = [v20 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v21];

      v16 = v19;
    }

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v22 = MEMORY[0x277CBEBC0];
      v23 = [(CRUDetailViewComponent *)v3 locale];
      v24 = [v23 localizedStringWithKey:@"DISPLAY_REPAIR_KB_URL_IPAD" defaultString:@"DISPLAY_REPAIR_KB_URL_IPAD"];
      v25 = [v22 URLWithString:v24];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v25];

      LODWORD(v23) = [(CRUDetailViewComponent *)v3 isUsed];
      v26 = [(CRUDetailViewComponent *)v3 locale];
      v27 = v26;
      if (v23)
      {
        v28 = @"USED_DISPLAY_DESC_IPAD";
      }

      else
      {
        v28 = @"GENUINE_DISPLAY_DESC_IPAD";
      }

      v29 = [v26 localizedStringWithKey:v28 defaultString:v28];
      v30 = [v29 mutableCopy];

      v16 = v30;
    }

    v31 = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v32 = [v31 objectForKeyedSubscript:@"Display"];

    if (v32)
    {
      v33 = [v32 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:v33];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v16];
    v34 = [(CRUDetailViewComponent *)v3 locale];
    v35 = [v34 localizedStringWithKey:@"DISPLAY_FOOTER_LEARN_MORE" defaultString:@"DISPLAY_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v35];
  }

  return v3;
}

@end