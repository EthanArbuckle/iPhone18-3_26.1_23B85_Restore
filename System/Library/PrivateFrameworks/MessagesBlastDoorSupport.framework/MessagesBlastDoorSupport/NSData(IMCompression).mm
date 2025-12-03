@interface NSData(IMCompression)
- (id)_imDecompressData;
- (id)_imOptionallyDecompressData;
@end

@implementation NSData(IMCompression)

- (id)_imDecompressData
{
  v14 = *MEMORY[0x277D85DE8];
  if ([self length] > 0xC800000)
  {
    selfCopy = 0;
    goto LABEL_17;
  }

  if (![self length])
  {
    selfCopy = self;
    goto LABEL_17;
  }

  v3 = [self length];
  v4 = [self length];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:v3 + (v4 >> 1)];
  if (!v5)
  {
    goto LABEL_15;
  }

  memset(&strm.avail_in, 0, 104);
  strm.next_in = [self bytes];
  strm.avail_in = [self length];
  if (inflateInit2_(&strm, 47, "1.2.12", 112))
  {
    goto LABEL_15;
  }

  v6 = v4 >> 1;
  do
  {
    total_out = strm.total_out;
    if (total_out >= [v5 length])
    {
      [v5 increaseLengthBy:v6];
    }

    mutableBytes = [v5 mutableBytes];
    strm.next_out = (mutableBytes + strm.total_out);
    v9 = [v5 length];
    strm.avail_out = v9 - LODWORD(strm.total_out);
    v10 = inflate(&strm, 2);
  }

  while (!v10);
  if (v10 != 1)
  {
    inflateEnd(&strm);
    goto LABEL_15;
  }

  if (inflateEnd(&strm))
  {
LABEL_15:
    selfCopy = 0;
    goto LABEL_16;
  }

  [v5 setLength:strm.total_out];
  selfCopy = [MEMORY[0x277CBEA90] dataWithData:v5];
LABEL_16:

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)_imOptionallyDecompressData
{
  _imDecompressData = [self _imDecompressData];
  v3 = _imDecompressData;
  if (_imDecompressData)
  {
    selfCopy = _imDecompressData;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

@end