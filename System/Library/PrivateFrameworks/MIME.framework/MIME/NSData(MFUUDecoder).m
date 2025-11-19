@interface NSData(MFUUDecoder)
- (id)mf_decodeUuencoded;
- (size_t)_uudecoded_large;
- (uint64_t)_uudecoded_large;
- (uint64_t)_uudecoded_small;
@end

@implementation NSData(MFUUDecoder)

- (id)mf_decodeUuencoded
{
  if (a1 && vcvtpd_u64_f64([(NSData *)a1 length]* 0.74 + 100.0) > 0x20000)
  {
    v2 = [(NSData *)a1 _uudecoded_large];
  }

  else
  {
    v2 = [(NSData *)a1 _uudecoded_small];
  }

  return v2;
}

- (uint64_t)_uudecoded_small
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_uudecoded_large
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (size_t)_uudecoded_large
{
  v2 = *(a1 + 8);
  result = fwrite(__ptr, 0x2DuLL, 1uLL, *(v2 + 16));
  *(v2 + 24) += 45;
  return result;
}

@end