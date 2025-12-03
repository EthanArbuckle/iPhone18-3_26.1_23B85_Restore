@interface MADPhotosTaskContext
- (MADPhotosTaskContext)initWithTaskUUID:(id)d;
@end

@implementation MADPhotosTaskContext

- (MADPhotosTaskContext)initWithTaskUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MADPhotosTaskContext;
  v6 = [(MADPhotosTaskContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskUUID, d);
  }

  return v7;
}

@end