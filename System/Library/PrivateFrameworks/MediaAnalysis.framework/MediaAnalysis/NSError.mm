@interface NSError
- (BOOL)mad_isDownloadThrottling;
@end

@implementation NSError

- (BOOL)mad_isDownloadThrottling
{
  domain = [(NSError *)self domain];
  v4 = CPLErrorDomain;
  if ([domain isEqual:CPLErrorDomain])
  {
    code = [(NSError *)self code];

    if (code == 1004)
    {
      return 1;
    }
  }

  else
  {
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  underlyingErrors = [(NSError *)self underlyingErrors];
  v8 = [underlyingErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(underlyingErrors);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        domain2 = [v12 domain];
        if ([domain2 isEqual:v4])
        {
          code2 = [v12 code];

          if (code2 == 1004)
          {
            v6 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v9 = [underlyingErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v6 = 0;
LABEL_17:

  return v6;
}

@end