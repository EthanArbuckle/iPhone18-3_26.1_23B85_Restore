@interface DTKTraceTapLocalVFSTracePathsProducer
+ (BOOL)supportsConfig:(id)config;
- (DTKTraceTapLocalVFSTracePathsProducer)init;
@end

@implementation DTKTraceTapLocalVFSTracePathsProducer

+ (BOOL)supportsConfig:(id)config
{
  configCopy = config;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F9B250;
  v6[3] = &unk_278EF26B0;
  v6[4] = &v7;
  [configCopy enumerateTriggerConfigs:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (DTKTraceTapLocalVFSTracePathsProducer)init
{
  v3.receiver = self;
  v3.super_class = DTKTraceTapLocalVFSTracePathsProducer;
  return [(DTKTraceTapLocalVFSTracePathsProducer *)&v3 init];
}

@end