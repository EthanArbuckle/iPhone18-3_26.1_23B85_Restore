@interface BacklightdExportedObj
- (id)copyClientID;
- (void)clientCopyPropertyWithKey:(id)a3 reply:(id)a4;
- (void)clientSetPropertyWithKey:(id)a3 property:(id)a4;
- (void)clientSetSYNCPropertyWithKey:(id)a3 property:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)registerNotificationForProperties:(id)a3;
@end

@implementation BacklightdExportedObj

- (id)copyClientID
{
  if (!self->_clientIDSet)
  {
    self->_clientID = [(NSXPCConnection *)[(BacklightdExportedObj *)self connection] hash];
    self->_clientIDSet = 1;
  }

  return [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:self->_clientID];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_connection).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = BacklightdExportedObj;
  [(BacklightdExportedObj *)&v3 dealloc];
}

- (void)clientSetPropertyWithKey:(id)a3 property:(id)a4
{
  v5 = 0;
  if (a4 && [a4 count])
  {
    v5 = [a4 objectAtIndex:0];
  }

  if ([(BacklightdExportedObj *)self server])
  {
    v4 = [(BacklightdExportedObj *)self copyClientID];
    [(BrightnessSystemInternal *)[(BacklightdExportedObj *)self server] setProperty:v5 forKey:a3 client:v4];
    MEMORY[0x1E69E5920](v4);
  }
}

- (void)clientSetSYNCPropertyWithKey:(id)a3 property:(id)a4 reply:(id)a5
{
  v12 = 0;
  v11 = -1;
  v10 = 0;
  if (a4 && [a4 count])
  {
    v12 = [a4 objectAtIndex:0];
  }

  if ([(BacklightdExportedObj *)self server])
  {
    v8 = [(BacklightdExportedObj *)self copyClientID];
    v7 = [(BrightnessSystemInternal *)[(BacklightdExportedObj *)self server] setProperty:v12 forKey:a3 client:v8];
    MEMORY[0x1E69E5920](v8);
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
    if (v6)
    {
      v11 = 0;
      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
      MEMORY[0x1E69E5920](v6);
    }
  }

  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v5 initWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
  (*(a5 + 2))(a5, v10, v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v9);
}

- (void)clientCopyPropertyWithKey:(id)a3 reply:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v8 = -1;
  v7 = 0;
  v6 = 0;
  if ([(BacklightdExportedObj *)self server])
  {
    v5 = [(BacklightdExportedObj *)v13 copyClientID];
    v9 = [(BrightnessSystemInternal *)[(BacklightdExportedObj *)v13 server] copyPropertyForKey:v11 client:v5];
    MEMORY[0x1E69E5920](v5);
    if (v9)
    {
      v8 = 0;
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, 0}];
      MEMORY[0x1E69E5920](v9);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = [v4 initWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
  v10[2](v10, v7, v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
}

- (void)registerNotificationForProperties:(id)a3
{
  if ([(BacklightdExportedObj *)self server])
  {
    v3 = [(BacklightdExportedObj *)self copyClientID];
    [(BrightnessSystemInternal *)self->_server setNotificationProperties:a3 forClient:v3];
    MEMORY[0x1E69E5920](v3);
  }
}

@end