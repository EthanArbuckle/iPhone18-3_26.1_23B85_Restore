@interface CRDetailViewComponentBluetooth
- (CRDetailViewComponentBluetooth)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentBluetooth

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"Bluetooth"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v8 = v5;

    v9 = objc_opt_new();
    [v9 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"Bluetooth"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentBluetooth)init
{
  v19.receiver = self;
  v19.super_class = CRDetailViewComponentBluetooth;
  v2 = [(CRUDetailViewComponent *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v2 locale];
    v6 = [locale localizedStringWithKey:@"BLUETOOTH_KB_URL" defaultString:@"BLUETOOTH_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"BLUETOOTH_SETTINGS_TITLE" defaultString:@"BLUETOOTH_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"BLUETOOTH_DESC" defaultString:@"BLUETOOTH_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];

    if ([(CRUDetailViewComponent *)v3 deviceClass]== 3)
    {
      locale4 = [(CRUDetailViewComponent *)v3 locale];
      v13 = [locale4 localizedStringWithKey:@"BLUETOOTH_DESC_IPAD" defaultString:@"BLUETOOTH_DESC_IPAD"];
      [(CRUDetailViewComponent *)v3 setInformativeText:v13];

      v14 = MEMORY[0x277CBEBC0];
      locale5 = [(CRUDetailViewComponent *)v3 locale];
      v16 = [locale5 localizedStringWithKey:@"BLUETOOTH_KB_URL_IPAD" defaultString:@"BLUETOOTH_KB_URL_IPAD"];
      v17 = [v14 URLWithString:v16];
      [(CRUDetailViewComponent *)v3 setKbArticleURL:v17];
    }
  }

  return v3;
}

@end