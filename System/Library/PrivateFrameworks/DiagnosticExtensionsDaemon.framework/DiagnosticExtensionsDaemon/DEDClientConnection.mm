@interface DEDClientConnection
- (DEDClientConnection)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DEDClientConnection

- (DEDClientConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DEDClientConnection;
  v5 = [(DEDClientConnection *)&v7 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DEDClientConnection *)self pid];
  [coderCopy encodeObject:v5 forKey:@"pid"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DEDClientConnection *)self pid];
  v4 = [v2 stringWithFormat:@"DEDClientConnection to PID [%@]", v3];

  return v4;
}

@end