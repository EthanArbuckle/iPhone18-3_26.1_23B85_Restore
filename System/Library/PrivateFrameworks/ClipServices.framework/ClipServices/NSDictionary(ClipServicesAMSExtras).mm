@interface NSDictionary(ClipServicesAMSExtras)
- (double)maxAge;
@end

@implementation NSDictionary(ClipServicesAMSExtras)

- (double)maxAge
{
  v1 = [self objectForKey:@"Cache-Control"];
  if (v1)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [v1 componentsSeparatedByString:{@", "}];
    v4 = [v3 count];
    v5 = 0.0;
    if (v4)
    {
      v6 = v4;
      v16 = v1;
      v7 = 0;
      while (1)
      {
        v8 = [v3 objectAtIndex:v7];
        v9 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v10 = [v9 componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndex:0];
          v12 = [v11 hasPrefix:@"max-age"];

          if (v12)
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_10;
        }
      }

      v13 = [v10 objectAtIndex:1];
      [v13 doubleValue];
      v5 = v14;

LABEL_10:
      v1 = v16;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end