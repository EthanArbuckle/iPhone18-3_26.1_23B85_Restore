@interface BDSClient
- (BDSClient)initWithConnection:(id)connection;
- (id)description;
@end

@implementation BDSClient

- (id)description
{
  v3 = objc_opt_class();
  connection = [(BDSClient *)self connection];
  connection2 = [(BDSClient *)self connection];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p connection:%p, pid:%d, monitorsServiceNotifications:%d>", v3, self, connection, [connection2 processIdentifier], -[BDSClient monitorsServiceNotifications](self, "monitorsServiceNotifications"));

  return v6;
}

- (BDSClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = BDSClient;
  v6 = [(BDSClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end