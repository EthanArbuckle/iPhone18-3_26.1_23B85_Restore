@interface NSString(BusinessChatService)
- (id)prefixedBizID;
- (id)stringByRemovingOccurancesOfCharacter:()BusinessChatService fromPosition:;
- (uint64_t)isBusinessID;
@end

@implementation NSString(BusinessChatService)

- (id)prefixedBizID
{
  if ([a1 isBusinessID])
  {
    v2 = [a1 copy];
  }

  else
  {
    v2 = [@"urn:biz:" stringByAppendingString:a1];
  }

  return v2;
}

- (uint64_t)isBusinessID
{
  v1 = [a1 lowercaseString];
  v2 = [v1 hasPrefix:@"urn:biz:"];

  return v2;
}

- (id)stringByRemovingOccurancesOfCharacter:()BusinessChatService fromPosition:
{
  v6 = a3;
  if ([a1 length])
  {
    v7 = [a1 copy];
    v8 = v7;
    if (a4)
    {
      v9 = [v7 length] - 1;
    }

    else
    {
      v9 = 0;
    }

    while (1)
    {
      v11 = [v8 substringWithRange:{v9, 1}];
      if (![v11 isEqualToString:v6])
      {
        break;
      }

      v10 = [v8 stringByReplacingOccurrencesOfString:v6 withString:&stru_28544C2A0 options:2 range:{v9, 1}];

      if (a4)
      {
        v9 = [v10 length] - 1;
      }

      else
      {
        v9 = 0;
      }

      v8 = v10;
      if (![v10 length])
      {
        goto LABEL_13;
      }
    }

    v10 = v8;
  }

  else
  {
    v10 = a1;
  }

LABEL_13:

  return v10;
}

@end