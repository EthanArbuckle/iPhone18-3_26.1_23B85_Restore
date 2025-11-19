@interface CRDetailViewComponentWifi
- (CRDetailViewComponentWifi)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentWifi

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    if (MGGetBoolAnswer())
    {
      v6 = @"WLAN";
    }

    else
    {
      v6 = @"Wifi";
    }

    v7 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:v6];
    [v5 addObjectsFromArray:v7];

    v8 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v9 = v5;

    v10 = objc_opt_new();
    [v10 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"Wifi"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentWifi)init
{
  v25.receiver = self;
  v25.super_class = CRDetailViewComponentWifi;
  v2 = [(CRUDetailViewComponent *)&v25 init];
  if (v2)
  {
    v3 = MGGetBoolAnswer();
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(CRUDetailViewComponent *)v2 locale];
    v6 = [v5 localizedStringWithKey:@"WIFI_KB_URL" defaultString:@"WIFI_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v2 setKbArticleURL:v7];

    v8 = [(CRUDetailViewComponent *)v2 locale];
    v9 = v8;
    if (v3)
    {
      v10 = [v8 localizedStringWithKey:@"WLAN_SETTINGS_TITLE" defaultString:@"WLAN_SETTINGS_TITLE"];
      [(CRUDetailViewComponent *)v2 setTitleText:v10];

      v11 = [(CRUDetailViewComponent *)v2 locale];
      v12 = [v11 localizedStringWithKey:@"WLAN_DESC" defaultString:@"WLAN_DESC"];
      [(CRUDetailViewComponent *)v2 setInformativeText:v12];

      if ([(CRUDetailViewComponent *)v2 deviceClass]== 3)
      {
        v13 = [(CRUDetailViewComponent *)v2 locale];
        v14 = v13;
        v15 = @"WLAN_DESC_IPAD";
LABEL_7:
        v19 = [v13 localizedStringWithKey:v15 defaultString:v15];
        [(CRUDetailViewComponent *)v2 setInformativeText:v19];

        v20 = MEMORY[0x277CBEBC0];
        v21 = [(CRUDetailViewComponent *)v2 locale];
        v22 = [v21 localizedStringWithKey:@"WIFI_KB_URL_IPAD" defaultString:@"WIFI_KB_URL_IPAD"];
        v23 = [v20 URLWithString:v22];
        [(CRUDetailViewComponent *)v2 setKbArticleURL:v23];
      }
    }

    else
    {
      v16 = [v8 localizedStringWithKey:@"WIFI_SETTINGS_TITLE" defaultString:@"WIFI_SETTINGS_TITLE"];
      [(CRUDetailViewComponent *)v2 setTitleText:v16];

      v17 = [(CRUDetailViewComponent *)v2 locale];
      v18 = [v17 localizedStringWithKey:@"WIFI_DESC" defaultString:@"WIFI_DESC"];
      [(CRUDetailViewComponent *)v2 setInformativeText:v18];

      if ([(CRUDetailViewComponent *)v2 deviceClass]== 3)
      {
        v13 = [(CRUDetailViewComponent *)v2 locale];
        v14 = v13;
        v15 = @"WIFI_DESC_IPAD";
        goto LABEL_7;
      }
    }
  }

  return v2;
}

@end