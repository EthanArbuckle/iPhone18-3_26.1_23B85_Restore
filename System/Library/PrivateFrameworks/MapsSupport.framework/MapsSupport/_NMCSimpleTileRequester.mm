@interface _NMCSimpleTileRequester
- (_NMCSimpleTileRequester)initWithTileRequest:(id)request forOriginalRequests:(id)requests delegateQueue:(id)queue delegate:(id)delegate;
- (id)checksumMethodForIncomingTileDataWithKey:(uint64_t)key;
- (id)localizationURLForTileKey:(uint64_t)key;
- (id)urlForTileKey:(uint64_t)key;
@end

@implementation _NMCSimpleTileRequester

- (_NMCSimpleTileRequester)initWithTileRequest:(id)request forOriginalRequests:(id)requests delegateQueue:(id)queue delegate:(id)delegate
{
  requestsCopy = requests;
  v16.receiver = self;
  v16.super_class = _NMCSimpleTileRequester;
  v12 = [(_NMCSimpleTileRequester *)&v16 initWithTileRequest:request delegateQueue:queue delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requests, requests);
    v14 = v13;
  }

  return v13;
}

- (id)urlForTileKey:(uint64_t)key
{
  v2 = [*(key + 144) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    baseURL = [v2 baseURL];
    v5 = [NSURL URLWithString:baseURL];

    if (v5)
    {
      v6 = [GEOURLWithHeaders alloc];
      baseHeaders = [v3 baseHeaders];
      v8 = sub_10000AC24(baseHeaders);
      v9 = sub_10000AE50(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizationURLForTileKey:(uint64_t)key
{
  v2 = [*(key + 144) objectForKey:?];
  v3 = v2;
  if (v2 && [v2 hasLocalizationURL])
  {
    localizationURL = [v3 localizationURL];
    v5 = [NSURL URLWithString:localizationURL];

    if (v5)
    {
      v6 = [GEOURLWithHeaders alloc];
      localizationHeaders = [v3 localizationHeaders];
      v8 = sub_10000AC24(localizationHeaders);
      v9 = sub_10000AE50(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)checksumMethodForIncomingTileDataWithKey:(uint64_t)key
{
  v1 = [*(key + 144) objectForKey:?];
  v2 = v1;
  if (v1)
  {
    checksumMethod = [v1 checksumMethod];
  }

  else
  {
    checksumMethod = 0;
  }

  return checksumMethod;
}

@end