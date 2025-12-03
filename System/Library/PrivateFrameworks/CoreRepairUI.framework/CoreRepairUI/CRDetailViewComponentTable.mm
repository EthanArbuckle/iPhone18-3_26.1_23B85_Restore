@interface CRDetailViewComponentTable
- (id)specifiers;
@end

@implementation CRDetailViewComponentTable

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    [(CRDetailViewComponentTable *)self setTitle:0];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setIdentifier:@"PLACARD_GROUP"];
    v6 = objc_opt_new();
    locale = [(CRUDetailViewComponent *)self locale];
    v8 = [locale localizedStringWithKey:@"PARTS_AND_SERVICE" defaultString:@"PARTS_AND_SERVICE"];

    locale2 = [(CRUDetailViewComponent *)self locale];
    v10 = [locale2 localizedStringWithKey:@"PARTS_SERVICE_SUBTEXT" defaultString:@"PARTS_SERVICE_SUBTEXT"];

    if ([(CRUDetailViewComponent *)self deviceClass]== 3)
    {
      locale3 = [(CRUDetailViewComponent *)self locale];
      v12 = [locale3 localizedStringWithKey:@"PARTS_SERVICE_SUBTEXT_IPAD" defaultString:@"PARTS_SERVICE_SUBTEXT_IPAD"];

      v10 = v12;
    }

    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [v13 setIdentifier:@"ABOUT_PARTS_AND_SERVICE_HISTORY"];
    [v13 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v13 setProperty:v10 forKey:*MEMORY[0x277D40160]];
    [v13 setProperty:@"com.apple.graphic-icon.repairassistant" forKey:*MEMORY[0x277D3FFD8]];
    v14 = objc_opt_new();
    v15 = [v14 getCurrentDetailsWithPrivacySpecifier:1];

    if ([v15 count])
    {
      [v6 addObject:v13];
      [v6 addObjectsFromArray:v15];
    }

    v16 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end