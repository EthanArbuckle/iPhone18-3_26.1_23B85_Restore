@interface IMCTRCSUtilitiesManagerLiveDelegate
- (BOOL)enabledByDefaultForContext:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)requiresResiliencyChanged:(id)a3 val:(BOOL)a4;
- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4;
@end

@implementation IMCTRCSUtilitiesManagerLiveDelegate

- (BOOL)enabledByDefaultForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A87F0A04(v4);

  return self & 1;
}

- (void)activeSubscriptionsDidChange
{
  v2 = self;
  sub_1A87EE9BC(sub_1A87F22B0, 0, &unk_1F1BB17B0, sub_1A87F3578, &unk_1F1BB17C8);
}

- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = [v6 labelID];
  if (v8)
  {
    v9 = v8;
    sub_1A88C82E8();

    v10 = MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v10);
    sub_1A88C8A58();
  }

  else
  {
  }
}

- (void)requiresResiliencyChanged:(id)a3 val:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_1A87F27BC(a3, a4);
}

@end