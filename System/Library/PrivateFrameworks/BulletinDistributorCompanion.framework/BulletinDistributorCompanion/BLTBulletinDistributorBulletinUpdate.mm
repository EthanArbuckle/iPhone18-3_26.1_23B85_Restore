@interface BLTBulletinDistributorBulletinUpdate
+ (id)bulletinUpdateWithType:(unint64_t)a3 bulletin:(id)a4 feed:(unint64_t)a5;
@end

@implementation BLTBulletinDistributorBulletinUpdate

+ (id)bulletinUpdateWithType:(unint64_t)a3 bulletin:(id)a4 feed:(unint64_t)a5
{
  v7 = a4;
  v8 = objc_alloc_init(BLTBulletinDistributorBulletinUpdate);
  [(BLTBulletinDistributorBulletinUpdate *)v8 setUpdateType:a3];
  [(BLTBulletinDistributorBulletinUpdate *)v8 setBulletin:v7];

  [(BLTBulletinDistributorBulletinUpdate *)v8 setFeed:a5];

  return v8;
}

@end