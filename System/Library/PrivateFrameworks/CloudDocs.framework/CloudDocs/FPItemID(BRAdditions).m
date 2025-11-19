@interface FPItemID(BRAdditions)
+ (id)br_fpItemIDFromItemIdentifier:()BRAdditions;
@end

@implementation FPItemID(BRAdditions)

+ (id)br_fpItemIDFromItemIdentifier:()BRAdditions
{
  v3 = a3;
  v4 = +[BRFileProviderHelper br_getProviderDomainIDForCurrentPersona];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E6967398]) initWithProviderDomainID:v4 itemIdentifier:v3];
  }

  return v6;
}

@end