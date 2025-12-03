@interface NSString(TSDKVCKeyPathAdditions)
- (__CFString)tsu_keyPathByRemovingFirstKey;
- (__CFString)tsu_keyPathByRemovingLastKey;
- (id)tsu_firstKey;
- (id)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions;
- (id)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions;
- (id)tsu_lastKey;
- (uint64_t)tsu_numberOfKeysInKeyPath;
@end

@implementation NSString(TSDKVCKeyPathAdditions)

- (__CFString)tsu_keyPathByRemovingLastKey
{
  v2 = [self rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [self substringToIndex:v2];
  }

  return v3;
}

- (__CFString)tsu_keyPathByRemovingFirstKey
{
  v2 = [self rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [self substringFromIndex:v2 + 1];
  }

  return v3;
}

- (id)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions
{
  v4 = a3;
  if ([self length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v4, self];
      goto LABEL_7;
    }

    selfCopy = self;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = v4;
  }

  v7 = [v6 stringWithString:selfCopy];
LABEL_7:
  v9 = v7;

  return v9;
}

- (id)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions
{
  v4 = a3;
  if ([self length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", self, v4];
      goto LABEL_7;
    }

    selfCopy = self;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = v4;
  }

  v7 = [v6 stringWithString:selfCopy];
LABEL_7:
  v9 = v7;

  return v9;
}

- (id)tsu_firstKey
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@"." options:2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [selfCopy substringToIndex:v2];

    selfCopy = v3;
  }

  return selfCopy;
}

- (id)tsu_lastKey
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@"." options:6];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [selfCopy substringFromIndex:v2 + 1];

    selfCopy = v3;
  }

  return selfCopy;
}

- (uint64_t)tsu_numberOfKeysInKeyPath
{
  v2 = [self length];
  v3 = 0;
  v4 = 0;
  v5 = v2;
  do
  {
    v6 = [self rangeOfString:@"." options:2 range:{v3, v5}];
    ++v4;
    v3 = v6 + v7;
    v5 = v2 - (v6 + v7);
  }

  while (v6 + v7 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

@end