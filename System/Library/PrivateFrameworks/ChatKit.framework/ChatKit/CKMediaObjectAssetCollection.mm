@interface CKMediaObjectAssetCollection
- (id)localizedDateDescriptionWithOptions:(unint64_t)options;
@end

@implementation CKMediaObjectAssetCollection

- (id)localizedDateDescriptionWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKMediaObjectAssetDataSource.m" lineNumber:64 description:@"not implemented yet"];

  abort();
}

@end