@interface IDSEndpointResolverComponent
- (IDSEndpointResolverComponent)initWithQueryCache:(id)cache;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSEndpointResolverComponent

- (IDSEndpointResolverComponent)initWithQueryCache:(id)cache
{
  cacheCopy = cache;
  v9.receiver = self;
  v9.super_class = IDSEndpointResolverComponent;
  v6 = [(IDSEndpointResolverComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerIDManager, cache);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc_init(NSMutableArray);
  uris = [inputCopy uris];
  v7 = [uris count];

  if (v7)
  {
    if ([inputCopy alwaysSkipSelf])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if ([inputCopy alwaysIncludeSelf])
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    peerIDManager = self->_peerIDManager;
    uris2 = [inputCopy uris];
    fromID = [inputCopy fromID];
    service = [inputCopy service];
    v14 = [IDSURI URIWithPrefixedURI:fromID withServiceLoggingHint:service];
    service2 = [inputCopy service];
    fromIdentity = [inputCopy fromIdentity];
    v17 = -[IDSPeerIDManager endpointsForURIs:fromURI:service:fromIdentity:filterBehavior:allowRefresh:](peerIDManager, "endpointsForURIs:fromURI:service:fromIdentity:filterBehavior:allowRefresh:", uris2, v14, service2, fromIdentity, v9, [inputCopy disallowQueryRefresh] ^ 1);

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

  [inputCopy setEndpoints:v5];
  v29 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];

  return v29;
}

@end