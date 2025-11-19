@interface CRDetailViewComponentEnclosureFinishRepair
- (CRDetailViewComponentEnclosureFinishRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentEnclosureFinishRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [@"Enclosure" stringByAppendingString:@"FinishRepair"];
    v7 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:v6];
    [v5 addObjectsFromArray:v7];

    v8 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentEnclosureFinishRepair)init
{
  v19.receiver = self;
  v19.super_class = CRDetailViewComponentEnclosureFinishRepair;
  v2 = [(CRUDetailViewComponent *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CRUDetailViewComponent *)v2 locale];
    v5 = [v4 localizedStringWithKey:@"NEW_ENCLOSURE" defaultString:@"NEW_ENCLOSURE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v5];

    v6 = MEMORY[0x277CBEBC0];
    v7 = [(CRUDetailViewComponent *)v3 locale];
    v8 = [v7 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
    v9 = [v6 URLWithString:v8];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"FINISH_ENCLOSURE_DESC" defaultString:@"FINISH_ENCLOSURE_DESC"];

    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
    [(CRUDetailViewComponent *)v3 setButtonTitle:v13];

    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
    v14 = [(CRUDetailViewComponent *)v3 locale];
    v15 = [v14 localizedStringWithKey:@"ENCLOSURE" defaultString:@"ENCLOSURE"];
    [(CRUDetailViewComponent *)v3 setComponentName:v15];

    v16 = [(CRUDetailViewComponent *)v3 locale];
    v17 = [v16 localizedStringWithKey:@"ENCLOSURE_FOOTER_LEARN_MORE" defaultString:@"ENCLOSURE_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v17];
  }

  return v3;
}

@end