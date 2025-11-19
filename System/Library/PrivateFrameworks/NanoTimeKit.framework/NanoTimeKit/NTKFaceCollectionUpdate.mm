@interface NTKFaceCollectionUpdate
+ (id)updateWithType:(int64_t)a3 uuid:(id)a4 block:(id)a5;
@end

@implementation NTKFaceCollectionUpdate

+ (id)updateWithType:(int64_t)a3 uuid:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = v10[2];
  v10[1] = a3;
  v10[2] = v8;
  v12 = v8;

  v13 = [v9 copy];
  v14 = v10[3];
  v10[3] = v13;

  return v10;
}

@end