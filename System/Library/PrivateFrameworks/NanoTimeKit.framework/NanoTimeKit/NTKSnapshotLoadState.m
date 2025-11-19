@interface NTKSnapshotLoadState
+ (id)failureWithError:(id)a3;
+ (id)loading;
+ (id)pending;
+ (id)successWithImage:(id)a3;
- (NTKSnapshotLoadState)initWithStatus:(unint64_t)a3 image:(id)a4 error:(id)a5;
@end

@implementation NTKSnapshotLoadState

- (NTKSnapshotLoadState)initWithStatus:(unint64_t)a3 image:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NTKSnapshotLoadState;
  v11 = [(NTKSnapshotLoadState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = a3;
    objc_storeStrong(&v11->_image, a4);
    objc_storeStrong(&v12->_error, a5);
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

+ (id)successWithImage:(id)a3
{
  v3 = a3;
  v4 = [[NTKSnapshotLoadState alloc] initWithStatus:2 image:v3 error:0];

  return v4;
}

+ (id)failureWithError:(id)a3
{
  v3 = a3;
  v4 = [[NTKSnapshotLoadState alloc] initWithStatus:3 image:0 error:v3];

  return v4;
}

@end