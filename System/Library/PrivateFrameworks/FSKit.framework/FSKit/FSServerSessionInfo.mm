@interface FSServerSessionInfo
- (FSServerSessionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSServerSessionInfo

- (void)encodeWithCoder:(id)a3
{
  howConnected = self->_howConnected;
  v5 = a3;
  [v5 encodeInteger:howConnected forKey:@"FConHow"];
  [v5 encodeObject:self->_connectedByUser forKey:@"FConUsr"];
}

- (FSServerSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FSServerSessionInfo;
  v5 = [(FSServerSessionInfo *)&v9 init];
  if (v5)
  {
    v5->_howConnected = [v4 decodeIntegerForKey:@"FConHow"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FConUsr"];
    connectedByUser = v5->_connectedByUser;
    v5->_connectedByUser = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_howConnected;
  connectedByUser = self->_connectedByUser;
  if (connectedByUser)
  {
    connectedByUser = [(NSString *)connectedByUser copyWithZone:a3];
  }

  v7 = v5[2];
  v5[2] = connectedByUser;

  return v5;
}

@end