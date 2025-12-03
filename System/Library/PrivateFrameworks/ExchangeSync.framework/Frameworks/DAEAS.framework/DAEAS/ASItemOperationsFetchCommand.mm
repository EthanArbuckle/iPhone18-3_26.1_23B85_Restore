@interface ASItemOperationsFetchCommand
- (ASItemOperationsFetchCommand)initWithCollectionID:(id)d withServerID:(id)iD withLongID:(id)longID;
@end

@implementation ASItemOperationsFetchCommand

- (ASItemOperationsFetchCommand)initWithCollectionID:(id)d withServerID:(id)iD withLongID:(id)longID
{
  dCopy = d;
  iDCopy = iD;
  longIDCopy = longID;
  v19.receiver = self;
  v19.super_class = ASItemOperationsFetchCommand;
  v11 = [(ASItemOperationsFetchCommand *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    collectionID = v11->_collectionID;
    v11->_collectionID = v12;

    v14 = [iDCopy copy];
    serverID = v11->_serverID;
    v11->_serverID = v14;

    v16 = [longIDCopy copy];
    longID = v11->_longID;
    v11->_longID = v16;
  }

  return v11;
}

@end