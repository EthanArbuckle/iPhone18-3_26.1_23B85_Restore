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
    v4 = [(CRUDetailViewComponent *)v2 locale];
    v5 = [v4 localizedStringWithKey:@"NEW_CAMERA" defaultString:@"NEW_CAMERA"];
    [(CRUDetailViewComponent *)v3 setTitleText:v5];

    v6 = MEMORY[0x277CBEBC0];
    v7 = [(CRUDetailViewComponent *)v3 locale];
    v8 = [v7 localizedStringWithKey:@"FINISH_REPAIR_KB_URL" defaultString:@"FINISH_REPAIR_KB_URL"];
    v9 = [v6 URLWithString:v8];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"FINISH_CAMERA_DESC" defaultString:@"FINISH_CAMERA_DESC"];

    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
    [(CRUDetailViewComponent *)v3 setButtonTitle:v13];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [v15 localizedStringWithKey:@"CAMERA_REPAIR_KB_URL_IPAD" defaultString:@"CAMERA_REPAIR_KB_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];

      v18 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [v18 localizedStringWithKey:@"FINISH_CAMERA_DESC_IPAD" defaultString:@"FINISH_CAMERA_DESC_IPAD"];

      v11 = v19;
    }

    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
    v20 = [(CRUDetailViewComponent *)v3 locale];
    v21 = [v20 localizedStringWithKey:@"Camera" defaultString:@"Camera"];
    [(CRUDetailViewComponent *)v3 setComponentName:v21];

    v22 = [(CRUDetailViewComponent *)v3 locale];
    v23 = [v22 localizedStringWithKey:@"CAMERA_FOOTER_LEARN_MORE" defaultString:@"CAMERA_FOOTER_LEARN_MORE"];
    [(CRUDetailViewComponent *)v3 setFooterText:v23];
  }

  return v3;
}

@end