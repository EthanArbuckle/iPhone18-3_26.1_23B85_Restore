@interface SysdiagnoseXPC.Delegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation SysdiagnoseXPC.Delegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C4B7EB8C(v8, v7);

  return v9 & 1;
}

@end