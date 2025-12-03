@interface BBBulletin(UniqueKey)
- (id)blt_uniqueKey;
@end

@implementation BBBulletin(UniqueKey)

- (id)blt_uniqueKey
{
  sectionID = [self sectionID];
  publisherMatchID = [self publisherMatchID];
  v4 = [BLTBBBulletinKey bulletinKeyWithSectionID:sectionID publisherMatchID:publisherMatchID];

  return v4;
}

@end