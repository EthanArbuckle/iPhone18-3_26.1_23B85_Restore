@interface GKPlayer(GKPlayerTUConversationParticipant)
- (void)initWithParticipant:()GKPlayerTUConversationParticipant forBundleID:;
- (void)setTuParticipant:()GKPlayerTUConversationParticipant forBundleID:;
@end

@implementation GKPlayer(GKPlayerTUConversationParticipant)

- (void)initWithParticipant:()GKPlayerTUConversationParticipant forBundleID:
{
  v6 = a3;
  v7 = a4;
  internalRepresentation = [MEMORY[0x277D0C038] internalRepresentation];
  v9 = [self initWithInternalRepresentation:internalRepresentation];
  v10 = v9;
  if (v9)
  {
    [v9 setTuParticipant:v6 forBundleID:v7];
  }

  return v10;
}

- (void)setTuParticipant:()GKPlayerTUConversationParticipant forBundleID:
{
  value = a3;
  v6 = a4;
  objc_setAssociatedObject(self, @"_gkTUParticipant", value, 0x301);
  if (value)
  {
    [value identifier];
    v7 = [v6 dataUsingEncoding:4];
    v8 = IDSIDAliasHashUInt64();

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v8];
    internal = [self internal];
    [internal setPlayerID:v9];

    internal2 = [self internal];
    playerID = [internal2 playerID];

    if (!playerID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      internal3 = [self internal];
      [internal3 setPlayerID:uUIDString];
    }

    [self setTuParticipant:value];
    internal4 = [self internal];
    [internal4 setAlias:0];

    v17 = objc_opt_new();
    handle = [value handle];
    value = [handle value];
    v20 = [GKMessageUtilities contactFromEmailOrPhoneNumber:value fromContactStore:v17];

    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBDA78]);
      v22 = [v21 stringFromContact:v20];

      internal5 = [self internal];
      [internal5 setAlias:v22];

      internal6 = [self internal];
      [internal6 setContact:v20];
    }

    handle2 = [value handle];
    value2 = [handle2 value];
    internal7 = [self internal];
    [internal7 setCompositeName:value2];

    internal8 = [self internal];
    [internal8 setAvatarType:&unk_286189588];

    handle3 = [value handle];
    value3 = [handle3 value];
    internal9 = [self internal];
    [internal9 setMessagesID:value3];
  }
}

@end