@interface ULVisualMappingKitManager
- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)init;
- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)initWithQueue:(id)a3 delegate:(id)a4 exclaveManager:(id)a5 databaseService:(id)a6;
- (id)addAnchorWithIdentifiedBy:(id)a3 error:(id *)a4;
- (id)getAnchors;
- (void)teardown;
@end

@implementation ULVisualMappingKitManager

- (_TtC19MicroLocationDaemon25ULVisualMappingKitManager)initWithQueue:(id)a3 delegate:(id)a4 exclaveManager:(id)a5 databaseService:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_2591FCD68(v9, a4, a5, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

- (void)teardown
{
  v2 = self;
  ULVisualMappingKitManager.teardown()();
}

- (id)addAnchorWithIdentifiedBy:(id)a3 error:(id *)a4
{
  v5 = sub_2592121D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  v10 = self;
  v11 = ULVisualMappingKitManager.addAnchor(identifiedBy:)(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)getAnchors
{
  v2 = self;
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