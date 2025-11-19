@interface FBSBundleInfo
@end

@implementation FBSBundleInfo

void __44__FBSBundleInfo_CarPlayApp__iconWithFormat___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = iconWithFormat__iconCache;
  iconWithFormat__iconCache = v0;

  [iconWithFormat__iconCache setName:@"FBBundleInfo+CarPlayApp"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
}

@end