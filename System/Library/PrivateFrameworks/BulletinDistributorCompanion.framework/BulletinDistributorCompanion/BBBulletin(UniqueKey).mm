@interface BBBulletin(UniqueKey)
- (id)blt_uniqueKey;
@end

@implementation BBBulletin(UniqueKey)

- (id)blt_uniqueKey
{
  v2 = [a1 sectionID];
  v3 = [a1 publisherMatchID];
  v4 = [BLTBBBulletinKey bulletinKeyWithSectionID:v2 publisherMatchID:v3];

  return v4;
}

@end