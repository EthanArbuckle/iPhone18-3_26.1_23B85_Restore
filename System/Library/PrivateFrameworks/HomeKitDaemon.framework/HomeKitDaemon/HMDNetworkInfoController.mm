@interface HMDNetworkInfoController
- (HMDNetworkInfoController)init;
- (id)obtainNetworkInfoProto;
- (void)start;
@end

@implementation HMDNetworkInfoController

- (HMDNetworkInfoController)init
{
  type metadata accessor for NetworkInfoSCDataSource();
  v3 = swift_allocObject();
  v4 = sub_2298047A4(v3);
  swift_getObjectType();
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)start
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = self;
  v4 = sub_22A4DD5AC();
  v5 = SCDynamicStoreCreate(v2, v4, 0, 0);

  v6 = *(&v3->super.isa + OBJC_IVAR___HMDNetworkInfoController_store);
  *(&v3->super.isa + OBJC_IVAR___HMDNetworkInfoController_store) = v5;
}

- (id)obtainNetworkInfoProto
{
  v2 = self;
  NetworkInfoController.obtainNetworkInfoProto()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A88, &qword_22A582310);
  v3 = sub_22A4DD47C();

  return v3;
}

@end