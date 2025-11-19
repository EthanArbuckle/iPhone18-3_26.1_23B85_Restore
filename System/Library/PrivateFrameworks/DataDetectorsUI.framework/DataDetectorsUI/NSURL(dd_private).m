@interface NSURL(dd_private)
- (id)dd_handleFromFacetimeSchemeFilteringForEmail:()dd_private;
- (uint64_t)dd_hasHosts:()dd_private filterKey:filterValue:;
@end

@implementation NSURL(dd_private)

- (uint64_t)dd_hasHosts:()dd_private filterKey:filterValue:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [a1 host];
    v12 = [v11 lowercaseString];
    v13 = [v8 containsObject:v12];

    if (v13)
    {
      if (!v9 || !v10)
      {
        goto LABEL_9;
      }

      v14 = [a1 absoluteString];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=", v9];
      if ([v14 rangeOfString:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_9:
        v19 = 1;
        goto LABEL_10;
      }

      v16 = [a1 absoluteString];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v9, v10];
      v18 = [v16 rangeOfString:v17];

      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_9;
      }
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (id)dd_handleFromFacetimeSchemeFilteringForEmail:()dd_private
{
  v5 = [a1 scheme];
  v6 = [v5 lowercaseString];
  v7 = [&unk_282C2BEA8 containsObject:v6];

  if (!v7)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v8 = [a1 resourceSpecifier];
  if (![v8 hasPrefix:@"//"])
  {
LABEL_5:
    v10 = [v8 componentsSeparatedByString:@"?"];
    v11 = [v10 firstObject];
    v12 = [v11 stringByRemovingPercentEncoding];

    if (v12)
    {
      if ([v12 containsString:@"@"])
      {
        if ((dd_handleIsChatBot(v12) ^ 1) != a3)
        {
          goto LABEL_8;
        }
      }

      else if (a3)
      {
        goto LABEL_8;
      }

      v13 = v12;
      goto LABEL_13;
    }

LABEL_8:
    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if ([v8 length] >= 3)
  {
    v9 = [v8 substringFromIndex:2];

    v8 = v9;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

@end