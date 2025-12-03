@interface DRSRequestOutcomeStats
+ (id)descriptionStringForRequest:(id)request;
@end

@implementation DRSRequestOutcomeStats

+ (id)descriptionStringForRequest:(id)request
{
  v3 = MEMORY[0x277CCACA8];
  requestCopy = request;
  v5 = [v3 alloc];
  requestOutcomeString = [requestCopy requestOutcomeString];

  v7 = [v5 initWithFormat:@"%@", requestOutcomeString];

  return v7;
}

@end