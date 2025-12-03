@interface HomeEnergyListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation HomeEnergyListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = MEMORY[0x23188EEB0]();
  sub_22B1459E4(connectionCopy, &v7);
  objc_autoreleasePoolPop(v5);

  return v7;
}

@end