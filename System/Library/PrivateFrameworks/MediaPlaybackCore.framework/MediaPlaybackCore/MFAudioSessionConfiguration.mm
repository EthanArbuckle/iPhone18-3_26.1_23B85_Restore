@interface MFAudioSessionConfiguration
- (void)setAllowEnhanceDialogue:(BOOL)dialogue;
- (void)setAudioSessionMXProperties:(id)properties;
@end

@implementation MFAudioSessionConfiguration

- (void)setAudioSessionMXProperties:(id)properties
{
  sub_1C5D2AA10(0, &qword_1EC1A93B8);
  v4 = sub_1C6016860();
  selfCopy = self;
  sub_1C5DCAEBC(v4);
}

- (void)setAllowEnhanceDialogue:(BOOL)dialogue
{
  selfCopy = self;
  sub_1C5DCAF84(dialogue);
}

@end