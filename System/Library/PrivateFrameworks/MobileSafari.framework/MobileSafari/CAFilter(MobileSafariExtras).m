@interface CAFilter(MobileSafariExtras)
+ (id)safari_gaussianBlurWithRadius:()MobileSafariExtras normalizeEdges:;
@end

@implementation CAFilter(MobileSafariExtras)

+ (id)safari_gaussianBlurWithRadius:()MobileSafariExtras normalizeEdges:
{
  v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  [v6 setValue:v7 forKey:*MEMORY[0x1E6979B78]];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  [v6 setValue:v8 forKey:*MEMORY[0x1E6979BA8]];

  return v6;
}

@end