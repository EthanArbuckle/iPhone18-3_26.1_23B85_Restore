@interface NSXPCConnection
- (BOOL)ml_isValid;
@end

@implementation NSXPCConnection

- (BOOL)ml_isValid
{
  v2 = objc_getAssociatedObject(self, "MLNSXPCConnectionIsValidKey");
  v3 = [v2 BOOLValue];

  return v3;
}

@end