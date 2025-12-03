@interface BLHLSGroup
- (BLHLSGroup)initWithGroupID:(id)d media:(id)media;
- (id)description;
@end

@implementation BLHLSGroup

- (BLHLSGroup)initWithGroupID:(id)d media:(id)media
{
  dCopy = d;
  mediaCopy = media;
  v14.receiver = self;
  v14.super_class = BLHLSGroup;
  v8 = [(BLHLSGroup *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    groupID = v8->_groupID;
    v8->_groupID = v9;

    v11 = [mediaCopy copy];
    media = v8->_media;
    v8->_media = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  groupID = [(BLHLSGroup *)self groupID];
  media = [(BLHLSGroup *)self media];
  v6 = [media description];
  v7 = [v3 stringWithFormat:@"GroupID: %@ %@", groupID, v6];

  return v7;
}

@end