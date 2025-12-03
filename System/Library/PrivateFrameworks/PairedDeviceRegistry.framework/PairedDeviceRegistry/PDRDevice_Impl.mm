@interface PDRDevice_Impl
- (BOOL)supportsCapabilityRaw:(unsigned int)raw;
- (NSString)description;
- (NSUUID)pairingID;
- (PDRDevice_Impl)init;
- (id)propertyNames;
- (id)valueForProperty:(id)property;
@end

@implementation PDRDevice_Impl

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  selfCopy = self;
  Device_Impl.valueFor(property:)(propertyCopy, v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSUUID)pairingID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___PDRDevice_Impl_uuid_, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (BOOL)supportsCapabilityRaw:(unsigned int)raw
{
  selfCopy = self;
  LOBYTE(raw) = Device_Impl.supportsCapabilityRaw(_:)(raw);

  return raw & 1;
}

- (id)propertyNames
{
  selfCopy = self;
  Device_Impl.propertyNames()();

  type metadata accessor for PDRDevicePropertyKey(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)description
{
  selfCopy = self;
  v3 = Device_Impl.description.getter();
  v5 = v4;

  v6 = MEMORY[0x2318DF040](v3, v5);

  return v6;
}

- (PDRDevice_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end