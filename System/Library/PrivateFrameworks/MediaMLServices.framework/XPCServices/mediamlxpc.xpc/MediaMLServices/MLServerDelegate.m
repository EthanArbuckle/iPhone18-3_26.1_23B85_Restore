@interface MLServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation MLServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  MLServerDelegate.listener(_:shouldAcceptNewConnection:)(a3, a4);

  return _convertBoolToObjCBool(_:)() & 1;
}

@end