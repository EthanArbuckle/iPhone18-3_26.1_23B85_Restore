@interface HomeEnergyListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation HomeEnergyListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x23188EEB0]();
  sub_22B1459E4(v4, &v7);
  objc_autoreleasePoolPop(v5);

  return v7;
}

@end