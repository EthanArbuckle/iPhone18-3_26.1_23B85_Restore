@interface NSPControlConnection
- (id)initFromConnection:(id)a3;
- (id)initFromMetadata:(id)a3;
- (id)initFromNWConnection:(id)a3;
@end

@implementation NSPControlConnection

- (id)initFromMetadata:(id)a3
{
  v4.receiver = self;
  v4.super_class = NSPControlConnection;
  return [(NSPControlConnection *)&v4 init];
}

- (id)initFromConnection:(id)a3
{
  v4 = [a3 metadata];
  v5 = [(NSPControlConnection *)self initFromMetadata:v4];

  return v5;
}

- (id)initFromNWConnection:(id)a3
{
  if (a3)
  {
    self = [(NSPControlConnection *)self initFromMetadata:0];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end