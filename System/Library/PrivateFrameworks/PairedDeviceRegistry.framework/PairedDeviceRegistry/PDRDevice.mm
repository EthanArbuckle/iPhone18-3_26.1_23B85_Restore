@interface PDRDevice
- (BOOL)isActive;
- (BOOL)isAltAccount;
- (BOOL)isArchived;
- (BOOL)isPaired;
- (BOOL)isSetup;
- (NSUUID)pairingID;
- (PDRDevice)init;
- (id)bluetoothIdentifier;
- (id)lastActiveDate;
- (id)pairingStorePath;
- (id)propertyNames;
- (id)valueForProperty:(id)property;
@end

@implementation PDRDevice

- (BOOL)isAltAccount
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsAltAccount);

  return v3 & 1;
}

- (PDRDevice)init
{
  v3.receiver = self;
  v3.super_class = PDRDevice;
  return [(PDRDevice *)&v3 init];
}

- (BOOL)isArchived
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsArchived);

  return v3 & 1;
}

- (BOOL)isActive
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsActive);

  return v3 & 1;
}

- (id)pairingStorePath
{
  selfCopy = self;
  v3 = PDRDevice.localPairingDataStorePath.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x2318DF040](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPaired
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsPaired);

  return v3 & 1;
}

- (BOOL)isSetup
{
  selfCopy = self;
  v3 = PDRDevice.isPaired()(PDRDevicePropertyKeyIsSetup);

  return v3 & 1;
}

- (id)lastActiveDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  PDRDevice.lastActiveDate()(v6);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (id)bluetoothIdentifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  PDRDevice.bluetoothIdentifier()(v7);

  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (NSUUID)pairingID
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)valueForProperty:(id)property
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)propertyNames
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

@end