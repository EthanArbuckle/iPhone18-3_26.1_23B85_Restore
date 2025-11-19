@interface HFProgrammableSwitchServiceItem
+ (NSSet)supportedServiceTypes;
- (HFProgrammableSwitchServiceItem)initWithValueSource:(id)a3 service:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFProgrammableSwitchServiceItem

+ (NSSet)supportedServiceTypes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  v3 = *MEMORY[0x277CD0F00];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v4;
  sub_20D9EE93C(inited);
  swift_setDeallocating();
  sub_20DA057B4(inited + 32);
  v5 = sub_20DD651C4();

  return v5;
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
  v6 = HFProgrammableSwitchServiceItem._subclass_update(options:)(v4);

  return v6;
}

- (HFProgrammableSwitchServiceItem)initWithValueSource:(id)a3 service:(id)a4
{
  v5.receiver = self;
  v5.super_class = HFProgrammableSwitchServiceItem;
  return [(HFServiceItem *)&v5 initWithValueSource:a3 service:a4];
}

@end