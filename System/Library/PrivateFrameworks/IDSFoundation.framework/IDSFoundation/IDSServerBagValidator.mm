@interface IDSServerBagValidator
- (IDSServerBagValidator)initWithConfig:(id)a3;
- (id)trustedContentsFromRawContents:(id)a3 shouldReport:(BOOL)a4 withError:(id *)a5;
@end

@implementation IDSServerBagValidator

- (IDSServerBagValidator)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSServerBagValidator;
  v6 = [(IDSServerBagValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (id)trustedContentsFromRawContents:(id)a3 shouldReport:(BOOL)a4 withError:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 serverCerts];
  v25 = 0;
  v10 = sub_1A7E20BA8(self, v9, v6, &v25);
  v11 = v25;

  if (v10)
  {
    v14 = [v8 serverSignature];
    v15 = [v8 signedBag];
    v16 = [(IDSServerBagValidator *)self config];
    v24 = 0;
    v17 = sub_1A7E21178(self, v14, v15, v10, [v16 hashAlgorithm], &v24);
    v18 = v24;

    CFRelease(v10);
    if (v17)
    {
      v19 = MEMORY[0x1E696AE40];
      v20 = [v8 signedBag];
      v23 = 0;
      v21 = [v19 propertyListWithData:v20 options:0 format:0 error:&v23];
      v22 = v23;

      if (v21)
      {
        v12 = [[IDSServerBagLoadedContents alloc] initWithDictionary:v21];
      }

      else if (a5)
      {
        IDSServerBagContentErrorWithUnderlyingError(200, v22);
        *a5 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (a5)
    {
      IDSServerBagContentErrorWithUnderlyingError(500, v18);
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (a5)
  {
    IDSServerBagContentErrorWithUnderlyingError(400, v11);
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end