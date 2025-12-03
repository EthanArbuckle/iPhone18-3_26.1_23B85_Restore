@interface NSPControlConnection
- (id)initFromConnection:(id)connection;
- (id)initFromMetadata:(id)metadata;
- (id)initFromNWConnection:(id)connection;
@end

@implementation NSPControlConnection

- (id)initFromMetadata:(id)metadata
{
  v4.receiver = self;
  v4.super_class = NSPControlConnection;
  return [(NSPControlConnection *)&v4 init];
}

- (id)initFromConnection:(id)connection
{
  metadata = [connection metadata];
  v5 = [(NSPControlConnection *)self initFromMetadata:metadata];

  return v5;
}

- (id)initFromNWConnection:(id)connection
{
  if (connection)
  {
    self = [(NSPControlConnection *)self initFromMetadata:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end