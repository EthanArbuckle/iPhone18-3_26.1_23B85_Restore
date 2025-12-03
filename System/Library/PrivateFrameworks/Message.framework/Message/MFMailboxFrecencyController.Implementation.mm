@interface MFMailboxFrecencyController.Implementation
- (id)sortedArrayOfMailboxes:(id)mailboxes;
- (id)sortedArrayOfMailboxesForAccount:(id)account;
- (void)recordEventWithMailboxIDs:(id)ds;
@end

@implementation MFMailboxFrecencyController.Implementation

- (id)sortedArrayOfMailboxes:(id)mailboxes
{
  MEMORY[0x1E69E5928](mailboxes);

  sub_1B03EE50C();
  v4 = sub_1B0E451B8();
  sub_1B08CAF2C(v4);

  MEMORY[0x1E69E5920](mailboxes);

  v6 = sub_1B0E451A8();

  return v6;
}

- (id)sortedArrayOfMailboxesForAccount:(id)account
{
  MEMORY[0x1E69E5928](account);

  sub_1B08CCE84(account);

  MEMORY[0x1E69E5920](account);
  sub_1B03EE50C();
  v5 = sub_1B0E451A8();

  return v5;
}

- (void)recordEventWithMailboxIDs:(id)ds
{
  MEMORY[0x1E69E5928](ds);

  sub_1B06BD108();
  v3 = sub_1B0E451B8();
  sub_1B08CD090(v3);

  MEMORY[0x1E69E5920](ds);
}

@end