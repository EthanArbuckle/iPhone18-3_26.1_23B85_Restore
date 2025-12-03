@interface PBUIPosterPortalImageProvider
- (PBUIPosterPortalImageProvider)initWithRootObject:(id)object;
@end

@implementation PBUIPosterPortalImageProvider

- (PBUIPosterPortalImageProvider)initWithRootObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PBUIPosterPortalImageProvider;
  v6 = [(PBUIPosterPortalImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootObject, object);
  }

  return v7;
}

@end