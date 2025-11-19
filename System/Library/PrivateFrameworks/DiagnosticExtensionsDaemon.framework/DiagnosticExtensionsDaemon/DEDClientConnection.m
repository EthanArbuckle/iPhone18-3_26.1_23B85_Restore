@interface DEDClientConnection
- (DEDClientConnection)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEDClientConnection

- (DEDClientConnection)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DEDClientConnection;
  v5 = [(DEDClientConnection *)&v7 init];
  if (v5)
  {
    v5->_pid = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDClientConnection *)self pid];
  [v4 encodeObject:v5 forKey:@"pid"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DEDClientConnection *)self pid];
  v4 = [v2 stringWithFormat:@"DEDClientConnection to PID [%@]", v3];

  return v4;
}

@end