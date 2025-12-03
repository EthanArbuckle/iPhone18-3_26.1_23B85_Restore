@interface CRDetailViewComponentAudio
- (CRDetailViewComponentAudio)init;
- (id)specifiers;
@end

@implementation CRDetailViewComponentAudio

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(CRUDetailViewComponent *)self componentSpecifierForComponent:@"Audio"];
    [v5 addObjectsFromArray:v6];

    v7 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;
    v8 = v5;

    v9 = objc_opt_new();
    [v9 sendAsyncAnalyticsForEventIfNeeded:@"detailViewSeen" moduleName:@"Audio"];

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (CRDetailViewComponentAudio)init
{
  v13.receiver = self;
  v13.super_class = CRDetailViewComponentAudio;
  v2 = [(CRUDetailViewComponent *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBC0];
    locale = [(CRUDetailViewComponent *)v2 locale];
    v6 = [locale localizedStringWithKey:@"AUDIO_KB_URL" defaultString:@"AUDIO_KB_URL"];
    v7 = [v4 URLWithString:v6];
    [(CRUDetailViewComponent *)v3 setKbArticleURL:v7];

    locale2 = [(CRUDetailViewComponent *)v3 locale];
    v9 = [locale2 localizedStringWithKey:@"AUDIO_SETTINGS_TITLE" defaultString:@"AUDIO_SETTINGS_TITLE"];
    [(CRUDetailViewComponent *)v3 setTitleText:v9];

    locale3 = [(CRUDetailViewComponent *)v3 locale];
    v11 = [locale3 localizedStringWithKey:@"AUDIO_DESC" defaultString:@"AUDIO_DESC"];
    [(CRUDetailViewComponent *)v3 setInformativeText:v11];
  }

  return v3;
}

@end