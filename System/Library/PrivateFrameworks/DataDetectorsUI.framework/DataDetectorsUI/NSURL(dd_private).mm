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
    host = [self host];
    lowercaseString = [host lowercaseString];
    v13 = [v8 containsObject:lowercaseString];

    if (v13)
    {
      if (!v9 || !v10)
      {
        goto LABEL_9;
      }

      absoluteString = [self absoluteString];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=", v9];
      if ([absoluteString rangeOfString:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_9:
        v19 = 1;
        goto LABEL_10;
      }

      absoluteString2 = [self absoluteString];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v9, v10];
      v18 = [absoluteString2 rangeOfString:v17];

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
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];
  v7 = [&unk_282C2BEA8 containsObject:lowercaseString];

  if (!v7)
  {
    v13 = 0;
    goto LABEL_15;
  }

  resourceSpecifier = [self resourceSpecifier];
  if (![resourceSpecifier hasPrefix:@"//"])
  {
LABEL_5:
    v10 = [resourceSpecifier componentsSeparatedByString:@"?"];
    firstObject = [v10 firstObject];
    stringByRemovingPercentEncoding = [firstObject stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      if ([stringByRemovingPercentEncoding containsString:@"@"])
      {
        if ((dd_handleIsChatBot(stringByRemovingPercentEncoding) ^ 1) != a3)
        {
          goto LABEL_8;
        }
      }

      else if (a3)
      {
        goto LABEL_8;
      }

      v13 = stringByRemovingPercentEncoding;
      goto LABEL_13;
    }

LABEL_8:
    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if ([resourceSpecifier length] >= 3)
  {
    v9 = [resourceSpecifier substringFromIndex:2];

    resourceSpecifier = v9;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

@end