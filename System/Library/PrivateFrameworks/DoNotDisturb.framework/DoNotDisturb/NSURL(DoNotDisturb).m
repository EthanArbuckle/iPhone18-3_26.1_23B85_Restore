@interface NSURL(DoNotDisturb)
+ (id)dnd_settingsURLWithModeIdentifier:()DoNotDisturb;
+ (id)dnd_setupURLWithSemanticType:()DoNotDisturb;
@end

@implementation NSURL(DoNotDisturb)

+ (id)dnd_setupURLWithSemanticType:()DoNotDisturb
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=DO_NOT_DISTURB&path=setup&type=%ld", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

+ (id)dnd_settingsURLWithModeIdentifier:()DoNotDisturb
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=DO_NOT_DISTURB&path=%@", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

@end