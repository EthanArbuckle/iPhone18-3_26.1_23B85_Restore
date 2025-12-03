@interface EMOrderedMessageIDData
- (EMOrderedMessageIDData)initWithObjectIDs:(id)ds objectIDByPersistentID:(id)d;
@end

@implementation EMOrderedMessageIDData

- (EMOrderedMessageIDData)initWithObjectIDs:(id)ds objectIDByPersistentID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = EMOrderedMessageIDData;
  v8 = [(EMOrderedMessageIDData *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    objectIDs = v8->_objectIDs;
    v8->_objectIDs = v9;

    v11 = [dCopy copy];
    objectIDByPersistentID = v8->_objectIDByPersistentID;
    v8->_objectIDByPersistentID = v11;
  }

  return v8;
}

@end