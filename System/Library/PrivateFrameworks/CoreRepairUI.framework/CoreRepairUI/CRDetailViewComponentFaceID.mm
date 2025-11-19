@interface CRDetailViewComponentFaceID
- (CRDetailViewComponentFaceID)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentFaceID

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"FaceID"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v8 = v5;

    v9 = objc_opt_new();
    [v9 clearFollowUpForkey:@"com.apple.mobilerepair.FaceIDRepair"];

    v10 = objc_opt_new();
    [v10 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"FaceID"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentFaceID)init
{
  v21.receiver = self;
  v21.super_class = CRDetailViewComponentFaceID;
  v2 = [(CRUDetailViewComponent *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithFormat:@"%_KB_URL" component:1027];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"FACEID_SETTINGS_TITLE" defaultString:@"FACEID_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"FACEID_DESC" defaultString:@"FACEID_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [v15 localizedStringWithKey:@"TRUEDEPTH_KB_URL_IPAD" defaultString:@"TRUEDEPTH_KB_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];

      v18 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [v18 localizedStringWithKey:@"FACEID_DESC_IPAD" defaultString:@"FACEID_DESC_IPAD"];
      [(CRUDetailViewComponent *)v3 setInformativeText:v19];
    }
  }

  return v3;
}

@end