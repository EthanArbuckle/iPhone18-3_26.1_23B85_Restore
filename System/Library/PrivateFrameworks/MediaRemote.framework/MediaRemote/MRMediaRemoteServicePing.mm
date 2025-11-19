@interface MRMediaRemoteServicePing
@end

@implementation MRMediaRemoteServicePing

uint64_t ___MRMediaRemoteServicePing_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  v5 = *(*(a1 + 40) + 16);
  v6.n128_u64[0] = v4;

  return v5(v6);
}

@end