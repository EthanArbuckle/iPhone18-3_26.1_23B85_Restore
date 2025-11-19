@interface EscrowEnrollmentRequest
- (EscrowEnrollmentRequest)initWithRequest:(id)a3;
- (id)bodyDictionary;
- (id)validateInput;
@end

@implementation EscrowEnrollmentRequest

- (EscrowEnrollmentRequest)initWithRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EscrowEnrollmentRequest;
  v5 = [(EscrowGenericRequest *)&v8 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 prerecord];
    [(EscrowEnrollmentRequest *)v5 setPrerecord:v6];
  }

  return v5;
}

- (id)validateInput
{
  v19.receiver = self;
  v19.super_class = EscrowEnrollmentRequest;
  v6 = [(EscrowPasswordAuthenticatedRequest *)&v19 validateInput];
  if (v6)
  {
    goto LABEL_30;
  }

  v7 = [(EscrowEnrollmentRequest *)self prerecord];
  if (v7)
  {
    v8 = 0;
LABEL_8:
    if ([(EscrowGenericRequest *)self stingray]|| [(EscrowGenericRequest *)self iCDP])
    {
      v11 = 0;
      if (v7)
      {
LABEL_11:
        if (!v8)
        {

          if (!v11)
          {
LABEL_20:
            v6 = 0;
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v12 = [(EscrowGenericRequest *)self phoneNumber];
      v11 = [v12 length] == 0;

      if (v7)
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

  v2 = [(EscrowGenericRequest *)self recoveryPassphrase];
  v9 = [v2 length];
  v8 = v9 == 0;
  if (!v9)
  {
    v3 = [(EscrowGenericRequest *)self passcodeStashSecret];
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v10 = [(EscrowGenericRequest *)self escrowRecord];
  if (v10)
  {
    v4 = v10;
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_22:
  }

LABEL_24:
  v6 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(EscrowGenericRequest *)self recoveryPassphrase];
    if ([v14 length])
    {
      v15 = @"Yes";
    }

    else
    {
      v15 = @"No";
    }

    v16 = [(EscrowGenericRequest *)self escrowRecord];
    v17 = [(EscrowGenericRequest *)self phoneNumber];
    *buf = 138412802;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required parameters passphrase: %@\ndata: %@\nsms target: %@", buf, 0x20u);
  }

LABEL_30:

  return v6;
}

- (id)bodyDictionary
{
  v21.receiver = self;
  v21.super_class = EscrowEnrollmentRequest;
  v3 = [(EscrowGenericRequest *)&v21 bodyDictionary];
  v4 = [(EscrowGenericRequest *)self phoneNumber];

  if (v4)
  {
    v5 = [(EscrowGenericRequest *)self phoneNumber];
    [v3 setObject:v5 forKeyedSubscript:@"phoneNumber"];
  }

  v6 = [(EscrowGenericRequest *)self countryCode];

  if (v6)
  {
    v7 = [(EscrowGenericRequest *)self countryCode];
    [v3 setObject:v7 forKeyedSubscript:@"countryISOCode"];
  }

  v8 = [(EscrowGenericRequest *)self countryDialCode];

  if (v8)
  {
    v9 = [(EscrowGenericRequest *)self countryDialCode];
    [v3 setObject:v9 forKeyedSubscript:@"countryDialCode"];
  }

  v10 = [(EscrowGenericRequest *)self dsid];

  if (v10)
  {
    v11 = [(EscrowGenericRequest *)self dsid];
    [v3 setObject:v11 forKeyedSubscript:@"dsid"];
  }

  v12 = [(EscrowGenericRequest *)self duplicate];
  v13 = [(EscrowGenericRequest *)self metadata];
  if (v12)
  {
    v14 = [(EscrowGenericRequest *)self _filteredMetadataForDoubleEnrollment:v13];

    v13 = v14;
  }

  v15 = [v13 base64EncodedStringFromDict];
  [v3 setObject:v15 forKeyedSubscript:@"metadata"];

  v16 = [(EscrowGenericRequest *)self blob];
  v17 = [v16 base64EncodedStringWithOptions:0];
  [v3 setObject:v17 forKeyedSubscript:@"blob"];

  v18 = [(EscrowGenericRequest *)self blob];
  v19 = sub_10000DD7C(v18);
  [v3 setObject:v19 forKeyedSubscript:@"blobDigest"];

  return v3;
}

@end