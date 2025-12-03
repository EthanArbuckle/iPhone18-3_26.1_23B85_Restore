@interface EscrowPasswordAuthenticatedRequest
- (id)authorizationHeader;
- (id)validateInput;
@end

@implementation EscrowPasswordAuthenticatedRequest

- (id)validateInput
{
  v13.receiver = self;
  v13.super_class = EscrowPasswordAuthenticatedRequest;
  validateInput = [(EscrowGenericRequest *)&v13 validateInput];
  if (!validateInput)
  {
    appleID = [(EscrowGenericRequest *)self appleID];
    if ([appleID length])
    {
      iCloudPassword = [(EscrowGenericRequest *)self iCloudPassword];
      v6 = [iCloudPassword length];

      if (v6)
      {
        validateInput = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      appleID2 = [(EscrowGenericRequest *)self appleID];
      if ([appleID2 length])
      {
        v9 = @"Yes";
      }

      else
      {
        v9 = @"No";
      }

      iCloudPassword2 = [(EscrowGenericRequest *)self iCloudPassword];
      if ([iCloudPassword2 length])
      {
        v11 = @"Yes";
      }

      else
      {
        v11 = @"No";
      }

      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Missing required parameters AppleID: %@\n%@iCloud password:", buf, 0x16u);
    }

    validateInput = [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
  }

LABEL_15:

  return validateInput;
}

- (id)authorizationHeader
{
  appleID = [(EscrowGenericRequest *)self appleID];
  iCloudPassword = [(EscrowGenericRequest *)self iCloudPassword];
  v5 = [(EscrowGenericRequest *)self authorizationHeaderWithUser:appleID password:iCloudPassword authType:@"Basic"];

  return v5;
}

@end