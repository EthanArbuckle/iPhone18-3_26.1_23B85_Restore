@interface DisplayRelease
@end

@implementation DisplayRelease

void ____DisplayRelease_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 12504))
  {
    CFXRelease(*(*(a1 + 32) + 12504));
  }

  if (*(*(a1 + 32) + 12480))
  {
    dispatch_release(*(*(a1 + 32) + 12480));
    *(*(a1 + 32) + 12480) = 0;
  }

  if (*(*(a1 + 32) + 12576))
  {
    dispatch_release(*(*(a1 + 32) + 12576));
    *(*(a1 + 32) + 12576) = 0;
  }
}

@end