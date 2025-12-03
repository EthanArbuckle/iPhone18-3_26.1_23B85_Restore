@interface EscrowSMSChallengeRequest
- (id)bodyDictionary;
@end

@implementation EscrowSMSChallengeRequest

- (id)bodyDictionary
{
  v4.receiver = self;
  v4.super_class = EscrowSMSChallengeRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v4 bodyDictionary];
  [bodyDictionary setObject:@"com.apple.securebackup.record" forKeyedSubscript:@"label"];

  return bodyDictionary;
}

@end