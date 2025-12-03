@interface ICThumbnailGenerator
- (ICThumbnailGenerator)initWithManagedObjectContext:(id)context;
@end

@implementation ICThumbnailGenerator

- (ICThumbnailGenerator)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICThumbnailGenerator;
  v6 = [(ICThumbnailGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managedObjectContext, context);
  }

  return v7;
}

@end