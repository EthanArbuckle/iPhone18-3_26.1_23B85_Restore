@interface EscrowChangeSMSTargetRequest
- (id)bodyDictionary;
- (id)validateInput;
@end

@implementation EscrowChangeSMSTargetRequest

- (id)validateInput
{
  v10.receiver = self;
  v10.super_class = EscrowChangeSMSTargetRequest;
  validateInput = [(EscrowPasswordAuthenticatedRequest *)&v10 validateInput];
  if (!validateInput)
  {
    countryDialCode = [(EscrowGenericRequest *)self countryDialCode];
    if ([countryDialCode length])
    {
      phoneNumber = [(EscrowGenericRequest *)self phoneNumber];
      v6 = [phoneNumber length];

      if (v6)
      {
        validateInput = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    validateInput = [CloudServicesError errorWithCode:22 error:0 format:@"Missing parameters"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Missing parameters", v9, 2u);
    }
  }

LABEL_9:

  return validateInput;
}

- (id)bodyDictionary
{
  v11.receiver = self;
  v11.super_class = EscrowChangeSMSTargetRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v11 bodyDictionary];
  countryDialCode = [(EscrowGenericRequest *)self countryDialCode];
  [bodyDictionary setObject:countryDialCode forKeyedSubscript:@"countryDialCode"];

  phoneNumber = [(EscrowGenericRequest *)self phoneNumber];
  [bodyDictionary setObject:phoneNumber forKeyedSubscript:@"phoneNumber"];

  countryCode = [(EscrowGenericRequest *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(EscrowGenericRequest *)self countryCode];
    [bodyDictionary setObject:countryCode2 forKeyedSubscript:@"countryISOCode"];
  }

  bypassToken = [(EscrowGenericRequest *)self bypassToken];

  if (bypassToken)
  {
    bypassToken2 = [(EscrowGenericRequest *)self bypassToken];
    [bodyDictionary setObject:bypassToken2 forKeyedSubscript:@"phoneNumberToken"];
  }

  return bodyDictionary;
}

@end