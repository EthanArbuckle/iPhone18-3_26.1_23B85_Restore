@interface MFNanoServerMessageContentLoader2
- (BOOL)highPriority;
- (MFNanoServerMessageContentLoader2)initWithMessageId:(id)id highPriority:(BOOL)priority mailMessageLibrary:(id)library maximumImageWidth:(double)width workQueue:(id)queue delegate:(id)delegate;
- (NSString)messageId;
- (void)cancel;
- (void)setHighPriority:(BOOL)priority;
- (void)start;
@end

@implementation MFNanoServerMessageContentLoader2

- (NSString)messageId
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  MFNanoServerMessageContentLoader2.messageId.getter();
  MEMORY[0x1E69E5920](self);
  v5 = sub_1B0E44AC8();

  return v5;
}

- (BOOL)highPriority
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  MFNanoServerMessageContentLoader2.highPriority.getter();
  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (void)setHighPriority:(BOOL)priority
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E43378();
  MFNanoServerMessageContentLoader2.highPriority.setter(v4 & 1);
  MEMORY[0x1E69E5920](self);
}

- (MFNanoServerMessageContentLoader2)initWithMessageId:(id)id highPriority:(BOOL)priority mailMessageLibrary:(id)library maximumImageWidth:(double)width workQueue:(id)queue delegate:(id)delegate
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](id);
  MEMORY[0x1E69E5928](library);
  MEMORY[0x1E69E5928](queue);
  swift_unknownObjectRetain();
  v16 = sub_1B0E44AD8();
  v11 = v8;
  v9 = sub_1B0E43378();
  v18 = sub_1B08F6CE8(v16, v11, v9 & 1, library, queue, delegate, width);
  MEMORY[0x1E69E5920](id);
  return v18;
}

- (void)start
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  MFNanoServerMessageContentLoader2.start()();
  MEMORY[0x1E69E5920](self);
}

- (void)cancel
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  MFNanoServerMessageContentLoader2.cancel()();
  MEMORY[0x1E69E5920](self);
}

@end