@interface CRDetailViewComponentCameraRepair
- (CRDetailViewComponentCameraRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentCameraRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)self locale];
    v7 = [locale localizedStringWithKey:@"Camera" defaultString:@"Camera"];
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

- (CRDetailViewComponentCameraRepair)init
{
  v29.receiver = self;
  v29.super_class = CRDetailViewComponentCameraRepair;
  v2 = [(CRUDetailViewComponent *)&v29 init];
  v3 = v2;
  if (!v2)
  {
LABEL_11:
    v4 = v3;
    goto LABEL_12;
  }

  if ([(CRUDetailViewComponent *)v2 deviceClass]!= 3)
  {
    deviceHistory = [(CRUDetailViewComponent *)v3 deviceHistory];
    rchlRepairHistory = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    claimCount = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [deviceHistory checkUsedStatusFor:1026 withHistory:rchlRepairHistory withClaimCount:claimCount]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v8 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v3 locale];
    v10 = [locale localizedStringWithKey:@"CAMERA_REPAIR_KB_URL" defaultString:@"CAMERA_REPAIR_KB_URL"];
    v11 = [v8 URLWithString:v10];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v11];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale2 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v13];

    v14 = objc_opt_new();
    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v16 = [locale3 localizedStringWithKey:@"GENUINE_CAMERA_DESC" defaultString:@"GENUINE_CAMERA_DESC"];
    v17 = [v16 mutableCopy];

    if ([(CRUDetailViewComponent *)v3 isUsed])
    {
      locale4 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [locale4 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v19];

      locale5 = [(CRUDetailViewComponent *)v3 locale];
      v21 = [locale5 localizedStringWithKey:@"USED_CAMERA_DESC" defaultString:@"USED_CAMERA_DESC"];
      v22 = [v21 mutableCopy];

      v17 = v22;
    }

    repairHistoryItems = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v24 = [repairHistoryItems objectForKeyedSubscript:@"Camera"];

    if (v24)
    {
      repairDate = [v24 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:repairDate];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v17];
    locale6 = [(CRUDetailViewComponent *)v3 locale];
    v27 = [locale6 localizedStringWithKey:@"CAMERA_FOOTER_LEARN_MORE" defaultString:@"CAMERA_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v27];

    goto LABEL_11;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

@end