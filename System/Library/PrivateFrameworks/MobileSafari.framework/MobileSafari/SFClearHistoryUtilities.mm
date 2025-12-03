@interface SFClearHistoryUtilities
+ (id)clearHistoryTimeFrameStringFromItemType:(int64_t)type;
+ (int64_t)clearHistoryTimeFrameItemTypeFromString:(id)string;
@end

@implementation SFClearHistoryUtilities

+ (id)clearHistoryTimeFrameStringFromItemType:(int64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_1E721EBB8[type];
  }
}

+ (int64_t)clearHistoryTimeFrameItemTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"LastHour"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"Today"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"TodayAndYesterday"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"All"])
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