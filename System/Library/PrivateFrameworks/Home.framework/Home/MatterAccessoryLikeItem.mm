@interface MatterAccessoryLikeItem
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (HFHomeKitObject)homeKitObject;
- (HMHome)home;
- (NSSet)services;
- (_TtC4Home23MatterAccessoryLikeItem)init;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(void *)zone;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)home;
@end

@implementation MatterAccessoryLikeItem

- (HFHomeKitObject)homeKitObject
{
  hf_homeKitObject = [*(&self->super.super.super.isa + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) hf_homeKitObject];

  return hf_homeKitObject;
}

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = _s4Home23MatterAccessoryLikeItemC04withC19RepresentableObject_11valueSourceACXDSgSo011HFAccessoryG0_p_So021HFCharacteristicValueJ0_ptFZ_0(object);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v5;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_20D9FD61C(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_20DD65964();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (_TtC4Home23MatterAccessoryLikeItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithValueSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = MatterAccessoryLikeItem.copy(with:)();
  swift_unknownObjectRelease();

  return v5;
}

- (HMHome)home
{
  home = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable) + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) home];

  return home;
}

- (NSSet)services
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    sub_20D9EE59C(MEMORY[0x277D84F90]);
  }

  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20D9EC18C(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
  v2 = sub_20DD651C4();

  return v2;
}

- (id)accessories
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  selfCopy = self;
  hf_associatedAccessories = [v2 hf_associatedAccessories];
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  sub_20DD651E4();

  v5 = sub_20DD651C4();

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  initWithHomeKitObject_ = [objc_allocWithZone(HFNamingComponents) initWithHomeKitObject_];

  return initWithHomeKitObject_;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable);
  selfCopy = self;
  hf_homeKitObject = [v3 hf_homeKitObject];
  home = [(MatterAccessoryLikeItem *)selfCopy home];
  v7 = [objc_allocWithZone(HFAccessoryBuilder) initWithExistingObject:hf_homeKitObject inHome:home];
  swift_unknownObjectRelease();

  return v7;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  v6 = MatterAccessoryLikeItem.currentStateActionBuilders(for:)(homeCopy);

  return v6;
}

@end