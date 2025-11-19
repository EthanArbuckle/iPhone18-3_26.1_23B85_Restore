@interface HFMatterAccessoryRepresentable
- (BOOL)hf_canShowInControlCenter;
- (BOOL)hf_isIdentifiable;
- (BOOL)hf_isInRoom:(id)a3;
- (BOOL)hf_showInHomeDashboard;
- (BOOL)isEqual:(id)a3;
- (Class)hf_itemClass;
- (HFAccessoryType)hf_accessoryType;
- (HFMatterAccessoryRepresentable)init;
- (HFServiceNameComponents)hf_serviceNameComponents;
- (HMRoom)hf_safeRoom;
- (NSSet)hf_associatedAccessories;
- (NSString)hf_iconIdentifier;
- (NSString)hf_tileSize;
- (id)hf_moveToRoom:(id)a3;
- (id)hf_setTileSize:(id)a3;
- (int64_t)hash;
@end

@implementation HFMatterAccessoryRepresentable

- (HFMatterAccessoryRepresentable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (Class)hf_itemClass
{
  type metadata accessor for MatterAccessoryLikeItem();

  return swift_getObjCClassFromMetadata();
}

- (BOOL)hf_canShowInControlCenter
{
  v2 = self;
  canShowInControl = MatterAccessoryRepresentable.__hf_canShowInControlCenter.getter();

  return canShowInControl & 1;
}

- (HMRoom)hf_safeRoom
{
  v2 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];

  return v2;
}

- (BOOL)hf_isIdentifiable
{
  v2 = self;
  v3 = MatterAccessoryRepresentable.__hf_isIdentifiable.getter();

  return v3 & 1;
}

- (NSSet)hf_associatedAccessories
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  v4 = *(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  *(inited + 32) = v4;
  v5 = v4;
  sub_20D9EE8D0(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  v7 = sub_20DD651C4();

  return v7;
}

- (BOOL)hf_isInRoom:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MatterAccessoryRepresentable.__hf_is(in:)(v4);

  return self & 1;
}

- (id)hf_moveToRoom:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a3 moveToRoom:?];

  return v3;
}

- (HFAccessoryType)hf_accessoryType
{
  v2 = self;
  v3 = MatterAccessoryRepresentable.__hf_accessoryType.getter();

  return v3;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_serviceNameComponents];

  return v2;
}

- (BOOL)hf_showInHomeDashboard
{
  v2 = *(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  v3 = self;
  LOBYTE(v2) = sub_20DD65314();

  return v2 & 1;
}

- (NSString)hf_tileSize
{
  v2 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_tileSize];

  return v2;
}

- (id)hf_setTileSize:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:a3 setTileSize:?];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20DD654E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MatterAccessoryRepresentable.isEqual(_:)(v8);

  sub_20D9D76EC(v8, &unk_27C843A80, &qword_20DD94100);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65AB4();
  v8 = self;
  sub_20DD63FA4();
  v9 = [*(&v8->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63724();
  (*(v4 + 8))(v7, v3);
  v10 = sub_20DD65A94();

  return v10;
}

- (NSString)hf_iconIdentifier
{
  v2 = self;
  MatterAccessoryRepresentable.__hf_iconIdentifier.getter();

  v3 = sub_20DD64E74();

  return v3;
}

@end