@interface EscrowSMSChallengeResponse
- (NSNumber)smsVerificationCodeLength;
@end

@implementation EscrowSMSChallengeResponse

- (NSNumber)smsVerificationCodeLength
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"smsChallengeLength"];

  return v3;
}

@end