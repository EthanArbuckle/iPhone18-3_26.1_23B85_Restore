@interface EMInternalMessageID
- (EMInternalMessageID)initWithDatabaseID:(int64_t)a3 externalID:(id)a4;
@end

@implementation EMInternalMessageID

- (EMInternalMessageID)initWithDatabaseID:(int64_t)a3 externalID:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = EMInternalMessageID;
  v7 = [(EMInternalMessageID *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_databaseID = a3;
    v9 = [v6 copy];
    externalID = v8->_externalID;
    v8->_externalID = v9;
  }

  return v8;
}

@end