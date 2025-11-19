@interface NSError
- (BOOL)mad_isDownloadThrottling;
@end

@implementation NSError

- (BOOL)mad_isDownloadThrottling
{
  v3 = [(NSError *)self domain];
  v4 = CPLErrorDomain;
  if ([v3 isEqual:CPLErrorDomain])
  {
    v5 = [(NSError *)self code];

    if (v5 == 1004)
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
  v7 = [(NSError *)self underlyingErrors];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 domain];
        if ([v13 isEqual:v4])
        {
          v14 = [v12 code];

          if (v14 == 1004)
          {
            v6 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v6 = 0;
LABEL_17:

  return v6;
}

@end