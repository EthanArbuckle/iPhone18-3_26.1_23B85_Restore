@interface FBKDeletedItem
- (FBKDeletedItem)initWithData:(id)a3;
- (id)description;
@end

@implementation FBKDeletedItem

- (FBKDeletedItem)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FBKDeletedItem;
  v5 = [(FBKDeletedItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    remoteID = v5->_remoteID;
    v5->_remoteID = v6;

    v8 = [v4 objectForKeyedSubscript:@"type"];
    v5->_type = FBKContentItemTypeFromString(v8);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = FBKContentItemTypeToString([(FBKDeletedItem *)self type]);
  v5 = [(FBKDeletedItem *)self remoteID];
  v6 = [v5 stringValue];
  v7 = [v3 stringWithFormat:@"DeletedItem type:%@ ID:%@", v4, v6];

  return v7;
}

@end