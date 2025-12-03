@interface IDSServerBagValidator
- (IDSServerBagValidator)initWithConfig:(id)config;
- (id)trustedContentsFromRawContents:(id)contents shouldReport:(BOOL)report withError:(id *)error;
@end

@implementation IDSServerBagValidator

- (IDSServerBagValidator)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = IDSServerBagValidator;
  v6 = [(IDSServerBagValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (id)trustedContentsFromRawContents:(id)contents shouldReport:(BOOL)report withError:(id *)error
{
  reportCopy = report;
  contentsCopy = contents;
  serverCerts = [contentsCopy serverCerts];
  v25 = 0;
  v10 = sub_1A7E20BA8(self, serverCerts, reportCopy, &v25);
  v11 = v25;

  if (v10)
  {
    serverSignature = [contentsCopy serverSignature];
    signedBag = [contentsCopy signedBag];
    config = [(IDSServerBagValidator *)self config];
    v24 = 0;
    v17 = sub_1A7E21178(self, serverSignature, signedBag, v10, [config hashAlgorithm], &v24);
    v18 = v24;

    CFRelease(v10);
    if (v17)
    {
      v19 = MEMORY[0x1E696AE40];
      signedBag2 = [contentsCopy signedBag];
      v23 = 0;
      v21 = [v19 propertyListWithData:signedBag2 options:0 format:0 error:&v23];
      v22 = v23;

      if (v21)
      {
        v12 = [[IDSServerBagLoadedContents alloc] initWithDictionary:v21];
      }

      else if (error)
      {
        IDSServerBagContentErrorWithUnderlyingError(200, v22);
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (error)
    {
      IDSServerBagContentErrorWithUnderlyingError(500, v18);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (error)
  {
    IDSServerBagContentErrorWithUnderlyingError(400, v11);
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end