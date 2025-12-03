@interface CDPDFirstUnlockObserver
- (BOOL)currentDeviceUnlockedForTheFirstTime;
- (CDPDFirstUnlockObserver)init;
- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults localDevice:(id)device bootSessionID:(id)d;
- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults urlBag:(id)bag localDevice:(id)device bootSessionID:(id)d;
- (NSArray)listeners;
- (NSUUID)bootSessionID;
- (NSUUID)savedBootSessionID;
- (void)reactTo:(const char *)to;
- (void)registerListener:(id)listener;
- (void)setListeners:(id)listeners;
@end

@implementation CDPDFirstUnlockObserver

- (NSArray)listeners
{
  v2 = *(self + OBJC_IVAR___CDPDFirstUnlockObserver_listeners);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  v3 = sub_245193904();

  return v3;
}

- (void)setListeners:(id)listeners
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  v4 = sub_245193914();
  v5 = *(self + OBJC_IVAR___CDPDFirstUnlockObserver_listeners);
  *(self + OBJC_IVAR___CDPDFirstUnlockObserver_listeners) = v4;
}

- (NSUUID)bootSessionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_245183998(*(self + OBJC_IVAR___CDPDFirstUnlockObserver_bootSessionIDWrapper) + OBJC_IVAR____TtC15CoreCDPInternalP33_CCDB1C447E12AE43C6597553DD12C27C11UUIDWrapper_value, &v13 - v5, &qword_27EE0C508, &qword_24519A198);
  v7 = sub_2451937C4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2451937A4();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults localDevice:(id)device bootSessionID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  if (d)
  {
    sub_2451937B4();
    v12 = sub_2451937C4();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_2451937C4();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  defaultsCopy = defaults;
  deviceCopy = device;
  v16 = sub_245183A70(defaultsCopy, deviceCopy, v11);

  return v16;
}

- (CDPDFirstUnlockObserver)initWithUserDefaults:(id)defaults urlBag:(id)bag localDevice:(id)device bootSessionID:(id)d
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  if (d)
  {
    sub_2451937B4();
    v14 = sub_2451937C4();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_2451937C4();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  return sub_245180064(defaults, bag, device, v13);
}

- (void)registerListener:(id)listener
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2451802F8();
  swift_unknownObjectRelease();
}

- (void)reactTo:(const char *)to
{
  selfCopy = self;
  sub_245180484(to);
}

- (BOOL)currentDeviceUnlockedForTheFirstTime
{
  selfCopy = self;
  v3 = sub_2451818B4();

  return v3 & 1;
}

- (NSUUID)savedBootSessionID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_2451823E8(v6);

  v8 = sub_2451937C4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2451937A4();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (CDPDFirstUnlockObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end