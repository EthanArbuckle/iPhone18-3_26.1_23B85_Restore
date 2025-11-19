@interface CDMShortcutResponseCommand
- (CDMShortcutResponseCommand)initWithVoiceCommandUserParses:(id)a3 autoShortcutParses:(id)a4;
@end

@implementation CDMShortcutResponseCommand

- (CDMShortcutResponseCommand)initWithVoiceCommandUserParses:(id)a3 autoShortcutParses:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMShortcutResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceCommandsUserParses, a3);
    objc_storeStrong(&v10->_autoShortcutParses, a4);
  }

  return v10;
}

@end