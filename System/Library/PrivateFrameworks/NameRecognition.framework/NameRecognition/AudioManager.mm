@interface AudioManager
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)dealloc;
- (void)handleAudioSessionInterruptionWithNotification:(id)notification;
@end

@implementation AudioManager

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = *MEMORY[0x277CB8068];
  sharedInstance = [objc_opt_self() sharedInstance];
  [defaultCenter removeObserver:selfCopy name:v6 object:sharedInstance];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for AudioManager();
  [(AudioManager *)&v8 dealloc];
}

- (void)handleAudioSessionInterruptionWithNotification:(id)notification
{
  v4 = sub_25AEA0BB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0B98();
  selfCopy = self;
  sub_25AE51E84();

  (*(v5 + 8))(v8, v4);
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_25AE530F4(successfully);
}

@end