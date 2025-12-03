@interface EscrowEnrollmentRequest
- (EscrowEnrollmentRequest)initWithRequest:(id)request;
- (id)bodyDictionary;
- (id)validateInput;
@end

@implementation EscrowEnrollmentRequest

- (EscrowEnrollmentRequest)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = EscrowEnrollmentRequest;
  v5 = [(EscrowGenericRequest *)&v8 initWithRequest:requestCopy];
  if (v5)
  {
    prerecord = [requestCopy prerecord];
    [(EscrowEnrollmentRequest *)v5 setPrerecord:prerecord];
  }

  return v5;
}

- (id)validateInput
{
  v19.receiver = self;
  v19.super_class = EscrowEnrollmentRequest;
  validateInput = [(EscrowPasswordAuthenticatedRequest *)&v19 validateInput];
  if (validateInput)
  {
    goto LABEL_30;
  }

  prerecord = [(EscrowEnrollmentRequest *)self prerecord];
  if (prerecord)
  {
    v8 = 0;
LABEL_8:
    if ([(EscrowGenericRequest *)self stingray]|| [(EscrowGenericRequest *)self iCDP])
    {
      v11 = 0;
      if (prerecord)
      {
LABEL_11:
        if (!v8)
        {

          if (!v11)
          {
LABEL_20:
            validateInput = 0;
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      phoneNumber = [(EscrowGenericRequest *)self phoneNumber];
      v11 = [phoneNumber length] == 0;

      if (prerecord)
      {
        goto LABEL_11;
      }
    }

    if (v8)
    {
    }

LABEL_19:
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  recoveryPassphrase = [(EscrowGenericRequest *)self recoveryPassphrase];
  v9 = [recoveryPassphrase length];
  v8 = v9 == 0;
  if (!v9)
  {
    passcodeStashSecret = [(EscrowGenericRequest *)self passcodeStashSecret];
    if (!passcodeStashSecret)
    {
      goto LABEL_22;
    }
  }

  escrowRecord = [(EscrowGenericRequest *)self escrowRecord];
  if (escrowRecord)
  {
    v4 = escrowRecord;
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_22:
  }

LABEL_24:
  validateInput = [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    recoveryPassphrase2 = [(EscrowGenericRequest *)self recoveryPassphrase];
    if ([recoveryPassphrase2 length])
    {
      v15 = @"Yes";
    }

    else
    {
      v15 = @"No";
    }

    escrowRecord2 = [(EscrowGenericRequest *)self escrowRecord];
    phoneNumber2 = [(EscrowGenericRequest *)self phoneNumber];
    *buf = 138412802;
    v21 = v15;
    v22 = 2112;
    v23 = escrowRecord2;
    v24 = 2112;
    v25 = phoneNumber2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required parameters passphrase: %@\ndata: %@\nsms target: %@", buf, 0x20u);
  }

LABEL_30:

  return validateInput;
}

- (id)bodyDictionary
{
  v21.receiver = self;
  v21.super_class = EscrowEnrollmentRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v21 bodyDictionary];
  phoneNumber = [(EscrowGenericRequest *)self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [(EscrowGenericRequest *)self phoneNumber];
    [bodyDictionary setObject:phoneNumber2 forKeyedSubscript:@"phoneNumber"];
  }

  countryCode = [(EscrowGenericRequest *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(EscrowGenericRequest *)self countryCode];
    [bodyDictionary setObject:countryCode2 forKeyedSubscript:@"countryISOCode"];
  }

  countryDialCode = [(EscrowGenericRequest *)self countryDialCode];

  if (countryDialCode)
  {
    countryDialCode2 = [(EscrowGenericRequest *)self countryDialCode];
    [bodyDictionary setObject:countryDialCode2 forKeyedSubscript:@"countryDialCode"];
  }

  dsid = [(EscrowGenericRequest *)self dsid];

  if (dsid)
  {
    dsid2 = [(EscrowGenericRequest *)self dsid];
    [bodyDictionary setObject:dsid2 forKeyedSubscript:@"dsid"];
  }

  duplicate = [(EscrowGenericRequest *)self duplicate];
  metadata = [(EscrowGenericRequest *)self metadata];
  if (duplicate)
  {
    v14 = [(EscrowGenericRequest *)self _filteredMetadataForDoubleEnrollment:metadata];

    metadata = v14;
  }

  base64EncodedStringFromDict = [metadata base64EncodedStringFromDict];
  [bodyDictionary setObject:base64EncodedStringFromDict forKeyedSubscript:@"metadata"];

  blob = [(EscrowGenericRequest *)self blob];
  v17 = [blob base64EncodedStringWithOptions:0];
  [bodyDictionary setObject:v17 forKeyedSubscript:@"blob"];

  blob2 = [(EscrowGenericRequest *)self blob];
  v19 = sub_10000DD7C(blob2);
  [bodyDictionary setObject:v19 forKeyedSubscript:@"blobDigest"];

  return bodyDictionary;
}

@end