@interface BLTSubscriberRemoteClient
- (BLTSubscriberRemoteClient)initWithConnection:(id)a3;
- (void)dealloc;
- (void)pingWithBulletin:(id)a3;
- (void)pingWithBulletin:(id)a3 ack:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5;
@end

@implementation BLTSubscriberRemoteClient

- (BLTSubscriberRemoteClient)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLTSubscriberRemoteClient;
  v6 = [(BLTSubscriberRemoteClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v8 pingWithRecordID:v7 forSectionID:v6];
}

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5
{
  connection = self->_connection;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v11 pingWithRecordID:v10 forSectionID:v9 ack:v8];
}

- (void)pingWithBulletin:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 pingWithBulletin:v4];
}

- (void)pingWithBulletin:(id)a3 ack:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v8 pingWithBulletin:v7 ack:v6];
}

@end