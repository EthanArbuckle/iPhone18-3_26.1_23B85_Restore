@interface HFNetworkRouterServiceItem
+ (NSSet)supportedServiceTypes;
- (HFNetworkRouterServiceItem)initWithValueSource:(id)a3 service:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFNetworkRouterServiceItem

+ (NSSet)supportedServiceTypes
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

- (id)_subclass_updateWithOptions:(id)a3
{
  if (a3)
  {
    v4 = sub_20DD64DC4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = HFNetworkRouterServiceItem._subclass_update(options:)(v4);

  return v6;
}

- (HFNetworkRouterServiceItem)initWithValueSource:(id)a3 service:(id)a4
{
  v5.receiver = self;
  v5.super_class = HFNetworkRouterServiceItem;
  return [(HFServiceItem *)&v5 initWithValueSource:a3 service:a4];
}

@end