@interface NSXPCConnection
- (BOOL)ml_isValid;
@end

@implementation NSXPCConnection

- (BOOL)ml_isValid
{
  v2 = objc_getAssociatedObject(self, "MLNSXPCConnectionIsValidKey");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end