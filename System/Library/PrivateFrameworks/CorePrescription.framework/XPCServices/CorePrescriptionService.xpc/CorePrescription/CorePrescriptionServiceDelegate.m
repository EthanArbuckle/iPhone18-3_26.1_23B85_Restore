@interface CorePrescriptionServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC23CorePrescriptionService31CorePrescriptionServiceDelegate)init;
@end

@implementation CorePrescriptionServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10003BA10(v7);

  return v9 & 1;
}

- (_TtC23CorePrescriptionService31CorePrescriptionServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CorePrescriptionServiceDelegate();
  return [(CorePrescriptionServiceDelegate *)&v3 init];
}

@end