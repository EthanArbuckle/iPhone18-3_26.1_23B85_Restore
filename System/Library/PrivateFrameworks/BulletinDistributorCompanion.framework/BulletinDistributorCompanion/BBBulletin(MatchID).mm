@interface BBBulletin(MatchID)
- (id)sectionMatchID;
- (uint64_t)matchesPublisherBulletinID:()MatchID andRecordID:;
@end

@implementation BBBulletin(MatchID)

- (id)sectionMatchID
{
  universalSectionID = [self universalSectionID];
  v3 = universalSectionID;
  if (universalSectionID)
  {
    sectionID = universalSectionID;
  }

  else
  {
    sectionID = [self sectionID];
  }

  v5 = sectionID;

  return v5;
}

- (uint64_t)matchesPublisherBulletinID:()MatchID andRecordID:
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a4;
  }

  v8 = v7;
  v9 = a4;
  v10 = a3;
  publisherMatchID = [self publisherMatchID];
  v12 = [publisherMatchID isEqualToString:v8];

  return v12;
}

@end