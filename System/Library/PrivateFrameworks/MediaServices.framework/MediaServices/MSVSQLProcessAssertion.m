@interface MSVSQLProcessAssertion
@end

@implementation MSVSQLProcessAssertion

void __37___MSVSQLProcessAssertion_invalidate__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&__assertionLock);
  if (*(a1 + 32) == __assertionInvalidationNonce && __assertionCount <= 0 && __assertion != 0)
  {
    v3 = os_log_create("com.apple.amp.MediaServices", "SQL");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[SQL] Invalidating Process Assertion Timeout", v5, 2u);
    }

    [__assertion invalidate];
    v4 = __assertion;
    __assertion = 0;
  }

  os_unfair_lock_unlock(&__assertionLock);
}

@end