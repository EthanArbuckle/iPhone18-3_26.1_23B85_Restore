@interface NSData(MFUUDecoder)
- (id)mf_decodeUuencoded;
- (size_t)_uudecoded_large;
- (uint64_t)_uudecoded_large;
- (uint64_t)_uudecoded_small;
@end

@implementation NSData(MFUUDecoder)

- (id)mf_decodeUuencoded
{
  if (self && vcvtpd_u64_f64([(NSData *)self length]* 0.74 + 100.0) > 0x20000)
  {
    _uudecoded_large = [(NSData *)self _uudecoded_large];
  }

  else
  {
    _uudecoded_large = [(NSData *)self _uudecoded_small];
  }

  return _uudecoded_large;
}

- (uint64_t)_uudecoded_small
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_uudecoded_large
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (size_t)_uudecoded_large
{
  v2 = *(self + 8);
  result = fwrite(__ptr, 0x2DuLL, 1uLL, *(v2 + 16));
  *(v2 + 24) += 45;
  return result;
}

@end