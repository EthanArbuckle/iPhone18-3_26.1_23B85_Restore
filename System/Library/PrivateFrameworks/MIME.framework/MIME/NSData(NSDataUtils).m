@interface NSData(NSDataUtils)
- (MFMutableData)mf_dataByConvertingUnixNewlinesToNetwork;
- (id)mf_locationsOfUnixNewlinesNeedingConversion;
- (uint64_t)mf_rangeOfCString:()NSDataUtils;
- (uint64_t)mf_rangeOfCString:()NSDataUtils options:;
- (uint64_t)mf_rangeOfCString:()NSDataUtils options:range:;
- (uint64_t)mf_rangeOfData:()NSDataUtils options:range:;
- (uint64_t)mf_subdataFromIndex:()NSDataUtils;
@end

@implementation NSData(NSDataUtils)

- (uint64_t)mf_subdataFromIndex:()NSDataUtils
{
  v5 = [a1 length] - a3;

  return [a1 mf_subdataWithRange:{a3, v5}];
}

- (uint64_t)mf_rangeOfData:()NSDataUtils options:range:
{
  v10 = a3;
  v11 = _rangeOfBytes(a1, [v10 bytes], objc_msgSend(v10, "length"), a4, a5, a6);

  return v11;
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils
{
  v5 = strlen(__s);
  v6 = [a1 length];

  return _rangeOfBytes(a1, __s, v5, 0, 0, v6);
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils options:
{
  v7 = strlen(__s);
  v8 = [a1 length];

  return _rangeOfBytes(a1, __s, v7, a4, 0, v8);
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils options:range:
{
  v11 = strlen(__s);

  return _rangeOfBytes(a1, __s, v11, a4, a5, a6);
}

- (id)mf_locationsOfUnixNewlinesNeedingConversion
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = [a1 bytes];
  v4 = [a1 length];
  if (v4 >= 1)
  {
    v5 = v3 + v4;
    v6 = v3;
    do
    {
      v7 = memchr(v6, 10, v5 - v6);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      if (v6 >= v7 || *(v7 - 1) != 13)
      {
        [v2 addIndex:&v7[-v3]];
      }

      v6 = v8 + 1;
    }

    while ((v8 + 1) < v5);
  }

  return v2;
}

- (MFMutableData)mf_dataByConvertingUnixNewlinesToNetwork
{
  v1 = a1;
  v2 = [(NSData *)a1 mf_locationsOfUnixNewlinesNeedingConversion];
  if ([v2 count])
  {
    v3 = -[MFMutableData initWithCapacity:]([MFMutableData alloc], "initWithCapacity:", [v2 count] + -[MFMutableData length](v1, "length"));
    v4 = [v2 firstIndex];
    v5 = [(MFMutableData *)v1 bytes];
    v6 = [(MFMutableData *)v3 mutableBytes];
    v7 = 0;
    do
    {
      v8 = v7;
      v7 = v4;
      v9 = v4 - v8;
      memmove(v6, v5, v4 - v8);
      v10 = &v6[v9];
      *v10 = 13;
      v4 = [v2 indexGreaterThanIndex:v4];
      v6 = v10 + 1;
      v5 += v9;
    }

    while (v4 != 0x7FFFFFFFFFFFFFFFLL);
    memmove(v6, v5, [(MFMutableData *)v1 length]- v7);
    -[MFMutableData setLength:](v3, "setLength:", [v2 count] + -[MFMutableData length](v1, "length"));
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v1 = v3;
  }

  v11 = v1;

  return v1;
}

@end