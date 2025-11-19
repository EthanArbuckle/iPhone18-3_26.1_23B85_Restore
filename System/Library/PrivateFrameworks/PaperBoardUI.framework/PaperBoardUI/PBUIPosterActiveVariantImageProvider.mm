@interface PBUIPosterActiveVariantImageProvider
- (PBUIPosterActiveVariantImageProvider)initWithRootObject:(id)a3;
@end

@implementation PBUIPosterActiveVariantImageProvider

- (PBUIPosterActiveVariantImageProvider)initWithRootObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBUIPosterActiveVariantImageProvider;
  v6 = [(PBUIPosterActiveVariantImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, a3);
  }

  return v7;
}

@end