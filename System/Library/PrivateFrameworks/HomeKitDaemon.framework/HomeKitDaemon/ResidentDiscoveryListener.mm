@interface ResidentDiscoveryListener
- (_TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener)init;
- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error;
- (void)residentDeviceManager:(id)manager didNotCompleteDiscoveryWithError:(id)error;
@end

@implementation ResidentDiscoveryListener

- (_TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener)init
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D878, "6o\b");
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ResidentDiscoveryListener();
  return [(ResidentDiscoveryListener *)&v6 init];
}

- (void)residentDeviceManager:(id)manager didCompleteDiscoveryWithPrimaryResidentDevice:(id)device error:(id)error
{
  swift_unknownObjectRetain();
  deviceCopy = device;
  selfCopy = self;
  errorCopy = error;
  sub_2295B8F44(device, error);
  swift_unknownObjectRelease();
}

- (void)residentDeviceManager:(id)manager didNotCompleteDiscoveryWithError:(id)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  errorCopy = error;
  sub_2295B916C(error);
  swift_unknownObjectRelease();
}

@end