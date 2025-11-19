@interface NSHTTPURLResponse(GKCachingAdditions)
- (double)_maxAge;
@end

@implementation NSHTTPURLResponse(GKCachingAdditions)

- (double)_maxAge
{
  v1 = [a1 allHeaderFields];
  v2 = [v1 objectForKey:@"Cache-Control"];

  if (v2)
  {
    v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v20 = v2;
    v4 = [v2 componentsSeparatedByString:{@", "}];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 10.0;
      do
      {
        v9 = [v4 objectAtIndex:v7];
        v10 = [v9 stringByTrimmingCharactersInSet:v3];

        v11 = [v10 componentsSeparatedByString:@"="];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndex:0];
          v13 = [v12 hasPrefix:@"max-age"];

          if (v13)
          {
            v14 = [v11 objectAtIndex:1];
            [v14 doubleValue];
            v8 = v15;
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    else
    {
      v8 = 10.0;
    }

    v2 = v20;
  }

  else
  {
    v8 = 10.0;
  }

  v16 = +[GKPreferences shared];
  v17 = fmin(v8, 86400.0);
  [v16 minimumCacheTTL];
  if (v17 < v18)
  {
    v17 = v18;
  }

  return v17;
}

@end