@interface CRDetailViewComponentTouchIDRepair
- (CRDetailViewComponentTouchIDRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentTouchIDRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self locale];
    v7 = [v6 localizedStringWithKey:@"TouchID" defaultString:@"TouchID"];
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

- (CRDetailViewComponentTouchIDRepair)init
{
  v24.receiver = self;
  v24.super_class = CRDetailViewComponentTouchIDRepair;
  v2 = [(CRUDetailViewComponent *)&v24 init];
  v3 = v2;
  if (v2)
  {
    [(CRUDetailViewComponent *)v2 setIsUsed:0];
    if (_os_feature_enabled_impl())
    {
      [(CRUDetailViewComponent *)v3 setIsUsed:1];
    }

    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v3 locale];
    v6 = [v5 localizedStringWithKey:@"TOUCHID_REPAIR_KB_URL_IPAD" defaultString:@"TOUCHID_REPAIR_KB_URL_IPAD"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = objc_opt_new();
    LODWORD(v6) = [(CRUDetailViewComponent *)v3 isUsed];
    v9 = [(CRUDetailViewComponent *)v3 locale];
    v10 = v9;
    if (v6)
    {
      v11 = [v9 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v11];

      v12 = [(CRUDetailViewComponent *)v3 locale];
      v13 = v12;
      v14 = @"USED_TOUCHID_DESC_IPAD";
    }

    else
    {
      v15 = [v9 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
      [(CRUDetailViewComponent *)v3 setTitleText:v15];

      v12 = [(CRUDetailViewComponent *)v3 locale];
      v13 = v12;
      v14 = @"GENUINE_TOUCHID_DESC_IPAD";
    }

    v16 = [v12 localizedStringWithKey:v14 defaultString:v14];
    v17 = [v16 mutableCopy];

    v18 = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v19 = [v18 objectForKeyedSubscript:@"TouchID"];

    if (v19)
    {
      v20 = [v19 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:v20];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v17];
    v21 = [(CRUDetailViewComponent *)v3 locale];
    v22 = [v21 localizedStringWithKey:@"TOUCHID_FOOTER_LEARN_MORE" defaultString:@"TOUCHID_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v22];
  }

  return v3;
}

@end