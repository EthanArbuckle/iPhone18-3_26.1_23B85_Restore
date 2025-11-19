@interface ResidentDiscoveryListener
- (_TtC13HomeKitDaemonP33_8BAA1CB4456490773E1DD9AD12A50A5425ResidentDiscoveryListener)init;
- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5;
- (void)residentDeviceManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4;
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

- (void)residentDeviceManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 error:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  v10 = a5;
  sub_2295B8F44(a4, a5);
  swift_unknownObjectRelease();
}

- (void)residentDeviceManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = a4;
  sub_2295B916C(a4);
  swift_unknownObjectRelease();
}

@end