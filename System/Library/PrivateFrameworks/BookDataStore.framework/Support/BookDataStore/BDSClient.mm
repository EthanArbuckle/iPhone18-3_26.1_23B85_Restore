@interface BDSClient
- (BDSClient)initWithConnection:(id)a3;
- (id)description;
@end

@implementation BDSClient

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSClient *)self connection];
  v5 = [(BDSClient *)self connection];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p connection:%p, pid:%d, monitorsServiceNotifications:%d>", v3, self, v4, [v5 processIdentifier], -[BDSClient monitorsServiceNotifications](self, "monitorsServiceNotifications"));

  return v6;
}

- (BDSClient)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BDSClient;
  v6 = [(BDSClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end