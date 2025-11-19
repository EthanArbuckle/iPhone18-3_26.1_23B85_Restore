@interface EscrowPasswordAuthenticatedRequest
- (id)authorizationHeader;
- (id)validateInput;
@end

@implementation EscrowPasswordAuthenticatedRequest

- (id)validateInput
{
  v13.receiver = self;
  v13.super_class = EscrowPasswordAuthenticatedRequest;
  v3 = [(EscrowGenericRequest *)&v13 validateInput];
  if (!v3)
  {
    v4 = [(EscrowGenericRequest *)self appleID];
    if ([v4 length])
    {
      v5 = [(EscrowGenericRequest *)self iCloudPassword];
      v6 = [v5 length];

      if (v6)
      {
        v3 = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(EscrowGenericRequest *)self appleID];
      if ([v8 length])
      {
        v9 = @"Yes";
      }

      else
      {
        v9 = @"No";
      }

      v10 = [(EscrowGenericRequest *)self iCloudPassword];
      if ([v10 length])
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

    v3 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
  }

LABEL_15:

  return v3;
}

- (id)authorizationHeader
{
  v3 = [(EscrowGenericRequest *)self appleID];
  v4 = [(EscrowGenericRequest *)self iCloudPassword];
  v5 = [(EscrowGenericRequest *)self authorizationHeaderWithUser:v3 password:v4 authType:@"Basic"];

  return v5;
}

@end