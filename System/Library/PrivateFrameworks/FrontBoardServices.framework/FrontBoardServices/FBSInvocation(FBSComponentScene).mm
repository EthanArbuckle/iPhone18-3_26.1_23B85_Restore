@interface FBSInvocation(FBSComponentScene)
- (void)extension;
@end

@implementation FBSInvocation(FBSComponentScene)

- (void)extension
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "No extension named %@ exists.", &v2, 0xCu);
}

@end