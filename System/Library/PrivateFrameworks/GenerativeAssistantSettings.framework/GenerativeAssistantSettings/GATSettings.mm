@interface GATSettings
+ (int64_t)getGenAIAgent;
- (GATSettings)init;
@end

@implementation GATSettings

+ (int64_t)getGenAIAgent
{
  v2 = sub_2230C3724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3754();

  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D0D670])
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

- (GATSettings)init
{
  v3.receiver = self;
  v3.super_class = GATSettings;
  return [(GATSettings *)&v3 init];
}

@end