@interface CombinedServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC16EnergyKitService23CombinedServiceDelegate)init;
@end

@implementation CombinedServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000EF20(v7);

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