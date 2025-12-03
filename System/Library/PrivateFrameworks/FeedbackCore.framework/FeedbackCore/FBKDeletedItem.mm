@interface FBKDeletedItem
- (FBKDeletedItem)initWithData:(id)data;
- (id)description;
@end

@implementation FBKDeletedItem

- (FBKDeletedItem)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = FBKDeletedItem;
  v5 = [(FBKDeletedItem *)&v10 init];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"id"];
    remoteID = v5->_remoteID;
    v5->_remoteID = v6;

    v8 = [dataCopy objectForKeyedSubscript:@"type"];
    v5->_type = FBKContentItemTypeFromString(v8);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = FBKContentItemTypeToString([(FBKDeletedItem *)self type]);
  remoteID = [(FBKDeletedItem *)self remoteID];
  stringValue = [remoteID stringValue];
  v7 = [v3 stringWithFormat:@"DeletedItem type:%@ ID:%@", v4, stringValue];

  return v7;
}

@end