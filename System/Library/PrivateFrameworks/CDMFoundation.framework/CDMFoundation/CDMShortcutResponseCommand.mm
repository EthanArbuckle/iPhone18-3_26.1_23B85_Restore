@interface CDMShortcutResponseCommand
- (CDMShortcutResponseCommand)initWithVoiceCommandUserParses:(id)parses autoShortcutParses:(id)shortcutParses;
@end

@implementation CDMShortcutResponseCommand

- (CDMShortcutResponseCommand)initWithVoiceCommandUserParses:(id)parses autoShortcutParses:(id)shortcutParses
{
  parsesCopy = parses;
  shortcutParsesCopy = shortcutParses;
  v12.receiver = self;
  v12.super_class = CDMShortcutResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceCommandsUserParses, parses);
    objc_storeStrong(&v10->_autoShortcutParses, shortcutParses);
  }

  return v10;
}

@end