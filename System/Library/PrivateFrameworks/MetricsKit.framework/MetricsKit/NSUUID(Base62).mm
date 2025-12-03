@interface NSUUID(Base62)
- (id)mt_base62String;
@end

@implementation NSUUID(Base62)

- (id)mt_base62String
{
  v10 = *MEMORY[0x277D85DE8];
  [self getUUIDBytes:v9];
  v1 = 0;
  v2 = v8;
  do
  {
    v3 = v9[v1];
    for (i = 5; i != -1; --i)
    {
      v2[i] = _base62Chars[v3 % 0x3E];
      v3 /= 0x3Eu;
    }

    ++v1;
    v2 += 6;
  }

  while (v1 != 4);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:24 encoding:4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end