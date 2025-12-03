@interface FBSInvocationReply
+ (void)initialize;
+ (void)replyWithParameters:(uint64_t)parameters;
- (id)membersForCoder;
@end

@implementation FBSInvocationReply

+ (void)initialize
{
  objc_opt_class();

  BSXPCAutoCodingInitialize();
}

void __32__FBSInvocationReply_initialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  BSXPCSecureCoding();
}

+ (void)replyWithParameters:(uint64_t)parameters
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = v3[1];
  v3[1] = v2;

  return v3;
}

- (id)membersForCoder
{
  if (objc_opt_class())
  {
    objc_opt_isKindOfClass();
  }

  _BSAutoMember();
}

@end