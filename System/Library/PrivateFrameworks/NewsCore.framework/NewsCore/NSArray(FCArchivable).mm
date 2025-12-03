@interface NSArray(FCArchivable)
- (FCContentManifest)contentManifest;
- (id)contentArchive;
@end

@implementation NSArray(FCArchivable)

- (id)contentArchive
{
  v1 = [self fc_arrayByTransformingWithBlock:&__block_literal_global_178];
  v2 = [FCContentArchive archiveWithChildArchives:v1];

  return v2;
}

- (FCContentManifest)contentManifest
{
  v2 = [FCContentManifest alloc];
  v3 = [self fc_arrayByTransformingWithBlock:&__block_literal_global_9_2];
  v4 = [(FCContentManifest *)v2 initWithManifests:v3];

  return v4;
}

@end