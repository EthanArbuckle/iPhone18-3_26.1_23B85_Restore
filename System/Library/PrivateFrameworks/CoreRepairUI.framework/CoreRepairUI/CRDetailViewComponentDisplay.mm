@interface CRDetailViewComponentDisplay
- (CRDetailViewComponentDisplay)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentDisplay

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"Display"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentDisplay)init
{
  v22.receiver = self;
  v22.super_class = CRDetailViewComponentDisplay;
  v2 = [(CRUDetailViewComponent *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v2 locale];
    v6 = [locale localizedStringWithKey:@"NONGENUINE_DISPLAY_URL" defaultString:@"NONGENUINE_DISPLAY_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"UNKNOWN_PART" defaultString:@"UNKNOWN_PART"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"NONGENUINE_DISPLAY_DESC" defaultString:@"NONGENUINE_DISPLAY_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v14 = MEMORY[0x277CBEBC0];
      locale5 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [locale5 localizedStringWithKey:@"NONGENUINE_DISPLAY_URL_IPAD" defaultString:@"NONGENUINE_DISPLAY_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];

      locale6 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [locale6 localizedStringWithKey:@"NONGENUINE_DISPLAY_DESC_IPAD" defaultString:@"NONGENUINE_DISPLAY_DESC_IPAD"];
      [(CRUDetailViewComponent *)v3 setInformativeText:v19];
    }

    v20 = objc_opt_new();
    [v20 clearFollowUpForkey:@"com.apple.mobilerepair.DisplayRepair"];
  }

  return v3;
}

@end