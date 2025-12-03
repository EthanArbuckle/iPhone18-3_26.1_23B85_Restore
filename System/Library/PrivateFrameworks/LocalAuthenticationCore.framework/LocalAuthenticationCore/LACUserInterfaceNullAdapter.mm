@interface LACUserInterfaceNullAdapter
- (void)processRequest:(id)request completion:(id)completion;
@end

@implementation LACUserInterfaceNullAdapter

- (void)processRequest:(id)request completion:(id)completion
{
  v5 = MEMORY[0x1E696AEC0];
  completionCopy = completion;
  v8 = [v5 stringWithFormat:@"%@ is not supported in this platform", self];
  v7 = [LACError errorWithCode:-1020 debugDescription:v8];
  completionCopy[2](completionCopy, v7);
}

@end