@interface FSServerShareInfo
- (FSServerShareInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSServerShareInfo

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"FSSDisn"];
  [coderCopy encodeObject:self->_connectedByUser forKey:@"FConUsr"];
  [coderCopy encodeInteger:self->_howConnected forKey:@"FConHow"];
  [coderCopy encodeBool:self->_alreadyConnected forKey:@"FIsConn"];
  [coderCopy encodeBool:self->_hasPassword forKey:@"FSHasPw"];
  [coderCopy encodeBool:self->_hidden forKey:@"FSHiddn"];
  [coderCopy encodeBool:self->_printerShare forKey:@"FSPrntr"];
  [coderCopy encodeObject:self->_additionalInfo forKey:@"FAddInf"];
}

- (FSServerShareInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FSServerShareInfo;
  v5 = [(FSServerShareInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSDisn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FConUsr"];
    connectedByUser = v5->_connectedByUser;
    v5->_connectedByUser = v8;

    v5->_howConnected = [coderCopy decodeIntegerForKey:@"FConHow"];
    v5->_alreadyConnected = [coderCopy decodeBoolForKey:@"FIsConn"];
    v5->_hasPassword = [coderCopy decodeBoolForKey:@"FSHasPw"];
    v5->_hidden = [coderCopy decodeBoolForKey:@"FSHiddn"];
    v5->_printerShare = [coderCopy decodeBoolForKey:@"FSPrntr"];
    v10 = +[FSKitConstants plistTypes];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FAddInf"];

    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  displayName = self->_displayName;
  if (displayName)
  {
    displayName = [(NSString *)displayName copyWithZone:zone];
  }

  v7 = *(v5 + 16);
  *(v5 + 16) = displayName;

  connectedByUser = self->_connectedByUser;
  if (connectedByUser)
  {
    connectedByUser = [(NSString *)connectedByUser copyWithZone:zone];
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = connectedByUser;

  *(v5 + 32) = self->_howConnected;
  *(v5 + 8) = self->_alreadyConnected;
  *(v5 + 9) = self->_hasPassword;
  *(v5 + 10) = self->_hidden;
  *(v5 + 11) = self->_printerShare;
  additionalInfo = self->_additionalInfo;
  if (additionalInfo)
  {
    additionalInfo = [(NSDictionary *)additionalInfo copyWithZone:zone];
  }

  v11 = *(v5 + 40);
  *(v5 + 40) = additionalInfo;

  return v5;
}

@end