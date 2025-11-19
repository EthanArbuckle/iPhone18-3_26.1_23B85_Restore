@interface SouthernHemisphereImage
@end

@implementation SouthernHemisphereImage

uint64_t ___SouthernHemisphereImage_block_invoke(int a1, id a2)
{
  v2 = MEMORY[0x277D755B8];
  v3 = a2;
  v4 = [v3 CGImage];
  [v3 scale];
  v6 = v5;

  return [v2 imageWithCGImage:v4 scale:1 orientation:v6];
}

@end