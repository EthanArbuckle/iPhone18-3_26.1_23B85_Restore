@interface BBBulletinModifyUpdate
+ (id)updateWithBulletin:(id)bulletin feeds:(unint64_t)feeds;
@end

@implementation BBBulletinModifyUpdate

+ (id)updateWithBulletin:(id)bulletin feeds:(unint64_t)feeds
{
  bulletinCopy = bulletin;
  v7 = [[self alloc] initWithBulletin:bulletinCopy feeds:feeds];

  return v7;
}

@end