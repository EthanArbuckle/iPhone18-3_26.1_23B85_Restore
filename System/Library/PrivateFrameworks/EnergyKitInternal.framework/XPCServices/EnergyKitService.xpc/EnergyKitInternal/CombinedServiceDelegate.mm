@interface CombinedServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC16EnergyKitService23CombinedServiceDelegate)init;
@end

@implementation CombinedServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000EF20(connectionCopy);

  return v9 & 1;
}

- (_TtC16EnergyKitService23CombinedServiceDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC16EnergyKitService23CombinedServiceDelegate_isInitialized) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CombinedServiceDelegate();
  return [(CombinedServiceDelegate *)&v3 init];
}

@end