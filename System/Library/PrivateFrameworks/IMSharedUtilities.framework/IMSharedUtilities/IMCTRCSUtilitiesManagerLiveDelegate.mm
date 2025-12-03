@interface IMCTRCSUtilitiesManagerLiveDelegate
- (BOOL)enabledByDefaultForContext:(id)context;
- (void)activeSubscriptionsDidChange;
- (void)requiresResiliencyChanged:(id)changed val:(BOOL)val;
- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration;
@end

@implementation IMCTRCSUtilitiesManagerLiveDelegate

- (BOOL)enabledByDefaultForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_1A87F0A04(contextCopy);

  return self & 1;
}

- (void)activeSubscriptionsDidChange
{
  selfCopy = self;
  sub_1A87EE9BC(sub_1A87F22B0, 0, &unk_1F1BB17B0, sub_1A87F3578, &unk_1F1BB17C8);
}

- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  selfCopy = self;
  labelID = [changedCopy labelID];
  if (labelID)
  {
    v9 = labelID;
    sub_1A88C82E8();

    v10 = MEMORY[0x1EEE9AC00](selfCopy);
    MEMORY[0x1EEE9AC00](v10);
    sub_1A88C8A58();
  }

  else
  {
  }
}

- (void)requiresResiliencyChanged:(id)changed val:(BOOL)val
{
  changedCopy = changed;
  selfCopy = self;
  sub_1A87F27BC(changed, val);
}

@end