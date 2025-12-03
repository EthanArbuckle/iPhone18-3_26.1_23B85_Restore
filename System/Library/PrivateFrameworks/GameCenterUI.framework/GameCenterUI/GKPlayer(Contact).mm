@interface GKPlayer(Contact)
- (void)initWithContact:()Contact;
- (void)setContact:()Contact;
@end

@implementation GKPlayer(Contact)

- (void)initWithContact:()Contact
{
  v4 = a3;
  internalRepresentation = [MEMORY[0x277D0C038] internalRepresentation];
  v6 = [self initWithInternalRepresentation:internalRepresentation];
  v7 = v6;
  if (v6)
  {
    [v6 setContact:v4];
  }

  return v7;
}

- (void)setContact:()Contact
{
  v22 = a3;
  objc_setAssociatedObject(self, @"_gkCNContact", v22, 0x301);
  v4 = v22;
  if (v22)
  {
    identifier = [v22 identifier];
    internal = [self internal];
    [internal setPlayerID:identifier];

    internal2 = [self internal];
    playerID = [internal2 playerID];

    if (!playerID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      internal3 = [self internal];
      [internal3 setPlayerID:uUIDString];
    }

    givenName = [v22 givenName];
    internal4 = [self internal];
    [internal4 setFirstName:givenName];

    familyName = [v22 familyName];
    internal5 = [self internal];
    [internal5 setLastName:familyName];

    v16 = [MEMORY[0x277CBDA78] stringFromContact:v22 style:0];
    internal6 = [self internal];
    [internal6 setCompositeName:v16];

    internal7 = [self internal];
    [internal7 setAlias:0];

    internal8 = [self internal];
    [internal8 setAvatarType:&unk_286189600];

    v20 = [GKMessageUtilities messagesRecipientHandleForContact:v22];
    if (v20)
    {
      internal9 = [self internal];
      [internal9 setMessagesID:v20];
    }

    v4 = v22;
  }
}

@end