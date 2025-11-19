@interface IDSNWQPodParameters
- (IDSNWQPodParameters)initWithClientConnectionID:(unsigned int)a3 serverConnectionID:(unsigned int)a4 clientSecret:(id)a5 serverSecret:(id)a6 isServer:(BOOL)a7;
- (IDSNWQPodParameters)initWithDictionary:(id)a3;
- (OS_dispatch_data)clientConnectionIDDispatchData;
- (OS_dispatch_data)clientSecretDispatchData;
- (OS_dispatch_data)serverConnectionIDDispatchData;
- (OS_dispatch_data)serverSecretDispatchData;
- (id)dictionaryRepresentation;
@end

@implementation IDSNWQPodParameters

- (IDSNWQPodParameters)initWithClientConnectionID:(unsigned int)a3 serverConnectionID:(unsigned int)a4 clientSecret:(id)a5 serverSecret:(id)a6 isServer:(BOOL)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSNWQPodParameters;
  v15 = [(IDSNWQPodParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_clientConnectionID = a3;
    v15->_serverConnectionID = a4;
    objc_storeStrong(&v15->_clientSecret, a5);
    objc_storeStrong(&v16->_serverSecret, a6);
    v16->_isServer = a7;
  }

  return v16;
}

- (IDSNWQPodParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ccid"];
  v6 = [v5 unsignedIntValue];
  v7 = [v4 objectForKeyedSubscript:@"scid"];
  v8 = [v7 unsignedIntValue];
  v9 = [v4 objectForKeyedSubscript:@"csecret"];
  v10 = [v4 objectForKeyedSubscript:@"ssecret"];
  v11 = [v4 objectForKeyedSubscript:@"isServer"];

  v12 = -[IDSNWQPodParameters initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:](self, "initWithClientConnectionID:serverConnectionID:clientSecret:serverSecret:isServer:", v6, v8, v9, v10, [v11 BOOLValue]);
  return v12;
}

- (OS_dispatch_data)clientConnectionIDDispatchData
{
  buffer = bswap32([(IDSNWQPodParameters *)self clientConnectionID]);
  v2 = dispatch_data_create(&buffer, 4uLL, 0, 0);

  return v2;
}

- (OS_dispatch_data)serverConnectionIDDispatchData
{
  buffer = bswap32([(IDSNWQPodParameters *)self serverConnectionID]);
  v2 = dispatch_data_create(&buffer, 4uLL, 0, 0);

  return v2;
}

- (OS_dispatch_data)clientSecretDispatchData
{
  clientSecret = self->_clientSecret;
  if (clientSecret)
  {
    clientSecret = dispatch_data_create([(NSData *)clientSecret bytes], [(NSData *)self->_clientSecret length], 0, 0);
  }

  return clientSecret;
}

- (OS_dispatch_data)serverSecretDispatchData
{
  serverSecret = self->_serverSecret;
  if (serverSecret)
  {
    serverSecret = dispatch_data_create([(NSData *)serverSecret bytes], [(NSData *)self->_serverSecret length], 0, 0);
  }

  return serverSecret;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"ccid";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clientConnectionID];
  v10[0] = v3;
  v9[1] = @"scid";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_serverConnectionID];
  v10[1] = v4;
  v9[2] = @"isServer";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isServer];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [v6 mutableCopy];

  if (self->_clientSecret && self->_serverSecret)
  {
    [v7 setObject:? forKeyedSubscript:?];
    [v7 setObject:self->_serverSecret forKeyedSubscript:@"ssecret"];
  }

  return v7;
}

@end