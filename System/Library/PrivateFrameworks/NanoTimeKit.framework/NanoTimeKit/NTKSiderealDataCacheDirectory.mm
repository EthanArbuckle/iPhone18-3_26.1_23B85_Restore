@interface NTKSiderealDataCacheDirectory
@end

@implementation NTKSiderealDataCacheDirectory

void ___NTKSiderealDataCacheDirectory_block_invoke()
{
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"SiderealData"];
  v2 = _NTKSiderealDataCacheDirectory___path;
  _NTKSiderealDataCacheDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:_NTKSiderealDataCacheDirectory___path withIntermediateDirectories:1 attributes:0 error:0];
}

@end