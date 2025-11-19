@interface MFMailboxFrecencyController
- (MFMailboxFrecencyController)initWithDatabase:(id)a3;
- (NSIndexSet)frecentMailboxes;
- (id)sortedArrayOfMailboxes:(id)a3;
- (id)sortedArrayOfMailboxesForAccount:(id)a3;
- (void)recordEventWithMailboxIDs:(id)a3;
- (void)testRecordFrecencyEventsForAllMailboxes;
- (void)testResetFrecencyForAllMailboxes;
- (void)test_tearDown;
@end

@implementation MFMailboxFrecencyController

- (MFMailboxFrecencyController)initWithDatabase:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  return sub_1B08CA6C0(a3);
}

- (NSIndexSet)frecentMailboxes
{
  v7 = self;
  swift_getObjectType();
  v10 = sub_1B0E43308();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v5 - v6;
  MEMORY[0x1E69E5928](self);
  sub_1B08CAD30(v11);
  MEMORY[0x1E69E5920](v7);
  v12 = sub_1B0E43258();
  (*(v8 + 8))(v11, v10);
  v3 = v12;

  return v3;
}

- (id)sortedArrayOfMailboxes:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B03EE50C();
  v5 = sub_1B0E451B8();
  sub_1B08CAE94(v5);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
  v8 = sub_1B0E451A8();

  return v8;
}

- (id)sortedArrayOfMailboxesForAccount:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B08CB3FC(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  sub_1B03EE50C();
  v7 = sub_1B0E451A8();

  return v7;
}

- (void)recordEventWithMailboxIDs:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B06BD108();
  v4 = sub_1B0E451B8();
  sub_1B08CB668(v4);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)testRecordFrecencyEventsForAllMailboxes
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B08CBB98();
  MEMORY[0x1E69E5920](self);
}

- (void)testResetFrecencyForAllMailboxes
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B08CBEC0();
  MEMORY[0x1E69E5920](self);
}

- (void)test_tearDown
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B08CC1CC();
  MEMORY[0x1E69E5920](self);
}

@end