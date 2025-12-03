@interface NSString(BusinessChatService)
- (id)prefixedBizID;
- (id)stringByRemovingOccurancesOfCharacter:()BusinessChatService fromPosition:;
- (uint64_t)isBusinessID;
@end

@implementation NSString(BusinessChatService)

- (id)prefixedBizID
{
  if ([self isBusinessID])
  {
    v2 = [self copy];
  }

  else
  {
    v2 = [@"urn:biz:" stringByAppendingString:self];
  }

  return v2;
}

- (uint64_t)isBusinessID
{
  lowercaseString = [self lowercaseString];
  v2 = [lowercaseString hasPrefix:@"urn:biz:"];

  return v2;
}

- (id)stringByRemovingOccurancesOfCharacter:()BusinessChatService fromPosition:
{
  v6 = a3;
  if ([self length])
  {
    v7 = [self copy];
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

      selfCopy = [v8 stringByReplacingOccurrencesOfString:v6 withString:&stru_28544C2A0 options:2 range:{v9, 1}];

      if (a4)
      {
        v9 = [selfCopy length] - 1;
      }

      else
      {
        v9 = 0;
      }

      v8 = selfCopy;
      if (![selfCopy length])
      {
        goto LABEL_13;
      }
    }

    selfCopy = v8;
  }

  else
  {
    selfCopy = self;
  }

LABEL_13:

  return selfCopy;
}

@end