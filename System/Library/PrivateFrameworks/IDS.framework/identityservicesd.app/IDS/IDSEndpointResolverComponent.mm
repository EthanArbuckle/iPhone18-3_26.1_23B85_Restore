@interface IDSEndpointResolverComponent
- (IDSEndpointResolverComponent)initWithQueryCache:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSEndpointResolverComponent

- (IDSEndpointResolverComponent)initWithQueryCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSEndpointResolverComponent;
  v6 = [(IDSEndpointResolverComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerIDManager, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 uris];
  v7 = [v6 count];

  if (v7)
  {
    if ([v4 alwaysSkipSelf])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if ([v4 alwaysIncludeSelf])
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    peerIDManager = self->_peerIDManager;
    v11 = [v4 uris];
    v12 = [v4 fromID];
    v13 = [v4 service];
    v14 = [IDSURI URIWithPrefixedURI:v12 withServiceLoggingHint:v13];
    v15 = [v4 service];
    v16 = [v4 fromIdentity];
    v17 = -[IDSPeerIDManager endpointsForURIs:fromURI:service:fromIdentity:filterBehavior:allowRefresh:](peerIDManager, "endpointsForURIs:fromURI:service:fromIdentity:filterBehavior:allowRefresh:", v11, v14, v15, v16, v9, [v4 disallowQueryRefresh] ^ 1);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v24 = [v18 objectForKey:{v23, 0}];
          v25 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v32;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v32 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [v5 addObject:*(*(&v31 + 1) + 8 * j)];
              }

              v26 = [v24 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v26);
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v20);
    }
  }

  [v4 setEndpoints:v5];
  v29 = [CUTUnsafePromise fulfilledPromiseWithValue:v4];

  return v29;
}

@end