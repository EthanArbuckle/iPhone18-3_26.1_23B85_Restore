@interface BrowsingAssistant.ReaderOptionsCardCell
- (void)fontDownloadDidFail:(id)fail;
- (void)reloadFonts;
- (void)updateTheme;
- (void)userDidChangeTheme:(id)theme;
@end

@implementation BrowsingAssistant.ReaderOptionsCardCell

- (void)updateTheme
{
  selfCopy = self;
  sub_18BBAE178();
}

- (void)userDidChangeTheme:(id)theme
{
  themeCopy = theme;
  selfCopy = self;
  sub_18BBAE278(themeCopy);
}

- (void)reloadFonts
{
  selfCopy = self;
  sub_18BBAEA40();
}

- (void)fontDownloadDidFail:(id)fail
{
  v4 = sub_18BC1E6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  selfCopy = self;
  sub_18BBAFC04();

  (*(v5 + 8))(v7, v4);
}

@end