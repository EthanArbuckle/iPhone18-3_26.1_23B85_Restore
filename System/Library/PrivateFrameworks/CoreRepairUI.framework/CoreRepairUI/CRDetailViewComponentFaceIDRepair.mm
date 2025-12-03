@interface CRDetailViewComponentFaceIDRepair
- (CRDetailViewComponentFaceIDRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentFaceIDRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)self locale];
    v7 = [locale localizedStringWithFormat:@"%@_COMPONENT" component:1027];
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

- (CRDetailViewComponentFaceIDRepair)init
{
  v35.receiver = self;
  v35.super_class = CRDetailViewComponentFaceIDRepair;
  v2 = [(CRUDetailViewComponent *)&v35 init];
  v3 = v2;
  if (v2)
  {
    deviceHistory = [(CRUDetailViewComponent *)v2 deviceHistory];
    rchlRepairHistory = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    claimCount = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [deviceHistory checkUsedStatusFor:1027 withHistory:rchlRepairHistory withClaimCount:claimCount]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale localizedStringWithKey:@"FACEID_REPAIR_KB_URL" defaultString:@"FACEID_REPAIR_KB_URL"];
    v10 = [v7 URLWithString:v9];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v10];

    v11 = objc_opt_new();
    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale2 localizedStringWithKey:@"GENUINE_FACEID_DESC" defaultString:@"GENUINE_FACEID_DESC"];
    v14 = [v13 mutableCopy];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v15 = MEMORY[0x277CBEBC0];
      locale3 = [(CRUDetailViewComponent *)v3 locale];
      v17 = [locale3 localizedStringWithKey:@"FACEID_REPAIR_KB_URL_IPAD" defaultString:@"FACEID_REPAIR_KB_URL_IPAD"];
      v18 = [v15 URLWithString:v17];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v18];

      locale4 = [(CRUDetailViewComponent *)v3 locale];
      v20 = [locale4 localizedStringWithKey:@"GENUINE_FACEID_DESC_IPAD" defaultString:@"GENUINE_FACEID_DESC_IPAD"];
      v21 = [v20 mutableCopy];

      v14 = v21;
    }

    locale5 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [locale5 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v23];

    if ([(CRUDetailViewComponent *)v3 isUsed])
    {
      locale6 = [(CRUDetailViewComponent *)v3 locale];
      v25 = [locale6 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v25];

      locale7 = [(CRUDetailViewComponent *)v3 locale];
      v27 = [locale7 localizedStringWithKey:@"USED_FACEID_DESC" defaultString:@"USED_FACEID_DESC"];
      v28 = [v27 mutableCopy];

      v14 = v28;
    }

    repairHistoryItems = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v30 = [repairHistoryItems objectForKeyedSubscript:@"FaceID"];

    if (v30)
    {
      repairDate = [v30 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:repairDate];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v14];
    locale8 = [(CRUDetailViewComponent *)v3 locale];
    v33 = [locale8 localizedStringWithFormat:@"%@_FOOTER_LEARN_MORE" component:1027];
    [(CRUDetailViewComponent *)v3 setFooterText:v33];
  }

  return v3;
}

@end