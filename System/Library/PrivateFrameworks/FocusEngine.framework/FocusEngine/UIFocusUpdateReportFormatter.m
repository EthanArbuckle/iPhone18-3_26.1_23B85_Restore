@interface UIFocusUpdateReportFormatter
@end

@implementation UIFocusUpdateReportFormatter

uint64_t __48___UIFocusUpdateReportFormatter__bodyForReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) appendString:@"\n"];
  v3 = *(*(a1 + 40) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    result = [*(a1 + 32) appendString:@"\n"];
    v3 = *(*(a1 + 40) + 8);
  }

  *(v3 + 24) = 0;
  return result;
}

@end