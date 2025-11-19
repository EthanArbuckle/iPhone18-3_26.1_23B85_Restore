@interface _MSVSQLProcessAssertion
- (void)invalidate;
@end

@implementation _MSVSQLProcessAssertion

- (void)invalidate
{
  os_unfair_lock_lock(&__assertionLock);
  if (__assertionCount-- <= 1)
  {
    __assertionCount = 0;
    v3 = arc4random();
    __assertionInvalidationNonce = v3;
    v4 = dispatch_time(0, 5000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37___MSVSQLProcessAssertion_invalidate__block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v7 = v3;
    dispatch_after(v4, v5, block);
  }

  os_unfair_lock_unlock(&__assertionLock);
}

@end