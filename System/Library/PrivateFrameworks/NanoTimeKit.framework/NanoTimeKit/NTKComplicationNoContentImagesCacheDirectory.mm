@interface NTKComplicationNoContentImagesCacheDirectory
@end

@implementation NTKComplicationNoContentImagesCacheDirectory

void ___NTKComplicationNoContentImagesCacheDirectory_block_invoke()
{
  v0 = NTKCacheDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"ComplicationNoContentImages"];
  v2 = _NTKComplicationNoContentImagesCacheDirectory___path;
  _NTKComplicationNoContentImagesCacheDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:_NTKComplicationNoContentImagesCacheDirectory___path withIntermediateDirectories:1 attributes:0 error:0];
}

@end