@interface NTKSnapshotLoadState
+ (id)failureWithError:(id)error;
+ (id)loading;
+ (id)pending;
+ (id)successWithImage:(id)image;
- (NTKSnapshotLoadState)initWithStatus:(unint64_t)status image:(id)image error:(id)error;
@end

@implementation NTKSnapshotLoadState

- (NTKSnapshotLoadState)initWithStatus:(unint64_t)status image:(id)image error:(id)error
{
  imageCopy = image;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = NTKSnapshotLoadState;
  v11 = [(NTKSnapshotLoadState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    objc_storeStrong(&v11->_image, image);
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

+ (id)pending
{
  v2 = [[NTKSnapshotLoadState alloc] initWithStatus:0 image:0 error:0];

  return v2;
}

+ (id)loading
{
  v2 = [[NTKSnapshotLoadState alloc] initWithStatus:1 image:0 error:0];

  return v2;
}

+ (id)successWithImage:(id)image
{
  imageCopy = image;
  v4 = [[NTKSnapshotLoadState alloc] initWithStatus:2 image:imageCopy error:0];

  return v4;
}

+ (id)failureWithError:(id)error
{
  errorCopy = error;
  v4 = [[NTKSnapshotLoadState alloc] initWithStatus:3 image:0 error:errorCopy];

  return v4;
}

@end