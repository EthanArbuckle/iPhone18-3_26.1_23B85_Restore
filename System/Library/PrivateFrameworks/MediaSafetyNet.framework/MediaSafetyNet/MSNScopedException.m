@interface MSNScopedException
- (MSNScopedException)initWithConnection:(id)a3 exception:(id)a4;
@end

@implementation MSNScopedException

- (MSNScopedException)initWithConnection:(id)a3 exception:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSNScopedException;
  v9 = [(MSNScopedException *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_exception, a4);
  }

  return v10;
}

@end