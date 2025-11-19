@interface CRDetailViewComponentNFC
- (CRDetailViewComponentNFC)init;
- (id)specifiers;
- (void)specifiers;
@end

@implementation CRDetailViewComponentNFC

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"NFC"];
    [v5 addObjectsFromArray:v6];

    objc_storeStrong((&self->super.super.super.super.super.super.isa + v3), v5);
    v7 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.mobilerepair"];
    v8 = MEMORY[0x277CBEA60];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilerepair.%@Repair", @"NFC"];
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
    [v14 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"NFC"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentNFC)init
{
  v21.receiver = self;
  v21.super_class = CRDetailViewComponentNFC;
  v2 = [(CRUDetailViewComponent *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithKey:@"NFC_KB_URL" defaultString:@"NFC_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [v8 localizedStringWithKey:@"NFC_SETTINGS_TITLE" defaultString:@"NFC_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    v10 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [v10 localizedStringWithKey:@"NFC_DESC" defaultString:@"NFC_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    v12 = [(CRUDetailViewComponent *)v3 locale];
    v13 = [v12 localizedStringWithKey:@"LEARN_MORE_UNKNWON_PART" defaultString:@"LEARN_MORE_UNKNWON_PART"];
    [(CRUDetailViewComponent *)v3 setFooterText:v13];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [v15 localizedStringWithKey:@"NFC_KB_URL_IPAD" defaultString:@"NFC_KB_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];

      v18 = [(CRUDetailViewComponent *)v3 locale];
      v19 = [v18 localizedStringWithKey:@"NFC_DESC_IPAD" defaultString:@"NFC_DESC_IPAD"];
      [(CRUDetailViewComponent *)v3 setInformativeText:v19];
    }
  }

  return v3;
}

- (void)specifiers
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0(&dword_247875000, v2, v3, "failed to clear Followup error:%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end