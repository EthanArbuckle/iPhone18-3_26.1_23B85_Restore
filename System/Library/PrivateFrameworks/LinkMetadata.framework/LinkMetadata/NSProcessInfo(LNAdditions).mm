@interface NSProcessInfo(LNAdditions)
- (uint64_t)ln_isTesting;
@end

@implementation NSProcessInfo(LNAdditions)

- (uint64_t)ln_isTesting
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NSProcessInfo_LNAdditions__ln_isTesting__block_invoke;
  block[3] = &unk_1E72B1260;
  block[4] = self;
  if (ln_isTesting_onceToken != -1)
  {
    dispatch_once(&ln_isTesting_onceToken, block);
  }

  return ln_isTesting_isTesting;
}

@end