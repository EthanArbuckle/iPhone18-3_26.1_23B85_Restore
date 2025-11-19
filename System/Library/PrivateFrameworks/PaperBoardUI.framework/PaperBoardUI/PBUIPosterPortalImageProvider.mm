@interface PBUIPosterPortalImageProvider
- (PBUIPosterPortalImageProvider)initWithRootObject:(id)a3;
@end

@implementation PBUIPosterPortalImageProvider

- (PBUIPosterPortalImageProvider)initWithRootObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PBUIPosterPortalImageProvider;
  v6 = [(PBUIPosterPortalImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, a3);
  }

  return v7;
}

@end