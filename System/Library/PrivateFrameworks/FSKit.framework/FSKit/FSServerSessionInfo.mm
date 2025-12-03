@interface FSServerSessionInfo
- (FSServerSessionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSServerSessionInfo

- (void)encodeWithCoder:(id)coder
{
  howConnected = self->_howConnected;
  coderCopy = coder;
  [coderCopy encodeInteger:howConnected forKey:@"FConHow"];
  [coderCopy encodeObject:self->_connectedByUser forKey:@"FConUsr"];
}

- (FSServerSessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FSServerSessionInfo;
  v5 = [(FSServerSessionInfo *)&v9 init];
  if (v5)
  {
    v5->_howConnected = [coderCopy decodeIntegerForKey:@"FConHow"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FConUsr"];
    connectedByUser = v5->_connectedByUser;
    v5->_connectedByUser = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_howConnected;
  connectedByUser = self->_connectedByUser;
  if (connectedByUser)
  {
    connectedByUser = [(NSString *)connectedByUser copyWithZone:zone];
  }

  v7 = v5[2];
  v5[2] = connectedByUser;

  return v5;
}

@end