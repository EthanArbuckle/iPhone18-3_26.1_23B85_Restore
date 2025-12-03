@interface EMInternalMessageID
- (EMInternalMessageID)initWithDatabaseID:(int64_t)d externalID:(id)iD;
@end

@implementation EMInternalMessageID

- (EMInternalMessageID)initWithDatabaseID:(int64_t)d externalID:(id)iD
{
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = EMInternalMessageID;
  v7 = [(EMInternalMessageID *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_databaseID = d;
    v9 = [iDCopy copy];
    externalID = v8->_externalID;
    v8->_externalID = v9;
  }

  return v8;
}

@end