@interface EscrowRecoveryRequest
- (id)additionalHeaders;
- (id)bodyDictionary;
@end

@implementation EscrowRecoveryRequest

- (id)additionalHeaders
{
  v6.receiver = self;
  v6.super_class = EscrowRecoveryRequest;
  v3 = [(EscrowGenericRequest *)&v6 additionalHeaders];
  v4 = [v3 mutableCopy];

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
  v3 = [(EscrowGenericRequest *)&v9 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self blob];
  v5 = [v4 base64EncodedStringWithOptions:0];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"blob"];
  }

  v6 = [(EscrowGenericRequest *)self challengeCode];

  if (v6)
  {
    v7 = [(EscrowGenericRequest *)self challengeCode];
    [v3 setObject:v7 forKeyedSubscript:@"smsChallengeCode"];
  }

  if ([(EscrowGenericRequest *)self silentAttempt])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"silentAttempt"];
  }

  return v3;
}

@end