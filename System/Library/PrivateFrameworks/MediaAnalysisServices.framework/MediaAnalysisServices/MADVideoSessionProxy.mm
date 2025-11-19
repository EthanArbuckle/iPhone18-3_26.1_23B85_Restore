@interface MADVideoSessionProxy
- (MADVideoSessionProxy)initWithSession:(id)a3;
@end

@implementation MADVideoSessionProxy

- (MADVideoSessionProxy)initWithSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADVideoSessionProxy;
  v5 = [(MADVideoSessionProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
  }

  return v6;
}

@end