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
    locale = [(CRUDetailViewComponent *)self locale];
    v7 = [locale localizedStringWithKey:@"TouchID" defaultString:@"TouchID"];
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
    locale = [(CRUDetailViewComponent *)v3 locale];
    v6 = [locale localizedStringWithKey:@"TOUCHID_REPAIR_KB_URL_IPAD" defaultString:@"TOUCHID_REPAIR_KB_URL_IPAD"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = objc_opt_new();
    LODWORD(v6) = [(CRUDetailViewComponent *)v3 isUsed];
    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v10 = locale2;
    if (v6)
    {
      v11 = [locale2 localizedStringWithKey:@"USED" defaultString:@"USED"];
      [(CRUDetailViewComponent *)v3 setTitleText:v11];

      locale3 = [(CRUDetailViewComponent *)v3 locale];
      v13 = locale3;
      v14 = @"USED_TOUCHID_DESC_IPAD";
    }

    else
    {
      v15 = [locale2 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
      [(CRUDetailViewComponent *)v3 setTitleText:v15];

      locale3 = [(CRUDetailViewComponent *)v3 locale];
      v13 = locale3;
      v14 = @"GENUINE_TOUCHID_DESC_IPAD";
    }

    v16 = [locale3 localizedStringWithKey:v14 defaultString:v14];
    v17 = [v16 mutableCopy];

    repairHistoryItems = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v19 = [repairHistoryItems objectForKeyedSubscript:@"TouchID"];

    if (v19)
    {
      repairDate = [v19 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:repairDate];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v17];
    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v22 = [locale4 localizedStringWithKey:@"TOUCHID_FOOTER_LEARN_MORE" defaultString:@"TOUCHID_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v22];
  }

  return v3;
}

@end