@interface SFClearHistoryUtilities
+ (id)clearHistoryTimeFrameStringFromItemType:(int64_t)a3;
+ (int64_t)clearHistoryTimeFrameItemTypeFromString:(id)a3;
@end

@implementation SFClearHistoryUtilities

+ (id)clearHistoryTimeFrameStringFromItemType:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E721EBB8[a3];
  }
}

+ (int64_t)clearHistoryTimeFrameItemTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LastHour"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Today"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TodayAndYesterday"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"All"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end