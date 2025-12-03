@interface CRDetailViewComponentBackGlassFinishRepair
- (CRDetailViewComponentBackGlassFinishRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentBackGlassFinishRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [@"BackGlass" stringByAppendingString:@"FinishRepair"];
    v7 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:v6];
    [v5 addObjectsFromArray:v7];

    v8 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentBackGlassFinishRepair)init
{
  v19.receiver = self;
  v19.super_class = CRDetailViewComponentBackGlassFinishRepair;
  v2 = [(CRUDetailViewComponent *)&v19 init];
  v3 = v2;
  if (v2)
  {
    locale = [(CRUDetailViewComponent *)v2 locale];
    v5 = [locale localizedStringWithKey:@"NEW_BACK_GLASS" defaultString:@"NEW_BACK_GLASS"];
    [(CRUDetailViewComponent *)v3 setTitleText:v5];

    v6 = MEMORY[0x277CBEBC0];
    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v8 = [locale2 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
    v9 = [v6 URLWithString:v8];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"FINISH_BACKGLASS_DESC" defaultString:@"FINISH_BACKGLASS_DESC"];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
    [(CRUDetailViewComponent *)v3 setButtonTitle:v13];

    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
    locale5 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [locale5 localizedStringWithKey:@"BACK_GLASS" defaultString:@"BACK_GLASS"];
    [(CRUDetailViewComponent *)v3 setComponentName:v15];

    locale6 = [(CRUDetailViewComponent *)v3 locale];
    v17 = [locale6 localizedStringWithKey:@"BACK_GLASS_FOOTER_LEARN_MORE" defaultString:@"BACK_GLASS_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v17];
  }

  return v3;
}

@end