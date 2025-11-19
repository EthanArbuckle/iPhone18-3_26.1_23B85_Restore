@interface CRDetailViewComponentDisplayFinishRepair
- (CRDetailViewComponentDisplayFinishRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentDisplayFinishRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [@"Display" stringByAppendingString:@"FinishRepair"];
    v7 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:v6];
    [v5 addObjectsFromArray:v7];

    v8 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentDisplayFinishRepair)init
{
  v27.receiver = self;
  v27.super_class = CRDetailViewComponentDisplayFinishRepair;
  v2 = [(CRUDetailViewComponent *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CRUDetailViewComponent *)v2 locale];
    v5 = [v4 localizedStringWithKey:@"NEW_DISPLAY" defaultString:@"NEW_DISPLAY"];
    [(CRUDetailViewComponent *)v3 setTitleText:v5];

    v6 = MEMORY[0x277CBEBC0];
    v7 = [(CRUDetailViewComponent *)v3 locale];
    v8 = [v7 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
    v9 = [v6 URLWithString:v8];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"FINISH_DISPLAY_DESC" defaultString:@"FINISH_DISPLAY_DESC"];
    v12 = [v11 copy];

    v13 = [(CRUDetailViewComponent *)v3 locale];
    v14 = [v13 localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
    [(CRUDetailViewComponent *)v3 setButtonTitle:v14];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [(CRUDetailViewComponent *)v3 locale];
      v17 = [v16 localizedStringWithKey:@"DISPLAY_REPAIR_KB_URL_IPAD" defaultString:@"DISPLAY_REPAIR_KB_URL_IPAD"];
      v18 = [v15 URLWithString:v17];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v18];

      v19 = [(CRUDetailViewComponent *)v3 locale];
      v20 = [v19 localizedStringWithKey:@"FINISH_DISPLAY_DESC_IPAD" defaultString:@"FINISH_DISPLAY_DESC_IPAD"];
      v21 = [v20 copy];

      v12 = v21;
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v12];
    v22 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [v22 localizedStringWithKey:@"Display" defaultString:@"Display"];
    [(CRUDetailViewComponent *)v3 setComponentName:v23];

    v24 = [(CRUDetailViewComponent *)v3 locale];
    v25 = [v24 localizedStringWithKey:@"DISPLAY_FOOTER_LEARN_MORE" defaultString:@"DISPLAY_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v25];
  }

  return v3;
}

@end