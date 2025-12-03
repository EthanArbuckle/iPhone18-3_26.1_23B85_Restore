@interface FBSObjectProxy
+ (FBSObjectProxy)proxyForClass:(uint64_t)class;
- (id)bs_secureEncoded;
- (void)forwardInvocation:(id)invocation;
@end

@implementation FBSObjectProxy

+ (FBSObjectProxy)proxyForClass:(uint64_t)class
{
  objc_opt_self();
  v3 = [FBSObjectProxy alloc];
  v3->_class = a2;

  return v3;
}

- (void)forwardInvocation:(id)invocation
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [(FBSObjectProxy *)invocation forwardInvocation:?];
  }
}

- (id)bs_secureEncoded
{
  v2 = objc_opt_class();

  return [FBSObjectProxy proxyForClass:v2];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector([a1 selector]);
  v4 = NSStringFromClass(*(a2 + 8));
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ignoring %@ called on %@", &v5, 0x16u);
}

@end