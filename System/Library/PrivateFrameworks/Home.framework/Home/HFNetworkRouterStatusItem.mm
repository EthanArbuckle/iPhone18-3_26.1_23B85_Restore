@interface HFNetworkRouterStatusItem
+ (NSSet)serviceTypes;
- (HFNetworkRouterStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFNetworkRouterStatusItem

+ (NSSet)serviceTypes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  v3 = *MEMORY[0x277CD0F48];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CD0F50];
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v6;
  sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_20DD651C4();

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    sub_20DD64DC4();
  }

  selfCopy = self;
  updated = _sSo25HFNetworkRouterStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSDys11AnyHashableVypGSg_tF_0();

  return updated;
}

- (HFNetworkRouterStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source
{
  v6.receiver = self;
  v6.super_class = HFNetworkRouterStatusItem;
  return [(HFStatusItem *)&v6 initWithHome:home room:room valueSource:source];
}

@end