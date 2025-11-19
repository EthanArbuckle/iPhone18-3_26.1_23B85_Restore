@interface AudioManager
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)dealloc;
- (void)handleAudioSessionInterruptionWithNotification:(id)a3;
@end

@implementation AudioManager

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  v6 = *MEMORY[0x277CB8068];
  v7 = [objc_opt_self() sharedInstance];
  [v5 removeObserver:v4 name:v6 object:v7];

  v8.receiver = v4;
  v8.super_class = type metadata accessor for AudioManager();
  [(AudioManager *)&v8 dealloc];
}

- (void)handleAudioSessionInterruptionWithNotification:(id)a3
{
  v4 = sub_25AEA0BB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0B98();
  v9 = self;
  sub_25AE51E84();

  (*(v5 + 8))(v8, v4);
}

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_25AE530F4(a4);
}

@end