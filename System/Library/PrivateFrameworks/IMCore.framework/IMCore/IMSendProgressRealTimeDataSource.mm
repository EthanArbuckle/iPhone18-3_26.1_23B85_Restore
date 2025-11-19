@interface IMSendProgressRealTimeDataSource
- (double)timeIntervalSinceReferenceDate;
@end

@implementation IMSendProgressRealTimeDataSource

- (double)timeIntervalSinceReferenceDate
{
  v3 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v4, v5);
  v7 = v6;

  return v7;
}

@end