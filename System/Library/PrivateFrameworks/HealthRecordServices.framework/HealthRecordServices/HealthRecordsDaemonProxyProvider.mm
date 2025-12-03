@interface HealthRecordsDaemonProxyProvider
- (_TtC20HealthRecordServices32HealthRecordsDaemonProxyProvider)initWithSource:(id)source serviceIdentifier:(id)identifier exportedObject:(id)object exportedInterface:(id)interface remoteInterface:(id)remoteInterface;
- (id)proxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier error:(id *)error;
- (void)fetchProxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation HealthRecordsDaemonProxyProvider

- (void)fetchProxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(errorHandler);
  v11 = sub_251A4928C();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_251A3C4D0(source, v11, v13, sub_251A3C764, v14, sub_251A3C778, v15);
  swift_unknownObjectRelease();
}

- (id)proxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier error:(id *)error
{
  sub_251A4928C();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_251A3C660();

  swift_unknownObjectRelease();

  return v7;
}

- (_TtC20HealthRecordServices32HealthRecordsDaemonProxyProvider)initWithSource:(id)source serviceIdentifier:(id)identifier exportedObject:(id)object exportedInterface:(id)interface remoteInterface:(id)remoteInterface
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end