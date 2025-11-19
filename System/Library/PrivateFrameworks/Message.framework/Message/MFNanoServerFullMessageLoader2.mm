@interface MFNanoServerFullMessageLoader2
- (MFNanoServerFullMessageLoader2)initWithCallbackQueue:(id)a3 mailMessageLibrary:(id)a4 legacyLoader:(id)a5;
- (void)attemptToCancelFullMessageLoadForMessageIds:(id)a3;
- (void)cancelAllPendingOperations;
- (void)loadFullMessagesForMessageIds:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation MFNanoServerFullMessageLoader2

- (MFNanoServerFullMessageLoader2)initWithCallbackQueue:(id)a3 mailMessageLibrary:(id)a4 legacyLoader:(id)a5
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  swift_unknownObjectRetain();
  return sub_1B08DFF04(a3, a4, a5);
}

- (void)loadFullMessagesForMessageIds:(id)a3 completion:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0E451B8();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B08E0120(v8, sub_1B08E4318, v7);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)attemptToCancelFullMessageLoadForMessageIds:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E451B8();
  sub_1B08E2208(v4);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)cancelAllPendingOperations
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B08E2FA4();
  MEMORY[0x1E69E5920](self);
}

- (void)start
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B08E3CB4();
  MEMORY[0x1E69E5920](self);
}

@end