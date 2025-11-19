@interface MFNanoServerMessageContentLoader2
- (BOOL)highPriority;
- (MFNanoServerMessageContentLoader2)initWithMessageId:(id)a3 highPriority:(BOOL)a4 mailMessageLibrary:(id)a5 maximumImageWidth:(double)a6 workQueue:(id)a7 delegate:(id)a8;
- (NSString)messageId;
- (void)cancel;
- (void)setHighPriority:(BOOL)a3;
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

- (void)setHighPriority:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B0E43378();
  MFNanoServerMessageContentLoader2.highPriority.setter(v4 & 1);
  MEMORY[0x1E69E5920](self);
}

- (MFNanoServerMessageContentLoader2)initWithMessageId:(id)a3 highPriority:(BOOL)a4 mailMessageLibrary:(id)a5 maximumImageWidth:(double)a6 workQueue:(id)a7 delegate:(id)a8
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](a7);
  swift_unknownObjectRetain();
  v16 = sub_1B0E44AD8();
  v11 = v8;
  v9 = sub_1B0E43378();
  v18 = sub_1B08F6CE8(v16, v11, v9 & 1, a5, a7, a8, a6);
  MEMORY[0x1E69E5920](a3);
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