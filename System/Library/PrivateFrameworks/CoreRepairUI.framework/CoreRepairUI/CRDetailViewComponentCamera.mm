@interface CRDetailViewComponentCamera
- (CRDetailViewComponentCamera)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentCamera

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"Camera"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentCamera)init
{
  v16.receiver = self;
  v16.super_class = CRDetailViewComponentCamera;
  v2 = [(CRUDetailViewComponent *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithKey:@"NONGENUINE_KB_URL" defaultString:@"NONGENUINE_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"UNKNOWN_PART" defaultString:@"UNKNOWN_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"NONGENUINE_CAMERA_DESC" defaultString:@"NONGENUINE_CAMERA_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];

    v14 = objc_opt_new();
    [v14 clearFollowUpForkey:@"com.apple.mobilerepair.CameraRepair"];
  }

  return v3;
}

@end