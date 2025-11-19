@interface CRDetailViewComponentMtubRepair
- (CRDetailViewComponentMtubRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentMtubRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277D00FC0] getComponentName:1029];
    v7 = [(CRUDetailViewComponent *)self repairDate];
    v8 = [(CRUDetailViewComponent *)self componentRepairSpecifierForComponent:v6 IsUsed:0 repairDate:v7];
    [v5 addObjectsFromArray:v8];

    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentMtubRepair)init
{
  v25.receiver = self;
  v25.super_class = CRDetailViewComponentMtubRepair;
  v2 = [(CRUDetailViewComponent *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithKey:@"REAR_SYSTEM_REPAIR_KB_URL" defaultString:@"REAR_SYSTEM_REPAIR_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = objc_opt_new();
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277D00FC0] getLocalizationKey:1029];
    v13 = [v11 stringWithFormat:@"GENUINE_%@_DESC", v12];

    v14 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [v14 localizedStringWithKey:v13 defaultString:v13];
    [v10 appendString:v15];

    v16 = [(CRUDetailViewComponent *)v3 repairHistoryItems];
    v17 = [v16 objectForKeyedSubscript:@"MTUB"];

    if (v17)
    {
      v18 = [v17 repairDate];
      [(CRUDetailViewComponent *)v3 setRepairDate:v18];
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v10];
    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277D00FC0] getLocalizationKey:1029];
    v21 = [v19 stringWithFormat:@"%@_FOOTER_LEARN_MORE", v20];

    v22 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [v22 localizedStringWithKey:v21 defaultString:v21];
    [(CRUDetailViewComponent *)v3 setFooterText:v23];
  }

  return v3;
}

@end