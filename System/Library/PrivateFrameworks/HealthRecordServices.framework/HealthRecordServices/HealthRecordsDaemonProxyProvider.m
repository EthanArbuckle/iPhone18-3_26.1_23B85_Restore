@interface HealthRecordsDaemonProxyProvider
- (_TtC20HealthRecordServices32HealthRecordsDaemonProxyProvider)initWithSource:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7;
- (id)proxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 error:(id *)a5;
- (void)fetchProxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 endpointHandler:(id)a5 errorHandler:(id)a6;
@end

@implementation HealthRecordsDaemonProxyProvider

- (void)fetchProxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 endpointHandler:(id)a5 errorHandler:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = sub_251A4928C();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  swift_unknownObjectRetain();
  v16 = self;
  sub_251A3C4D0(a3, v11, v13, sub_251A3C764, v14, sub_251A3C778, v15);
  swift_unknownObjectRelease();
}

- (id)proxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 error:(id *)a5
{
  sub_251A4928C();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_251A3C660();

  swift_unknownObjectRelease();

  return v7;
}

- (_TtC20HealthRecordServices32HealthRecordsDaemonProxyProvider)initWithSource:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end