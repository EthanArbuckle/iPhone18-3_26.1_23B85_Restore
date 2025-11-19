@interface BAMetadataStorePersistentContainer
+ (id)defaultDirectoryURL;
+ (id)persistentContainer;
- (BAMetadataStorePersistentContainer)init;
@end

@implementation BAMetadataStorePersistentContainer

+ (id)persistentContainer
{
  v2 = objc_alloc_init(BAMetadataStorePersistentContainer);

  return v2;
}

- (BAMetadataStorePersistentContainer)init
{
  v3.receiver = self;
  v3.super_class = BAMetadataStorePersistentContainer;
  return [(BAMetadataStorePersistentContainer *)&v3 initWithName:@"BookMetadataStore"];
}

+ (id)defaultDirectoryURL
{
  v2 = +[NSURL bu_booksRepositoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"MetadataStore"];

  return v3;
}

@end