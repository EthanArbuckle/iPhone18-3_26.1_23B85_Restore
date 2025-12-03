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
  validateInput = [(EscrowGenericRequest *)&v8 validateInput];
  if (!validateInput)
  {
    dsid = [(EscrowGenericRequest *)self dsid];
    v5 = [dsid length];

    if (v5)
    {
      validateInput = 0;
    }

    else
    {
      validateInput = [CloudServicesError errorWithCode:22 error:0 format:@"Missing DSID"];
      v6 = CloudServicesLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100049D1C();
      }
    }
  }

  return validateInput;
}

- (id)additionalHeaders
{
  v6.receiver = self;
  v6.super_class = EscrowSRPRequest;
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
  v11.receiver = self;
  v11.super_class = EscrowSRPRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v11 bodyDictionary];
  blob = [(EscrowGenericRequest *)self blob];
  v5 = [blob base64EncodedStringWithOptions:0];

  if (v5)
  {
    [bodyDictionary setObject:v5 forKeyedSubscript:@"blob"];
  }

  bypassToken = [(EscrowGenericRequest *)self bypassToken];

  if (bypassToken)
  {
    bypassToken2 = [(EscrowGenericRequest *)self bypassToken];
    [bodyDictionary setObject:bypassToken2 forKeyedSubscript:@"phoneNumberToken"];
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