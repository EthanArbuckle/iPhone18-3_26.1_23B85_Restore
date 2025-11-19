@interface MTSyncDismiss(ProtoBuffer)
@end

@implementation MTSyncDismiss(ProtoBuffer)

+ (void)deserialize:()ProtoBuffer .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"MTSyncDismiss+ProtoBuffer.m" lineNumber:33 description:{@"Unsupported class for action %@", objc_opt_class()}];
}

@end