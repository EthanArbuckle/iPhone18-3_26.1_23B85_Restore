@interface MTXPCClientInfo
+ (id)clientInfoForConnection:(id)connection clientLink:(id)link;
- (BOOL)isEqual:(id)equal;
- (MTXPCClientInfo)initWithConnection:(id)connection clientLink:(id)link;
- (NSString)description;
- (NSString)processName;
- (id)sourceIdentifier;
- (int)processID;
- (unint64_t)hash;
@end

@implementation MTXPCClientInfo

- (unint64_t)hash
{
  connection = [(MTXPCClientInfo *)self connection];
  v3 = [connection hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  processName = [(MTXPCClientInfo *)self processName];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[MTXPCClientInfo processID](self, "processID")}];
  connectedDate = [(MTXPCClientInfo *)self connectedDate];
  connection = [(MTXPCClientInfo *)self connection];
  v9 = [v3 stringWithFormat:@"<%@:%p ProcessName: %@ ProcessID: %@ Connected: %@ Connection: %@>", v4, self, processName, v6, connectedDate, connection];

  return v9;
}

- (NSString)processName
{
  v7 = *MEMORY[0x1E69E9840];
  proc_name([(MTXPCClientInfo *)self processID:0], &v6, 0x100u);
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v6];
  v3 = [v2 copy];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int)processID
{
  connection = [(MTXPCClientInfo *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

+ (id)clientInfoForConnection:(id)connection clientLink:(id)link
{
  linkCopy = link;
  connectionCopy = connection;
  v7 = [objc_alloc(objc_opt_class()) initWithConnection:connectionCopy clientLink:linkCopy];

  return v7;
}

- (MTXPCClientInfo)initWithConnection:(id)connection clientLink:(id)link
{
  connectionCopy = connection;
  linkCopy = link;
  v14.receiver = self;
  v14.super_class = MTXPCClientInfo;
  v9 = [(MTXPCClientInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_clientLink, link);
    date = [MEMORY[0x1E695DF00] date];
    connectedDate = v10->_connectedDate;
    v10->_connectedDate = date;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = [(MTXPCClientInfo *)self connection];
      connection2 = [(MTXPCClientInfo *)equalCopy connection];
      v7 = [connection isEqual:connection2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)sourceIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  processName = [(MTXPCClientInfo *)self processName];
  v5 = [v3 stringWithFormat:@"%@-%d", processName, -[MTXPCClientInfo processID](self, "processID")];

  return v5;
}

@end