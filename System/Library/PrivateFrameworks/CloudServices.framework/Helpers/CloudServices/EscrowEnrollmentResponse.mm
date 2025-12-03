@interface EscrowEnrollmentResponse
- (NSString)bypassToken;
@end

@implementation EscrowEnrollmentResponse

- (NSString)bypassToken
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"phoneNumberToken"];

  return v3;
}

@end