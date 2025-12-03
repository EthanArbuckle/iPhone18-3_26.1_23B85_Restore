@interface FSServerURLParameters
- (FSServerURLParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSServerURLParameters

- (void)encodeWithCoder:(id)coder
{
  scheme = self->_scheme;
  coderCopy = coder;
  [coderCopy encodeObject:scheme forKey:@"FSSchem"];
  [coderCopy encodeObject:self->_host forKey:@"FSHost"];
  [coderCopy encodeObject:self->_port forKey:@"FSPort"];
  [coderCopy encodeObject:self->_user forKey:@"FSUser"];
  [coderCopy encodeObject:self->_password forKey:@"FSPassw"];
  [coderCopy encodeObject:self->_path forKey:@"FSPath"];
  [coderCopy encodeObject:self->_options forKey:@"FSOptns"];
  [coderCopy encodeObject:self->_extras forKey:@"FSExtra"];
}

- (FSServerURLParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = FSServerURLParameters;
  v5 = [(FSServerURLParameters *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSchem"];
    scheme = v5->_scheme;
    v5->_scheme = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSHost"];
    host = v5->_host;
    v5->_host = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSPort"];
    port = v5->_port;
    v5->_port = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSUser"];
    user = v5->_user;
    v5->_user = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSPassw"];
    password = v5->_password;
    v5->_password = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSPath"];
    path = v5->_path;
    v5->_path = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSOptns"];
    options = v5->_options;
    v5->_options = v18;

    v20 = +[FSKitConstants plistTypes];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"FSExtra"];

    extras = v5->_extras;
    v5->_extras = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  scheme = self->_scheme;
  if (scheme)
  {
    scheme = [(NSString *)scheme copyWithZone:zone];
  }

  v7 = v5[1];
  v5[1] = scheme;

  host = self->_host;
  if (host)
  {
    host = [(NSString *)host copyWithZone:zone];
  }

  v9 = v5[2];
  v5[2] = host;

  port = self->_port;
  if (port)
  {
    port = [(NSNumber *)port copyWithZone:zone];
  }

  v11 = v5[3];
  v5[3] = port;

  user = self->_user;
  if (user)
  {
    user = [(NSString *)user copyWithZone:zone];
  }

  v13 = v5[4];
  v5[4] = user;

  password = self->_password;
  if (password)
  {
    password = [(NSString *)password copyWithZone:zone];
  }

  v15 = v5[5];
  v5[5] = password;

  path = self->_path;
  if (path)
  {
    path = [(NSString *)path copyWithZone:zone];
  }

  v17 = v5[6];
  v5[6] = path;

  options = self->_options;
  if (options)
  {
    options = [(NSString *)options copyWithZone:zone];
  }

  v19 = v5[7];
  v5[7] = options;

  extras = self->_extras;
  if (extras)
  {
    extras = [(NSDictionary *)extras copyWithZone:zone];
  }

  v21 = v5[8];
  v5[8] = extras;

  return v5;
}

@end