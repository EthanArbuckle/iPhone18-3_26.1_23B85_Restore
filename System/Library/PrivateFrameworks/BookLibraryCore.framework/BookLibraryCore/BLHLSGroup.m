@interface BLHLSGroup
- (BLHLSGroup)initWithGroupID:(id)a3 media:(id)a4;
- (id)description;
@end

@implementation BLHLSGroup

- (BLHLSGroup)initWithGroupID:(id)a3 media:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BLHLSGroup;
  v8 = [(BLHLSGroup *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    groupID = v8->_groupID;
    v8->_groupID = v9;

    v11 = [v7 copy];
    media = v8->_media;
    v8->_media = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BLHLSGroup *)self groupID];
  v5 = [(BLHLSGroup *)self media];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"GroupID: %@ %@", v4, v6];

  return v7;
}

@end