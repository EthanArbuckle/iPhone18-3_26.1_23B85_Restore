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
  v2 = [a1 rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

- (__CFString)tsu_keyPathByRemovingFirstKey
{
  v2 = [a1 rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [a1 substringFromIndex:v2 + 1];
  }

  return v3;
}

- (id)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v4, a1];
      goto LABEL_7;
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = v4;
  }

  v7 = [v6 stringWithString:v8];
LABEL_7:
  v9 = v7;

  return v9;
}

- (id)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions
{
  v4 = a3;
  if ([a1 length])
  {
    v5 = [v4 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a1, v4];
      goto LABEL_7;
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = v4;
  }

  v7 = [v6 stringWithString:v8];
LABEL_7:
  v9 = v7;

  return v9;
}

- (id)tsu_firstKey
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"." options:2];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringToIndex:v2];

    v1 = v3;
  }

  return v1;
}

- (id)tsu_lastKey
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"." options:6];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringFromIndex:v2 + 1];

    v1 = v3;
  }

  return v1;
}

- (uint64_t)tsu_numberOfKeysInKeyPath
{
  v2 = [a1 length];
  v3 = 0;
  v4 = 0;
  v5 = v2;
  do
  {
    v6 = [a1 rangeOfString:@"." options:2 range:{v3, v5}];
    ++v4;
    v3 = v6 + v7;
    v5 = v2 - (v6 + v7);
  }

  while (v6 + v7 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

@end