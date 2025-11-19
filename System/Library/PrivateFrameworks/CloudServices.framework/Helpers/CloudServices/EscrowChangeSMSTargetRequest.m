@interface EscrowChangeSMSTargetRequest
- (id)bodyDictionary;
- (id)validateInput;
@end

@implementation EscrowChangeSMSTargetRequest

- (id)validateInput
{
  v10.receiver = self;
  v10.super_class = EscrowChangeSMSTargetRequest;
  v3 = [(EscrowPasswordAuthenticatedRequest *)&v10 validateInput];
  if (!v3)
  {
    v4 = [(EscrowGenericRequest *)self countryDialCode];
    if ([v4 length])
    {
      v5 = [(EscrowGenericRequest *)self phoneNumber];
      v6 = [v5 length];

      if (v6)
      {
        v3 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v3 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing parameters"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Missing parameters", v9, 2u);
    }
  }

LABEL_9:

  return v3;
}

- (id)bodyDictionary
{
  v11.receiver = self;
  v11.super_class = EscrowChangeSMSTargetRequest;
  v3 = [(EscrowGenericRequest *)&v11 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self countryDialCode];
  [v3 setObject:v4 forKeyedSubscript:@"countryDialCode"];

  v5 = [(EscrowGenericRequest *)self phoneNumber];
  [v3 setObject:v5 forKeyedSubscript:@"phoneNumber"];

  v6 = [(EscrowGenericRequest *)self countryCode];

  if (v6)
  {
    v7 = [(EscrowGenericRequest *)self countryCode];
    [v3 setObject:v7 forKeyedSubscript:@"countryISOCode"];
  }

  v8 = [(EscrowGenericRequest *)self bypassToken];

  if (v8)
  {
    v9 = [(EscrowGenericRequest *)self bypassToken];
    [v3 setObject:v9 forKeyedSubscript:@"phoneNumberToken"];
  }

  return v3;
}

@end