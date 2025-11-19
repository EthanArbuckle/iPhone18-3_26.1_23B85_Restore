@interface EscrowSMSChallengeResponse
- (NSNumber)smsVerificationCodeLength;
@end

@implementation EscrowSMSChallengeResponse

- (NSNumber)smsVerificationCodeLength
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"smsChallengeLength"];

  return v3;
}

@end