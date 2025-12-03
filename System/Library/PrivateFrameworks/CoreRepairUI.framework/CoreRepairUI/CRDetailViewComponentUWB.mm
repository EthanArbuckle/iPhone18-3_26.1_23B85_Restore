@interface CRDetailViewComponentUWB
- (CRDetailViewComponentUWB)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentUWB

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"UWB"];
    [v5 addObjectsFromArray:v6];

    objc_storeStrong((&self->super.super.super.super.super.super.isa + v3), v5);
    v7 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.mobilerepair"];
    v8 = MEMORY[0x277CBEA60];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilerepair.%@Repair", @"UWB"];
    v10 = [v8 arrayWithObjects:{v9, 0}];
    v16 = 0;
    v11 = [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:v10 error:&v16];
    v12 = v16;

    if ((v11 & 1) == 0)
    {
      v13 = handleForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CRDetailViewComponentNFC *)v12 specifiers];
      }
    }

    v14 = objc_opt_new();
    [v14 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"UWB"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentUWB)init
{
  v15.receiver = self;
  v15.super_class = CRDetailViewComponentUWB;
  v2 = [(CRUDetailViewComponent *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v2 locale];
    v6 = [locale localizedStringWithKey:@"UWB_KB_URL" defaultString:@"UWB_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"UWB_SETTINGS_TITLE" defaultString:@"UWB_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"UWB_DESC" defaultString:@"UWB_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    locale4 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [locale4 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];
  }

  return v3;
}

@end