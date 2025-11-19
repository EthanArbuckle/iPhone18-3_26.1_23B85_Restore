@interface MFMailboxFrecencyController.Implementation
- (id)sortedArrayOfMailboxes:(id)a3;
- (id)sortedArrayOfMailboxesForAccount:(id)a3;
- (void)recordEventWithMailboxIDs:(id)a3;
@end

@implementation MFMailboxFrecencyController.Implementation

- (id)sortedArrayOfMailboxes:(id)a3
{
  MEMORY[0x1E69E5928](a3);

  sub_1B03EE50C();
  v4 = sub_1B0E451B8();
  sub_1B08CAF2C(v4);

  MEMORY[0x1E69E5920](a3);

  v6 = sub_1B0E451A8();

  return v6;
}

- (id)sortedArrayOfMailboxesForAccount:(id)a3
{
  MEMORY[0x1E69E5928](a3);

  sub_1B08CCE84(a3);

  MEMORY[0x1E69E5920](a3);
  sub_1B03EE50C();
  v5 = sub_1B0E451A8();

  return v5;
}

- (void)recordEventWithMailboxIDs:(id)a3
{
  MEMORY[0x1E69E5928](a3);

  sub_1B06BD108();
  v3 = sub_1B0E451B8();
  sub_1B08CD090(v3);

  MEMORY[0x1E69E5920](a3);
}

@end