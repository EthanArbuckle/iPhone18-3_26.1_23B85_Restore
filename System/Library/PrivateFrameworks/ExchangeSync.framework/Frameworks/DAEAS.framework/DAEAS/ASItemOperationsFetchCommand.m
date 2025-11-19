@interface ASItemOperationsFetchCommand
- (ASItemOperationsFetchCommand)initWithCollectionID:(id)a3 withServerID:(id)a4 withLongID:(id)a5;
@end

@implementation ASItemOperationsFetchCommand

- (ASItemOperationsFetchCommand)initWithCollectionID:(id)a3 withServerID:(id)a4 withLongID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ASItemOperationsFetchCommand;
  v11 = [(ASItemOperationsFetchCommand *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    collectionID = v11->_collectionID;
    v11->_collectionID = v12;

    v14 = [v9 copy];
    serverID = v11->_serverID;
    v11->_serverID = v14;

    v16 = [v10 copy];
    longID = v11->_longID;
    v11->_longID = v16;
  }

  return v11;
}

@end