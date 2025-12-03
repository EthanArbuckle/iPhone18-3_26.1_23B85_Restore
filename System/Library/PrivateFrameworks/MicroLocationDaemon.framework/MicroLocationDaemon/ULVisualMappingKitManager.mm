@interface ULVisualMappingKitManager
- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)init;
- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)initWithQueue:(id)queue delegate:(id)delegate exclaveManager:(id)manager databaseService:(id)service;
- (id)addAnchorWithIdentifiedBy:(id)by error:(id *)error;
- (id)getAnchors;
- (void)teardown;
@end

@implementation ULVisualMappingKitManager

- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)initWithQueue:(id)queue delegate:(id)delegate exclaveManager:(id)manager databaseService:(id)service
{
  queueCopy = queue;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_2591FCD68(queueCopy, delegate, manager, service);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

- (void)teardown
{
  selfCopy = self;
  ULVisualMappingKitManager.teardown()();
}

- (id)addAnchorWithIdentifiedBy:(id)by error:(id *)error
{
  v5 = sub_2592121D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  selfCopy = self;
  v11 = ULVisualMappingKitManager.addAnchor(identifiedBy:)(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)getAnchors
{
  selfCopy = self;
  ULVisualMappingKitManager.getAnchors()();

  type metadata accessor for ULVisualMappingKitAnchor();
  v3 = sub_2592128B0();

  return v3;
}

- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end