@interface NSProcessInfo(MNExtras)
- (uint64_t)_navigation_isNavd;
@end

@implementation NSProcessInfo(MNExtras)

- (uint64_t)_navigation_isNavd
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSProcessInfo_MNExtras___navigation_isNavd__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  if (_navigation_isNavd_onceToken != -1)
  {
    dispatch_once(&_navigation_isNavd_onceToken, block);
  }

  return _navigation_isNavd_isNavd;
}

@end