@interface RegistryCrux
- (void)xpcDeviceID:(id)a3 needsPasscode:(id)a4;
- (void)xpcHasNewOOBKey:(id)a3;
@end

@implementation RegistryCrux

- (void)xpcDeviceID:(id)a3 needsPasscode:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  specialized RegistryCrux.xpcDeviceID(_:needsPasscode:)();
  outlined destroy of UUID?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (void)xpcHasNewOOBKey:(id)a3
{
  v3 = a3;
  if (a3)
  {

    v4 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  closure #2 in RegistryCrux.connectionLocked()("RegistryCrux: xpcHasNewOOBKey");
  outlined consume of Data?(v3, v6);
}

@end