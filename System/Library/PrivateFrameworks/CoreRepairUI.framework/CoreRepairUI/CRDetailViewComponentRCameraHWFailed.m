@interface CRDetailViewComponentRCameraHWFailed
- (CRDetailViewComponentRCameraHWFailed)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentRCameraHWFailed

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"RCameraFailed"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v8 = v5;

    v9 = objc_opt_new();
    [v9 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"RCameraFailed"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentRCameraHWFailed)init
{
  v13.receiver = self;
  v13.super_class = CRDetailViewComponentRCameraHWFailed;
  v2 = [(CRUDetailViewComponent *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithKey:@"RCAMERA_KB_URL" defaultString:@"RCAMERA_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"CAMERA_SETTINGS_TITLE" defaultString:@"CAMERA_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"CAMERA_DESC" defaultString:@"CAMERA_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
  }

  return v3;
}

@end