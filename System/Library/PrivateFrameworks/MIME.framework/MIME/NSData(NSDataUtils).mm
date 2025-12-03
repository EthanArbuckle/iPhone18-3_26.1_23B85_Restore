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
  v5 = [self length] - a3;

  return [self mf_subdataWithRange:{a3, v5}];
}

- (uint64_t)mf_rangeOfData:()NSDataUtils options:range:
{
  v10 = a3;
  v11 = _rangeOfBytes(self, [v10 bytes], objc_msgSend(v10, "length"), a4, a5, a6);

  return v11;
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils
{
  v5 = strlen(__s);
  v6 = [self length];

  return _rangeOfBytes(self, __s, v5, 0, 0, v6);
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils options:
{
  v7 = strlen(__s);
  v8 = [self length];

  return _rangeOfBytes(self, __s, v7, a4, 0, v8);
}

- (uint64_t)mf_rangeOfCString:()NSDataUtils options:range:
{
  v11 = strlen(__s);

  return _rangeOfBytes(self, __s, v11, a4, a5, a6);
}

- (id)mf_locationsOfUnixNewlinesNeedingConversion
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  bytes = [self bytes];
  v4 = [self length];
  if (v4 >= 1)
  {
    v5 = bytes + v4;
    v6 = bytes;
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
        [v2 addIndex:&v7[-bytes]];
      }

      v6 = v8 + 1;
    }

    while ((v8 + 1) < v5);
  }

  return v2;
}

- (MFMutableData)mf_dataByConvertingUnixNewlinesToNetwork
{
  selfCopy = self;
  mf_locationsOfUnixNewlinesNeedingConversion = [(NSData *)self mf_locationsOfUnixNewlinesNeedingConversion];
  if ([mf_locationsOfUnixNewlinesNeedingConversion count])
  {
    v3 = -[MFMutableData initWithCapacity:]([MFMutableData alloc], "initWithCapacity:", [mf_locationsOfUnixNewlinesNeedingConversion count] + -[MFMutableData length](selfCopy, "length"));
    firstIndex = [mf_locationsOfUnixNewlinesNeedingConversion firstIndex];
    bytes = [(MFMutableData *)selfCopy bytes];
    mutableBytes = [(MFMutableData *)v3 mutableBytes];
    v7 = 0;
    do
    {
      v8 = v7;
      v7 = firstIndex;
      v9 = firstIndex - v8;
      memmove(mutableBytes, bytes, firstIndex - v8);
      v10 = &mutableBytes[v9];
      *v10 = 13;
      firstIndex = [mf_locationsOfUnixNewlinesNeedingConversion indexGreaterThanIndex:firstIndex];
      mutableBytes = v10 + 1;
      bytes += v9;
    }

    while (firstIndex != 0x7FFFFFFFFFFFFFFFLL);
    memmove(mutableBytes, bytes, [(MFMutableData *)selfCopy length]- v7);
    -[MFMutableData setLength:](v3, "setLength:", [mf_locationsOfUnixNewlinesNeedingConversion count] + -[MFMutableData length](selfCopy, "length"));
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    selfCopy = v3;
  }

  v11 = selfCopy;

  return selfCopy;
}

@end