@interface NTKFaceCollectionUpdate
+ (id)updateWithType:(int64_t)type uuid:(id)uuid block:(id)block;
@end

@implementation NTKFaceCollectionUpdate

+ (id)updateWithType:(int64_t)type uuid:(id)uuid block:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  v10 = objc_alloc_init(self);
  v11 = v10[2];
  v10[1] = type;
  v10[2] = uuidCopy;
  v12 = uuidCopy;

  v13 = [blockCopy copy];
  v14 = v10[3];
  v10[3] = v13;

  return v10;
}

@end