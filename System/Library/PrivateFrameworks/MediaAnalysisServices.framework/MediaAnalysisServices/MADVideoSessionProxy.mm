@interface MADVideoSessionProxy
- (MADVideoSessionProxy)initWithSession:(id)session;
@end

@implementation MADVideoSessionProxy

- (MADVideoSessionProxy)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = MADVideoSessionProxy;
  v5 = [(MADVideoSessionProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

@end