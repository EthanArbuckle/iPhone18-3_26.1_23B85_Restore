@interface EscrowSRPRequest
- (id)additionalHeaders;
- (id)bodyDictionary;
- (id)validateInput;
@end

@implementation EscrowSRPRequest

- (id)validateInput
{
  v8.receiver = self;
  v8.super_class = EscrowSRPRequest;
  v3 = [(EscrowGenericRequest *)&v8 validateInput];
  if (!v3)
  {
    v4 = [(EscrowGenericRequest *)self dsid];
    v5 = [v4 length];

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing DSID"];
      v6 = CloudServicesLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100049D1C();
      }
    }
  }

  return v3;
}

- (id)additionalHeaders
{
  v6.receiver = self;
  v6.super_class = EscrowSRPRequest;
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
  v11.receiver = self;
  v11.super_class = EscrowSRPRequest;
  v3 = [(EscrowGenericRequest *)&v11 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self blob];
  v5 = [v4 base64EncodedStringWithOptions:0];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"blob"];
  }

  v6 = [(EscrowGenericRequest *)self bypassToken];

  if (v6)
  {
    v7 = [(EscrowGenericRequest *)self bypassToken];
    [v3 setObject:v7 forKeyedSubscript:@"phoneNumberToken"];
  }

  v8 = [(EscrowGenericRequest *)self challengeCode];

  if (v8)
  {
    v9 = [(EscrowGenericRequest *)self challengeCode];
    [v3 setObject:v9 forKeyedSubscript:@"smsChallengeCode"];
  }

  if ([(EscrowGenericRequest *)self silentAttempt])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"silentAttempt"];
  }

  return v3;
}

@end