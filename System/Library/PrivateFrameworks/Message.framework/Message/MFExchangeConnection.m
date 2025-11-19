@interface MFExchangeConnection
- (BOOL)_isFetchResponseValid:(id)a3;
- (id)_fetchArgumentForMessageSkeletonsWithAllHeaders;
@end

@implementation MFExchangeConnection

- (id)_fetchArgumentForMessageSkeletonsWithAllHeaders
{
  v9.receiver = self;
  v9.super_class = MFExchangeConnection;
  v2 = [(MFIMAPConnection *)&v9 _fetchArgumentForMessageSkeletonsWithAllHeaders];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length];
    v5 = v4 - 3;
    if (v4 >= 3)
    {
      v6 = [v3 substringFromIndex:v5];
      if (objc_msgSend(@"])"), "isEqualToString:", v6))
      {
        v7 = [MEMORY[0x1E696AD60] stringWithString:v3];

        v3 = v7;
        [v7 insertString:@" content-class" atIndex:v5];
      }
    }
  }

  return v3;
}

- (BOOL)_isFetchResponseValid:(id)a3
{
  v3 = [a3 fetchResultWithType:4];
  v4 = [v3 fetchData];

  if (!v4)
  {
    return 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E69AD730]) initWithData:v4];
  [v5 mf_convertNetworkLineEndingsToUnix];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x1E69AD740]) initWithHeaderData:v6 encoding:1];
  v8 = [v7 firstHeaderForKey:@"content-class"];
  v9 = v8;
  if (v8 && ([v8 isEqualToString:@"urn:content-classes:message"] & 1) == 0)
  {
    v10 = [v9 isEqualToString:@"urn:content-classes:appointment"];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end