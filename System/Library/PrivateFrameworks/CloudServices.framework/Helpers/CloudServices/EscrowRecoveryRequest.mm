@interface EscrowRecoveryRequest
- (id)additionalHeaders;
- (id)bodyDictionary;
@end

@implementation EscrowRecoveryRequest

- (id)additionalHeaders
{
  v6.receiver = self;
  v6.super_class = EscrowRecoveryRequest;
  additionalHeaders = [(EscrowGenericRequest *)&v6 additionalHeaders];
  v4 = [additionalHeaders mutableCopy];

  if ([(EscrowGenericRequest *)self duplicate]|| [(EscrowGenericRequest *)self silentDoubleRecovery])
  {
    [v4 setObject:@"true" forKeyedSubscript:@"X-Apple-Cyrus-Silent-Recovery"];
  }

  return v4;
}

- (id)bodyDictionary
{
  v9.receiver = self;
  v9.super_class = EscrowRecoveryRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v9 bodyDictionary];
  blob = [(EscrowGenericRequest *)self blob];
  v5 = [blob base64EncodedStringWithOptions:0];

  if (v5)
  {
    [bodyDictionary setObject:v5 forKeyedSubscript:@"blob"];
  }

  challengeCode = [(EscrowGenericRequest *)self challengeCode];

  if (challengeCode)
  {
    challengeCode2 = [(EscrowGenericRequest *)self challengeCode];
    [bodyDictionary setObject:challengeCode2 forKeyedSubscript:@"smsChallengeCode"];
  }

  if ([(EscrowGenericRequest *)self silentAttempt])
  {
    [bodyDictionary setObject:&__kCFBooleanTrue forKeyedSubscript:@"silentAttempt"];
  }

  return bodyDictionary;
}

@end