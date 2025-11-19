@interface NSBundle(StaticExtraction)
+ (id)ln_uniqueBundleWithPath:()StaticExtraction;
+ (id)ln_uniqueBundleWithURL:()StaticExtraction;
@end

@implementation NSBundle(StaticExtraction)

+ (id)ln_uniqueBundleWithPath:()StaticExtraction
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [[v3 alloc] _initUniqueWithPath:v4];

  return v5;
}

+ (id)ln_uniqueBundleWithURL:()StaticExtraction
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [[v3 alloc] _initUniqueWithURL:v4];

  return v5;
}

@end