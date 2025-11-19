@interface MFAudioSessionConfiguration
- (void)setAllowEnhanceDialogue:(BOOL)a3;
- (void)setAudioSessionMXProperties:(id)a3;
@end

@implementation MFAudioSessionConfiguration

- (void)setAudioSessionMXProperties:(id)a3
{
  sub_1C5D2AA10(0, &qword_1EC1A93B8);
  v4 = sub_1C6016860();
  v5 = self;
  sub_1C5DCAEBC(v4);
}

- (void)setAllowEnhanceDialogue:(BOOL)a3
{
  v4 = self;
  sub_1C5DCAF84(a3);
}

@end