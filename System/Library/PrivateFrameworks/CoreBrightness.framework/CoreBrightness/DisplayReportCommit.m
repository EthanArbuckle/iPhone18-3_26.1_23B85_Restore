@interface DisplayReportCommit
@end

@implementation DisplayReportCommit

void ____DisplayReportCommit_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"DisplayBrightness", *(a1 + 40));
  }

  CFRelease(*(a1 + 40));
}

@end