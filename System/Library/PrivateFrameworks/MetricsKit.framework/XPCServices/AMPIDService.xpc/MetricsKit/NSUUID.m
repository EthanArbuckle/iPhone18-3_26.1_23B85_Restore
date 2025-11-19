@interface NSUUID
- (id)mt_base62String;
@end

@implementation NSUUID

- (id)mt_base62String
{
  [(NSUUID *)self getUUIDBytes:v9];
  v2 = 0;
  v3 = v8;
  do
  {
    v4 = v9[v2];
    for (i = 5; i != -1; --i)
    {
      v3[i] = aAbcdefghijklmn[v4 % 0x3E];
      v4 /= 0x3Eu;
    }

    ++v2;
    v3 += 6;
  }

  while (v2 != 4);
  v6 = [[NSString alloc] initWithBytes:v8 length:24 encoding:4];

  return v6;
}

@end