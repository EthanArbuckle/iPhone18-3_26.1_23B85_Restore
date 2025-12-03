@interface CBSProxyServer
- (BOOL)isEqual:(id)equal;
- (CBSProxyServer)initWithCoder:(id)coder;
- (CBSProxyServer)initWithServer:(id)server port:(id)port token:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBSProxyServer

- (CBSProxyServer)initWithServer:(id)server port:(id)port token:(id)token
{
  serverCopy = server;
  portCopy = port;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = CBSProxyServer;
  v12 = [(CBSProxyServer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_server, server);
    objc_storeStrong(&v13->_port, port);
    objc_storeStrong(&v13->_token, token);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  server = [(CBSProxyServer *)self server];
  port = [(CBSProxyServer *)self port];
  token = [(CBSProxyServer *)self token];
  v9 = [v3 stringWithFormat:@"<%@: %p server = %@, port = %@, token = %@>", v5, self, server, port, token];;

  return v9;
}

- (CBSProxyServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CBSProxyServer;
  v5 = [(CBSProxyServer *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"server"];
    server = v5->_server;
    v5->_server = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  server = [(CBSProxyServer *)self server];
  [coderCopy encodeObject:server forKey:@"server"];

  port = [(CBSProxyServer *)self port];
  [coderCopy encodeObject:port forKey:@"port"];

  token = [(CBSProxyServer *)self token];
  [coderCopy encodeObject:token forKey:@"token"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBSProxyServer);
  server = [(CBSProxyServer *)self server];
  v6 = [server copy];
  server = v4->_server;
  v4->_server = v6;

  port = [(CBSProxyServer *)self port];
  v9 = [port copy];
  port = v4->_port;
  v4->_port = v9;

  token = [(CBSProxyServer *)self token];
  v12 = [token copy];
  token = v4->_token;
  v4->_token = v12;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    server = [(CBSProxyServer *)self server];
    server2 = [(CBSProxyServer *)v6 server];
    v9 = [server isEqualToString:server2];

    port = [(CBSProxyServer *)self port];
    port2 = [(CBSProxyServer *)v6 port];
    v12 = [port isEqualToNumber:port2];

    token = [(CBSProxyServer *)self token];
    if (token || ([(CBSProxyServer *)v6 token], (port2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      token2 = [(CBSProxyServer *)self token];
      token3 = [(CBSProxyServer *)v6 token];
      v16 = [token2 isEqualToString:token3];

      if (token)
      {
LABEL_8:

        v5 = v9 & v12 & v16;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

@end