@interface BLTBulletinDistributorBulletinUpdate
+ (id)bulletinUpdateWithType:(unint64_t)type bulletin:(id)bulletin feed:(unint64_t)feed;
@end

@implementation BLTBulletinDistributorBulletinUpdate

+ (id)bulletinUpdateWithType:(unint64_t)type bulletin:(id)bulletin feed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  v8 = objc_alloc_init(BLTBulletinDistributorBulletinUpdate);
  [(BLTBulletinDistributorBulletinUpdate *)v8 setUpdateType:type];
  [(BLTBulletinDistributorBulletinUpdate *)v8 setBulletin:bulletinCopy];

  [(BLTBulletinDistributorBulletinUpdate *)v8 setFeed:feed];

  return v8;
}

@end