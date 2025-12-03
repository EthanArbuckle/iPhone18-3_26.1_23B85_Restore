@interface RWIProtocolNetworkHeaders(IKJSInspector)
+ (id)ik_networkHeadersFromHTTPHeaderFields:()IKJSInspector;
- (__CFString)ik_text;
- (void)setHTTPHeaderFields:()IKJSInspector;
@end

@implementation RWIProtocolNetworkHeaders(IKJSInspector)

+ (id)ik_networkHeadersFromHTTPHeaderFields:()IKJSInspector
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setHTTPHeaderFields:v3];

  return v4;
}

- (void)setHTTPHeaderFields:()IKJSInspector
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  httpHeaders = [self httpHeaders];
  v6 = [httpHeaders isEqualToDictionary:v4];

  if ((v6 & 1) == 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    httpHeaders2 = [self httpHeaders];
    v8 = [httpHeaders2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(httpHeaders2);
          }

          [self removeKey:*(*(&v24 + 1) + 8 * i)];
        }

        v9 = [httpHeaders2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    objc_setAssociatedObject(self, sel_httpHeaders, v4, 3);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * j);
          v18 = [v12 objectForKey:{v17, v20}];
          [self setString:v18 forKey:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (__CFString)ik_text
{
  v20 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  httpHeaders = [self httpHeaders];
  v4 = [httpHeaders countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(httpHeaders);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        httpHeaders2 = [self httpHeaders];
        v10 = [httpHeaders2 objectForKey:v8];
        [string appendFormat:@"%@ = %@\n", v8, v10];
      }

      v5 = [httpHeaders countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  httpHeaders3 = [self httpHeaders];
  if ([httpHeaders3 count])
  {
    v12 = [string substringToIndex:{objc_msgSend(string, "length") - 1}];
  }

  else
  {
    v12 = &stru_2866C1E60;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end