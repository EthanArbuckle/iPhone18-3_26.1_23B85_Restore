@interface MFNanoServerFullMessageLoader2
- (MFNanoServerFullMessageLoader2)initWithCallbackQueue:(id)queue mailMessageLibrary:(id)library legacyLoader:(id)loader;
- (void)attemptToCancelFullMessageLoadForMessageIds:(id)ids;
- (void)cancelAllPendingOperations;
- (void)loadFullMessagesForMessageIds:(id)ids completion:(id)completion;
- (void)start;
@end

@implementation MFNanoServerFullMessageLoader2

- (MFNanoServerFullMessageLoader2)initWithCallbackQueue:(id)queue mailMessageLibrary:(id)library legacyLoader:(id)loader
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](queue);
  MEMORY[0x1E69E5928](library);
  swift_unknownObjectRetain();
  return sub_1B08DFF04(queue, library, loader);
}

- (void)loadFullMessagesForMessageIds:(id)ids completion:(id)completion
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](ids);
  v6 = _Block_copy(completion);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0E451B8();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B08E0120(v8, sub_1B08E4318, v7);

  MEMORY[0x1E69E5920](ids);
  MEMORY[0x1E69E5920](self);
}

- (void)attemptToCancelFullMessageLoadForMessageIds:(id)ids
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](ids);
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E451B8();
  sub_1B08E2208(v4);

  MEMORY[0x1E69E5920](ids);
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