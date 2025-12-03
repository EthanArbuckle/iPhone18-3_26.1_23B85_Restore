@interface INIntentResponse(CMSCoding)
- (id)cmsCoded;
@end

@implementation INIntentResponse(CMSCoding)

- (id)cmsCoded
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"IntentResponse" forKey:@"class"];
  userActivity = [self userActivity];
  v4 = userActivity;
  if (userActivity)
  {
    [userActivity cmsCoded];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v5 = ;
  [dictionary setObject:v5 forKey:@"userActivity"];

  return dictionary;
}

@end