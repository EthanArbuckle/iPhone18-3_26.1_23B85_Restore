@interface CKiCloudSyncStateModel
- (CKiCloudSyncStateModel)init;
@end

@implementation CKiCloudSyncStateModel

- (CKiCloudSyncStateModel)init
{
  v3.receiver = self;
  v3.super_class = CKiCloudSyncStateModel;
  return [(CKiCloudSyncStateModel *)&v3 init];
}

@end