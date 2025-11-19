@interface MCAPNInfo
- (id)defaultsRepresentation;
- (id)description;
- (id)strippedDefaultsRepresentation;
@end

@implementation MCAPNInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (self->_apnName)
  {
    [v3 appendFormat:@"APN Name      : %@\n", self->_apnName];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"Username      : %@\n", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"Password      : (set)\n"];
  }

  if (self->_proxy)
  {
    [v4 appendFormat:@"Proxy         : %@\n", self->_proxy];
  }

  if (self->_proxyPort)
  {
    [v4 appendFormat:@"Proxy Port    : %@\n", self->_proxyPort];
  }

  return v4;
}

- (id)strippedDefaultsRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  apnName = self->_apnName;
  if (apnName)
  {
    v10 = @"apn";
    v11[0] = apnName;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v4 mutableCopy];

    username = self->_username;
    if (username)
    {
      [v5 setObject:username forKeyedSubscript:@"username"];
    }

    v7 = [v5 copy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)defaultsRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  apnName = self->_apnName;
  if (apnName)
  {
    [v3 setObject:apnName forKey:@"apn"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"username"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"password"];
  }

  if (self->_proxy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v8 setObject:v9 forKey:*MEMORY[0x1E6982660]];

    v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v8 setObject:v10 forKey:*MEMORY[0x1E6982678]];

    [v8 setObject:self->_proxy forKey:*MEMORY[0x1E6982670]];
    [v8 setObject:self->_proxy forKey:*MEMORY[0x1E6982688]];
    proxyPort = self->_proxyPort;
    if (proxyPort)
    {
      [v8 setObject:proxyPort forKey:*MEMORY[0x1E6982668]];
      [v8 setObject:self->_proxyPort forKey:*MEMORY[0x1E6982680]];
    }

    [v4 setObject:v8 forKey:@"ProxyConfiguration"];
  }

  return v4;
}

@end