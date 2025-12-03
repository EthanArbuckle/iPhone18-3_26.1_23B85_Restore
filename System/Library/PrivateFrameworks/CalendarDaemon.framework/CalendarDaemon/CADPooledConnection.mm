@interface CADPooledConnection
- (CADPooledConnection)initWithDatabase:(CalDatabase *)database;
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

- (CADPooledConnection)initWithDatabase:(CalDatabase *)database
{
  v6.receiver = self;
  v6.super_class = CADPooledConnection;
  v4 = [(CADPooledConnection *)&v6 init];
  if (v4)
  {
    CFRetain(database);
    v4->_database = database;
  }

  return v4;
}

@end