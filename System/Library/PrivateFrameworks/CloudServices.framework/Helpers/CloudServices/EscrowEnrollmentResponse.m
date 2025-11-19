@interface EscrowEnrollmentResponse
- (NSString)bypassToken;
@end

@implementation EscrowEnrollmentResponse

- (NSString)bypassToken
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"phoneNumberToken"];

  return v3;
}

@end