@interface NSData(HealthRecordServices)
- (id)hk_base45Encoded;
- (id)hk_zlibCompressedIncludingHeaderAndTrailer:()HealthRecordServices errorOut:;
@end

@implementation NSData(HealthRecordServices)

- (id)hk_base45Encoded
{
  v2 = [self length];
  v3 = malloc_type_malloc(3 * (v2 >> 1) + 2 * (v2 & 1) + 1, 0x100004077774924uLL);
  if (v3)
  {
    v4 = v3;
    bytes = [self bytes];
    if (v2)
    {
      LODWORD(v6) = 0;
      for (i = 0; i < v2; i += 2)
      {
        v8 = &v4[v6];
        if (i + 1 >= v2)
        {
          v12 = (((*(bytes + i) - ((109 * *(bytes + i)) >> 8)) >> 1) + ((109 * *(bytes + i)) >> 8)) >> 5;
          *v8 = hk_base45Encoded_characterSet[(*(bytes + i) - 45 * v12)];
          LODWORD(v6) = v6 + 2;
          v8[1] = hk_base45Encoded_characterSet[v12];
        }

        else
        {
          v9 = _byteswap_ushort(*(bytes + i));
          v10 = (((v9 - ((745 * v9) >> 16)) >> 1) + ((745 * v9) >> 16)) >> 10;
          v11 = v9 - 2025 * v10;
          *v8 = hk_base45Encoded_characterSet[v11 % 0x2Du];
          v8[1] = hk_base45Encoded_characterSet[v11 / 0x2Du];
          LODWORD(v6) = v6 + 3;
          v8[2] = hk_base45Encoded_characterSet[v10];
        }
      }

      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    v4[v6] = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    free(v4);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)hk_zlibCompressedIncludingHeaderAndTrailer:()HealthRecordServices errorOut:
{
  v5 = [self compressedDataUsingAlgorithm:3 error:?];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = adler32(0, 0, 0);
      v10 = bswap32(adler32(v7, [self bytes], objc_msgSend(self, "length")));
      data = [MEMORY[0x277CBEB28] data];
      [data appendBytes:&hk_zlibCompressedIncludingHeaderAndTrailer_errorOut__defaultCompression length:2];
      [data appendData:v6];
      [data appendBytes:&v10 length:4];
    }

    else
    {
      data = v5;
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

@end