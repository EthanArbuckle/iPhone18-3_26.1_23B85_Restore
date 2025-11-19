@interface BrowsingAssistant.ReaderOptionsCardCell
- (void)fontDownloadDidFail:(id)a3;
- (void)reloadFonts;
- (void)updateTheme;
- (void)userDidChangeTheme:(id)a3;
@end

@implementation BrowsingAssistant.ReaderOptionsCardCell

- (void)updateTheme
{
  v2 = self;
  sub_18BBAE178();
}

- (void)userDidChangeTheme:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BBAE278(v4);
}

- (void)reloadFonts
{
  v2 = self;
  sub_18BBAEA40();
}

- (void)fontDownloadDidFail:(id)a3
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v8 = self;
  sub_18BBAFC04();

  (*(v5 + 8))(v7, v4);
}

@end