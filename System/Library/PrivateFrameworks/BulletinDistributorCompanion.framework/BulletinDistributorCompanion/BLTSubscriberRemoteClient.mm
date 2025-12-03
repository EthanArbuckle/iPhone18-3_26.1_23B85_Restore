@interface BLTSubscriberRemoteClient
- (BLTSubscriberRemoteClient)initWithConnection:(id)connection;
- (void)dealloc;
- (void)pingWithBulletin:(id)bulletin;
- (void)pingWithBulletin:(id)bulletin ack:(id)ack;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack;
@end

@implementation BLTSubscriberRemoteClient

- (BLTSubscriberRemoteClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = BLTSubscriberRemoteClient;
  v6 = [(BLTSubscriberRemoteClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = BLTSubscriberRemoteClient;
  [(BLTSubscriberRemoteClient *)&v4 dealloc];
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD
{
  connection = self->_connection;
  iDCopy = iD;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy pingWithRecordID:dCopy forSectionID:iDCopy];
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack
{
  connection = self->_connection;
  ackCopy = ack;
  iDCopy = iD;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy pingWithRecordID:dCopy forSectionID:iDCopy ack:ackCopy];
}

- (void)pingWithBulletin:(id)bulletin
{
  connection = self->_connection;
  bulletinCopy = bulletin;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy pingWithBulletin:bulletinCopy];
}

- (void)pingWithBulletin:(id)bulletin ack:(id)ack
{
  connection = self->_connection;
  ackCopy = ack;
  bulletinCopy = bulletin;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy pingWithBulletin:bulletinCopy ack:ackCopy];
}

@end