@interface UIScreen(MailUI)
+ (double)mui_maxDimension;
+ (uint64_t)mui_isLargeFormatPad;
@end

@implementation UIScreen(MailUI)

+ (double)mui_maxDimension
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  v2 = v1;
  [v0 bounds];
  if (v2 < v3)
  {
    v2 = v3;
  }

  return v2;
}

+ (uint64_t)mui_isLargeFormatPad
{
  result = [MEMORY[0x277D75418] mf_isPadIdiom];
  if (result)
  {
    [MEMORY[0x277D759A0] mui_maxDimension];
    return v1 > 1200.0;
  }

  return result;
}

@end