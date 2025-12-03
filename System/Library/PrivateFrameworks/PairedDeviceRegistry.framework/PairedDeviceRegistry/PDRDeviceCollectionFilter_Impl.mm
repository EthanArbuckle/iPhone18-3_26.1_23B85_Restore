@interface PDRDeviceCollectionFilter_Impl
- (NSArray)all;
- (PDRDevice)final;
- (PDRDeviceCollectionFilter)active;
- (PDRDeviceCollectionFilter)altAccount;
- (PDRDeviceCollectionFilter)archived;
- (PDRDeviceCollectionFilter)notActive;
- (PDRDeviceCollectionFilter)notAltAccount;
- (PDRDeviceCollectionFilter)notArchived;
- (PDRDeviceCollectionFilter)notPaired;
- (PDRDeviceCollectionFilter)notSetup;
- (PDRDeviceCollectionFilter)paired;
- (PDRDeviceCollectionFilter)setup;
- (PDRDeviceCollectionFilter_Impl)init;
@end

@implementation PDRDeviceCollectionFilter_Impl

- (PDRDeviceCollectionFilter_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PDRDeviceCollectionFilter)active
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isActive);

  return v3;
}

- (PDRDeviceCollectionFilter)notActive
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isActive);

  return v3;
}

- (PDRDeviceCollectionFilter)setup
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isSetup);

  return v3;
}

- (PDRDeviceCollectionFilter)notSetup
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isSetup);

  return v3;
}

- (PDRDeviceCollectionFilter)paired
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isPaired);

  return v3;
}

- (PDRDeviceCollectionFilter)notPaired
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isPaired);

  return v3;
}

- (PDRDeviceCollectionFilter)archived
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isArchived);

  return v3;
}

- (PDRDeviceCollectionFilter)notArchived
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isArchived);

  return v3;
}

- (PDRDeviceCollectionFilter)altAccount
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isAltAccount);

  return v3;
}

- (PDRDeviceCollectionFilter)notAltAccount
{
  selfCopy = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(selfCopy, &selRef_isAltAccount);

  return v3;
}

- (PDRDevice)final
{
  selfCopy = self;
  v3 = DeviceCollectionFilter_Impl.final.getter();

  return v3;
}

- (NSArray)all
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 4);

  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v7 = *(&self->super.super.isa + v3);

  os_unfair_lock_unlock(v7 + 4);

  type metadata accessor for PDRDevice();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end