@interface _NMCSimpleTileRequester
- (_NMCSimpleTileRequester)initWithTileRequest:(id)a3 forOriginalRequests:(id)a4 delegateQueue:(id)a5 delegate:(id)a6;
- (id)checksumMethodForIncomingTileDataWithKey:(uint64_t)a1;
- (id)localizationURLForTileKey:(uint64_t)a1;
- (id)urlForTileKey:(uint64_t)a1;
@end

@implementation _NMCSimpleTileRequester

- (_NMCSimpleTileRequester)initWithTileRequest:(id)a3 forOriginalRequests:(id)a4 delegateQueue:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = _NMCSimpleTileRequester;
  v12 = [(_NMCSimpleTileRequester *)&v16 initWithTileRequest:a3 delegateQueue:a5 delegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requests, a4);
    v14 = v13;
  }

  return v13;
}

- (id)urlForTileKey:(uint64_t)a1
{
  v2 = [*(a1 + 144) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 baseURL];
    v5 = [NSURL URLWithString:v4];

    if (v5)
    {
      v6 = [GEOURLWithHeaders alloc];
      v7 = [v3 baseHeaders];
      v8 = sub_10000AC24(v7);
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

- (id)localizationURLForTileKey:(uint64_t)a1
{
  v2 = [*(a1 + 144) objectForKey:?];
  v3 = v2;
  if (v2 && [v2 hasLocalizationURL])
  {
    v4 = [v3 localizationURL];
    v5 = [NSURL URLWithString:v4];

    if (v5)
    {
      v6 = [GEOURLWithHeaders alloc];
      v7 = [v3 localizationHeaders];
      v8 = sub_10000AC24(v7);
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

- (id)checksumMethodForIncomingTileDataWithKey:(uint64_t)a1
{
  v1 = [*(a1 + 144) objectForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 checksumMethod];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end