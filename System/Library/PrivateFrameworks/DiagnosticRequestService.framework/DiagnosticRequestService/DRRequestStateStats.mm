@interface DRRequestStateStats
+ (id)descriptionStringForRequest:(id)request;
@end

@implementation DRRequestStateStats

+ (id)descriptionStringForRequest:(id)request
{
  v3 = MEMORY[0x277CCACA8];
  requestCopy = request;
  v5 = [v3 alloc];
  requestStateString = [requestCopy requestStateString];

  v7 = [v5 initWithFormat:@"%@", requestStateString];

  return v7;
}

@end