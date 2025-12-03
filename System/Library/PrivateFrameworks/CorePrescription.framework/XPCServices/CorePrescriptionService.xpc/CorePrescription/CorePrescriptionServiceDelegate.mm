@interface CorePrescriptionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC23CorePrescriptionService31CorePrescriptionServiceDelegate)init;
@end

@implementation CorePrescriptionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10003BA10(connectionCopy);

  return v9 & 1;
}

- (_TtC23CorePrescriptionService31CorePrescriptionServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CorePrescriptionServiceDelegate();
  return [(CorePrescriptionServiceDelegate *)&v3 init];
}

@end