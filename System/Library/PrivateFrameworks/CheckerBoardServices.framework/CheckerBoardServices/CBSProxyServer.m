@interface CBSProxyServer
- (BOOL)isEqual:(id)a3;
- (CBSProxyServer)initWithCoder:(id)a3;
- (CBSProxyServer)initWithServer:(id)a3 port:(id)a4 token:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CBSProxyServer

- (CBSProxyServer)initWithServer:(id)a3 port:(id)a4 token:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CBSProxyServer;
  v12 = [(CBSProxyServer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_server, a3);
    objc_storeStrong(&v13->_port, a4);
    objc_storeStrong(&v13->_token, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CBSProxyServer *)self server];
  v7 = [(CBSProxyServer *)self port];
  v8 = [(CBSProxyServer *)self token];
  v9 = [v3 stringWithFormat:@"<%@: %p server = %@, port = %@, token = %@>", v5, self, v6, v7, v8];;

  return v9;
}

- (CBSProxyServer)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CBSProxyServer;
  v5 = [(CBSProxyServer *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"server"];
    server = v5->_server;
    v5->_server = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CBSProxyServer *)self server];
  [v4 encodeObject:v5 forKey:@"server"];

  v6 = [(CBSProxyServer *)self port];
  [v4 encodeObject:v6 forKey:@"port"];

  v7 = [(CBSProxyServer *)self token];
  [v4 encodeObject:v7 forKey:@"token"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBSProxyServer);
  v5 = [(CBSProxyServer *)self server];
  v6 = [v5 copy];
  server = v4->_server;
  v4->_server = v6;

  v8 = [(CBSProxyServer *)self port];
  v9 = [v8 copy];
  port = v4->_port;
  v4->_port = v9;

  v11 = [(CBSProxyServer *)self token];
  v12 = [v11 copy];
  token = v4->_token;
  v4->_token = v12;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(CBSProxyServer *)self server];
    v8 = [(CBSProxyServer *)v6 server];
    v9 = [v7 isEqualToString:v8];

    v10 = [(CBSProxyServer *)self port];
    v11 = [(CBSProxyServer *)v6 port];
    v12 = [v10 isEqualToNumber:v11];

    v13 = [(CBSProxyServer *)self token];
    if (v13 || ([(CBSProxyServer *)v6 token], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(CBSProxyServer *)self token];
      v15 = [(CBSProxyServer *)v6 token];
      v16 = [v14 isEqualToString:v15];

      if (v13)
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