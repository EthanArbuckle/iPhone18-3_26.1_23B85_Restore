@interface CRDetailViewComponentTouchID
- (CRDetailViewComponentTouchID)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentTouchID

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"TouchID"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v8 = v5;

    v9 = objc_opt_new();
    [v9 clearFollowUpForkey:@"com.apple.mobilerepair.TouchIDRepair"];

    v10 = objc_opt_new();
    [v10 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"TouchID"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentTouchID)init
{
  v15.receiver = self;
  v15.super_class = CRDetailViewComponentTouchID;
  v2 = [(CRUDetailViewComponent *)&v15 init];
  v3 = v2;
  if (v2 && [(CRUDetailViewComponent *)v2 deviceClass]== 3)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v3 locale];
    v6 = [locale localizedStringWithKey:@"TOUCHID_KB_URL_IPAD" defaultString:@"TOUCHID_KB_URL_IPAD"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"TOUCHID_DESC_IPAD" defaultString:@"TOUCHID_DESC_IPAD"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"TOUCHID_SETTINGS_TITLE" defaultString:@"TOUCHID_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v11];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];
  }

  return v3;
}

@end