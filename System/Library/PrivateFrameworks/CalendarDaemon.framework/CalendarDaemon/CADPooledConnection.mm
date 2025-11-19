@interface CADPooledConnection
- (CADPooledConnection)initWithDatabase:(CalDatabase *)a3;
- (void)dealloc;
@end

@implementation CADPooledConnection

- (void)dealloc
{
  CFRelease(self->_database);
  v3.receiver = self;
  v3.super_class = CADPooledConnection;
  [(CADPooledConnection *)&v3 dealloc];
}

- (CADPooledConnection)initWithDatabase:(CalDatabase *)a3
{
  v6.receiver = self;
  v6.super_class = CADPooledConnection;
  v4 = [(CADPooledConnection *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_database = a3;
  }

  return v4;
}

@end