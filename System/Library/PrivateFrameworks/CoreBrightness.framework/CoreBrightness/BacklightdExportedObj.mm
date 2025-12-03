@interface BacklightdExportedObj
- (id)copyClientID;
- (void)clientCopyPropertyWithKey:(id)key reply:(id)reply;
- (void)clientSetPropertyWithKey:(id)key property:(id)property;
- (void)clientSetSYNCPropertyWithKey:(id)key property:(id)property reply:(id)reply;
- (void)dealloc;
- (void)registerNotificationForProperties:(id)properties;
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
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_connection).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = BacklightdExportedObj;
  [(BacklightdExportedObj *)&v3 dealloc];
}

- (void)clientSetPropertyWithKey:(id)key property:(id)property
{
  v5 = 0;
  if (property && [property count])
  {
    v5 = [property objectAtIndex:0];
  }

  if ([(BacklightdExportedObj *)self server])
  {
    copyClientID = [(BacklightdExportedObj *)self copyClientID];
    [(BrightnessSystemInternal *)[(BacklightdExportedObj *)self server] setProperty:v5 forKey:key client:copyClientID];
    MEMORY[0x1E69E5920](copyClientID);
  }
}

- (void)clientSetSYNCPropertyWithKey:(id)key property:(id)property reply:(id)reply
{
  v12 = 0;
  v11 = -1;
  v10 = 0;
  if (property && [property count])
  {
    v12 = [property objectAtIndex:0];
  }

  if ([(BacklightdExportedObj *)self server])
  {
    copyClientID = [(BacklightdExportedObj *)self copyClientID];
    v7 = [(BrightnessSystemInternal *)[(BacklightdExportedObj *)self server] setProperty:v12 forKey:key client:copyClientID];
    MEMORY[0x1E69E5920](copyClientID);
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
  (*(reply + 2))(reply, v10, v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v9);
}

- (void)clientCopyPropertyWithKey:(id)key reply:(id)reply
{
  selfCopy = self;
  v12 = a2;
  keyCopy = key;
  replyCopy = reply;
  v9 = 0;
  v8 = -1;
  v7 = 0;
  v6 = 0;
  if ([(BacklightdExportedObj *)self server])
  {
    copyClientID = [(BacklightdExportedObj *)selfCopy copyClientID];
    v9 = [(BrightnessSystemInternal *)[(BacklightdExportedObj *)selfCopy server] copyPropertyForKey:keyCopy client:copyClientID];
    MEMORY[0x1E69E5920](copyClientID);
    if (v9)
    {
      v8 = 0;
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, 0}];
      MEMORY[0x1E69E5920](v9);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = [v4 initWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
  replyCopy[2](replyCopy, v7, v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
}

- (void)registerNotificationForProperties:(id)properties
{
  if ([(BacklightdExportedObj *)self server])
  {
    copyClientID = [(BacklightdExportedObj *)self copyClientID];
    [(BrightnessSystemInternal *)self->_server setNotificationProperties:properties forClient:copyClientID];
    MEMORY[0x1E69E5920](copyClientID);
  }
}

@end