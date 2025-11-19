@interface EARProfiler
@end

@implementation EARProfiler

void __30___EARProfiler_sharedProfiler__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[_EARProfiler sharedProfiler]::sharedProfiler;
  +[_EARProfiler sharedProfiler]::sharedProfiler = v1;
}

@end