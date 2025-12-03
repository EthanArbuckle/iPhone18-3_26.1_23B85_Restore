@interface MSNScopedException
- (MSNScopedException)initWithConnection:(id)connection exception:(id)exception;
@end

@implementation MSNScopedException

- (MSNScopedException)initWithConnection:(id)connection exception:(id)exception
{
  connectionCopy = connection;
  exceptionCopy = exception;
  v12.receiver = self;
  v12.super_class = MSNScopedException;
  v9 = [(MSNScopedException *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_exception, exception);
  }

  return v10;
}

@end