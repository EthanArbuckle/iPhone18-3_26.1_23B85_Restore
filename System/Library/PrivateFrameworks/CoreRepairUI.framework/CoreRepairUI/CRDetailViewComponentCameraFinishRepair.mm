@interface CRDetailViewComponentCameraFinishRepair
- (CRDetailViewComponentCameraFinishRepair)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentCameraFinishRepair

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [@"Camera" stringByAppendingString:@"FinishRepair"];
    v7 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:v6];
    [v5 addObjectsFromArray:v7];

    v8 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentCameraFinishRepair)init
{
  v25.receiver = self;
  v25.super_class = CRDetailViewComponentCameraFinishRepair;
  v2 = [(CRUDetailViewComponent *)&v25 init];
  v3 = v2;
  if (v2)
  {
    locale = [(CRUDetailViewComponent *)v2 locale];
    v5 = [locale localizedStringWithKey:@"NEW_CAMERA" defaultString:@"NEW_CAMERA"];
    [(CRUDetailViewComponent *)v3 setTitleText:v5];

    v6 = MEMORY[0x277CBEBC0];
    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v8 = [locale2 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
    v9 = [v6 URLWithString:v8];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"FINISH_CAMERA_DESC" defaultString:@"FINISH_CAMERA_DESC"];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
    [(CRUDetailViewComponent *)v3 setButtonTitle:v13];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v14 = MEMORY[0x277CBEBC0];
      locale5 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [locale5 localizedStringWithKey:@"CAMERA_REPAIR_KB_URL_IPAD" defaultString:@"CAMERA_REPAIR_KB_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];

      locale6 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [locale6 localizedStringWithKey:@"FINISH_CAMERA_DESC_IPAD" defaultString:@"FINISH_CAMERA_DESC_IPAD"];

      v11 = v19;
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
    locale7 = [(CRUDetailViewComponent *)v3 locale];
    v21 = [locale7 localizedStringWithKey:@"Camera" defaultString:@"Camera"];
    [(CRUDetailViewComponent *)v3 setComponentName:v21];

    locale8 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [locale8 localizedStringWithKey:@"CAMERA_FOOTER_LEARN_MORE" defaultString:@"CAMERA_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v23];
  }

  return v3;
}

@end