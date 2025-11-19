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
    v6 = [(CRUDetailViewComponent *)self locale];
    v7 = [v6 localizedStringWithFormat:@"%@_COMPONENT" component:1027];
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

- (CRDetailViewComponentFaceIDRepair)init
{
  v35.receiver = self;
  v35.super_class = CRDetailViewComponentFaceIDRepair;
  v2 = [(CRUDetailViewComponent *)&v35 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CRUDetailViewComponent *)v2 deviceHistory];
    v5 = [(CRUDetailViewComponent *)v3 rchlRepairHistory];
    v6 = [(CRUDetailViewComponent *)v3 claimCount];
    -[CRUDetailViewComponent setIsUsed:](v3, "setIsUsed:", [v4 checkUsedStatusFor:1027 withHistory:v5 withClaimCount:v6]);

    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v7 = MEMORY[0x277CBEBC0];
    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"FACEID_REPAIR_KB_URL" defaultString:@"FACEID_REPAIR_KB_URL"];
    v10 = [v7 URLWithString:v9];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v10];

    v11 = objc_opt_new();
    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"GENUINE_FACEID_DESC" defaultString:@"GENUINE_FACEID_DESC"];
    v14 = [v13 mutableCopy];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [(CRUDetailViewComponent *)v3 locale];
      v17 = [v16 localizedStringWithKey:@"FACEID_REPAIR_KB_URL_IPAD" defaultString:@"FACEID_REPAIR_KB_URL_IPAD"];
      v18 = [v15 URLWithString:v17];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v18];

      v19 = [(CRUDetailViewComponent *)v3 locale];
      v20 = [v19 localizedStringWithKey:@"GENUINE_FACEID_DESC_IPAD" defaultString:@"GENUINE_FACEID_DESC_IPAD"];
      v21 = [v20 mutableCopy];

      v14 = v21;
    }

    v22 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [v22 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v23];

    if ([(CRUDetailViewComponent *)v3 isUsed])
    {
      v24 = [(CRUDetailViewComponent *)v3 locale];
      v25 = [v24 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v25];

      v26 = [(CRUDetailViewComponent *)v3 locale];
      v27 = [v26 localizedStringWithKey:@"USED_FACEID_DESC" defaultString:@"USED_FACEID_DESC"];
      v28 = [v27 mutableCopy];

      v14 = v28;
    }

    v29 = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v30 = [v29 objectForKeyedSubscript:@"FaceID"];

    if (v30)
    {
      v31 = [v30 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:v31];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v14];
    v32 = [(CRUDetailViewComponent *)v3 locale];
    v33 = [v32 localizedStringWithFormat:@"%@_FOOTER_LEARN_MORE" component:1027];
    [(CRUDetailViewComponent *)v3 setFooterText:v33];
  }

  return v3;
}

@end