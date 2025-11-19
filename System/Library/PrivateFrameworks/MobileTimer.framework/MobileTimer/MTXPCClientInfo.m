@interface MTXPCClientInfo
+ (id)clientInfoForConnection:(id)a3 clientLink:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MTXPCClientInfo)initWithConnection:(id)a3 clientLink:(id)a4;
- (NSString)description;
- (NSString)processName;
- (id)sourceIdentifier;
- (int)processID;
- (unint64_t)hash;
@end

@implementation MTXPCClientInfo

- (unint64_t)hash
{
  v2 = [(MTXPCClientInfo *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTXPCClientInfo *)self processName];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[MTXPCClientInfo processID](self, "processID")}];
  v7 = [(MTXPCClientInfo *)self connectedDate];
  v8 = [(MTXPCClientInfo *)self connection];
  v9 = [v3 stringWithFormat:@"<%@:%p ProcessName: %@ ProcessID: %@ Connected: %@ Connection: %@>", v4, self, v5, v6, v7, v8];

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
  v2 = [(MTXPCClientInfo *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
}

+ (id)clientInfoForConnection:(id)a3 clientLink:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithConnection:v6 clientLink:v5];

  return v7;
}

- (MTXPCClientInfo)initWithConnection:(id)a3 clientLink:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MTXPCClientInfo;
  v9 = [(MTXPCClientInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_clientLink, a4);
    v11 = [MEMORY[0x1E695DF00] date];
    connectedDate = v10->_connectedDate;
    v10->_connectedDate = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MTXPCClientInfo *)self connection];
      v6 = [(MTXPCClientInfo *)v4 connection];
      v7 = [v5 isEqual:v6];
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
  v4 = [(MTXPCClientInfo *)self processName];
  v5 = [v3 stringWithFormat:@"%@-%d", v4, -[MTXPCClientInfo processID](self, "processID")];

  return v5;
}

@end