@interface FSServerShareInfo
- (FSServerShareInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSServerShareInfo

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v5 = a3;
  [v5 encodeObject:displayName forKey:@"FSSDisn"];
  [v5 encodeObject:self->_connectedByUser forKey:@"FConUsr"];
  [v5 encodeInteger:self->_howConnected forKey:@"FConHow"];
  [v5 encodeBool:self->_alreadyConnected forKey:@"FIsConn"];
  [v5 encodeBool:self->_hasPassword forKey:@"FSHasPw"];
  [v5 encodeBool:self->_hidden forKey:@"FSHiddn"];
  [v5 encodeBool:self->_printerShare forKey:@"FSPrntr"];
  [v5 encodeObject:self->_additionalInfo forKey:@"FAddInf"];
}

- (FSServerShareInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FSServerShareInfo;
  v5 = [(FSServerShareInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSDisn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FConUsr"];
    connectedByUser = v5->_connectedByUser;
    v5->_connectedByUser = v8;

    v5->_howConnected = [v4 decodeIntegerForKey:@"FConHow"];
    v5->_alreadyConnected = [v4 decodeBoolForKey:@"FIsConn"];
    v5->_hasPassword = [v4 decodeBoolForKey:@"FSHasPw"];
    v5->_hidden = [v4 decodeBoolForKey:@"FSHiddn"];
    v5->_printerShare = [v4 decodeBoolForKey:@"FSPrntr"];
    v10 = +[FSKitConstants plistTypes];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"FAddInf"];

    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  displayName = self->_displayName;
  if (displayName)
  {
    displayName = [(NSString *)displayName copyWithZone:a3];
  }

  v7 = *(v5 + 16);
  *(v5 + 16) = displayName;

  connectedByUser = self->_connectedByUser;
  if (connectedByUser)
  {
    connectedByUser = [(NSString *)connectedByUser copyWithZone:a3];
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
    additionalInfo = [(NSDictionary *)additionalInfo copyWithZone:a3];
  }

  v11 = *(v5 + 40);
  *(v5 + 40) = additionalInfo;

  return v5;
}

@end