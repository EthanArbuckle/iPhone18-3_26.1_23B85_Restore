@interface PBUIPosterActiveVariantImageProvider
- (PBUIPosterActiveVariantImageProvider)initWithRootObject:(id)object;
@end

@implementation PBUIPosterActiveVariantImageProvider

- (PBUIPosterActiveVariantImageProvider)initWithRootObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PBUIPosterActiveVariantImageProvider;
  v6 = [(PBUIPosterActiveVariantImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, object);
  }

  return v7;
}

@end