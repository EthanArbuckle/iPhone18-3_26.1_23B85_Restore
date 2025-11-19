@interface NSData(NNMKCompression)
- (id)compressedData;
- (id)decompressedData;
@end

@implementation NSData(NNMKCompression)

- (id)compressedData
{
  if ([a1 length])
  {
    memset(&v7.total_out, 0, 72);
    v7.avail_in = [a1 length];
    v2 = 0;
    if (!deflateInit2_(&v7, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x4000];
      do
      {
        total_out = v7.total_out;
        if (total_out >= [v2 length])
        {
          [v2 increaseLengthBy:0x4000];
        }

        v4 = [v2 mutableBytes];
        v7.next_out = (v4 + v7.total_out);
        v5 = [v2 length];
        v7.avail_out = v5 - LODWORD(v7.total_out);
        deflate(&v7, 4);
      }

      while (!v7.avail_out);
      deflateEnd(&v7);
      [v2 setLength:v7.total_out];
    }
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)decompressedData
{
  if (![a1 length])
  {
    v11 = a1;
    goto LABEL_14;
  }

  v2 = [a1 length];
  v3 = [a1 length];
  v4 = v3 + (v3 >> 31);
  v5 = [MEMORY[0x277CBEB28] dataWithLength:(v2 + v3 / 2)];
  v13.avail_in = [a1 length];
  v13.zalloc = 0;
  v13.zfree = 0;
  v13.total_out = 0;
  if (inflateInit2_(&v13, 47, "1.2.12", 112))
  {
    goto LABEL_12;
  }

  v6 = (v4 >> 1);
  do
  {
    total_out = v13.total_out;
    if (total_out >= [v5 length])
    {
      [v5 increaseLengthBy:v6];
    }

    v8 = [v5 mutableBytes];
    v13.next_out = (v8 + v13.total_out);
    v9 = [v5 length];
    v13.avail_out = v9 - LODWORD(v13.total_out);
    v10 = inflate(&v13, 2);
  }

  while (!v10);
  if (v10 != 1)
  {
    inflateEnd(&v13);
    goto LABEL_12;
  }

  if (inflateEnd(&v13))
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  [v5 setLength:v13.total_out];
  v11 = [MEMORY[0x277CBEA90] dataWithData:v5];
LABEL_13:

LABEL_14:

  return v11;
}

@end