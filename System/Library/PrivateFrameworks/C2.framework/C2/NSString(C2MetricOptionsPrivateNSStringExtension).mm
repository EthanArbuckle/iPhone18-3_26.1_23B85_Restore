@interface NSString(C2MetricOptionsPrivateNSStringExtension)
- (int8x8_t)c2UniformlyDistributedIdentifier;
@end

@implementation NSString(C2MetricOptionsPrivateNSStringExtension)

- (int8x8_t)c2UniformlyDistributedIdentifier
{
  v10 = *MEMORY[0x277D85DE8];
  *md = 0u;
  v9 = 0u;
  v1 = [self dataUsingEncoding:4];
  if (!v1)
  {
    [NSString(C2MetricOptionsPrivateNSStringExtension) c2UniformlyDistributedIdentifier];
  }

  v2 = v1;
  if (![v1 length])
  {
    [NSString(C2MetricOptionsPrivateNSStringExtension) c2UniformlyDistributedIdentifier];
  }

  CC_SHA256([v2 bytes], objc_msgSend(v2, "length"), md);
  v6 = *md;
  v7 = v9;

  v3 = *MEMORY[0x277D85DE8];
  v4 = veorq_s8(v6, v7);
  return veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

@end