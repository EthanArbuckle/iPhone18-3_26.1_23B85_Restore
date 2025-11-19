@interface EMOrderedMessageIDData
- (EMOrderedMessageIDData)initWithObjectIDs:(id)a3 objectIDByPersistentID:(id)a4;
@end

@implementation EMOrderedMessageIDData

- (EMOrderedMessageIDData)initWithObjectIDs:(id)a3 objectIDByPersistentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EMOrderedMessageIDData;
  v8 = [(EMOrderedMessageIDData *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    objectIDs = v8->_objectIDs;
    v8->_objectIDs = v9;

    v11 = [v7 copy];
    objectIDByPersistentID = v8->_objectIDByPersistentID;
    v8->_objectIDByPersistentID = v11;
  }

  return v8;
}

@end