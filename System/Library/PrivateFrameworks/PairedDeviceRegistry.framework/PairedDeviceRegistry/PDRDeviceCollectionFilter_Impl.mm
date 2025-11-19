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
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isActive);

  return v3;
}

- (PDRDeviceCollectionFilter)notActive
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isActive);

  return v3;
}

- (PDRDeviceCollectionFilter)setup
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isSetup);

  return v3;
}

- (PDRDeviceCollectionFilter)notSetup
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isSetup);

  return v3;
}

- (PDRDeviceCollectionFilter)paired
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isPaired);

  return v3;
}

- (PDRDeviceCollectionFilter)notPaired
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isPaired);

  return v3;
}

- (PDRDeviceCollectionFilter)archived
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isArchived);

  return v3;
}

- (PDRDeviceCollectionFilter)notArchived
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isArchived);

  return v3;
}

- (PDRDeviceCollectionFilter)altAccount
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isAltAccount);

  return v3;
}

- (PDRDeviceCollectionFilter)notAltAccount
{
  v2 = self;
  v3 = specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(v2, &selRef_isAltAccount);

  return v3;
}

- (PDRDevice)final
{
  v2 = self;
  v3 = DeviceCollectionFilter_Impl.final.getter();

  return v3;
}

- (NSArray)all
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);
  v5 = self;

  os_unfair_lock_lock(v4 + 4);

  v6 = *(&v5->super.super.isa + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v7 = *(&self->super.super.isa + v3);

  os_unfair_lock_unlock(v7 + 4);

  type metadata accessor for PDRDevice();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end