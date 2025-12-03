@interface MLServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation MLServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  _objc_retain(listener);
  _objc_retain(connection);
  _objc_retain(self);
  MLServerDelegate.listener(_:shouldAcceptNewConnection:)(listener, connection);

  return _convertBoolToObjCBool(_:)() & 1;
}

@end