@interface HFMatterAccessoryRepresentable
- (BOOL)hf_canShowInControlCenter;
- (BOOL)hf_isIdentifiable;
- (BOOL)hf_isInRoom:(id)room;
- (BOOL)hf_showInHomeDashboard;
- (BOOL)isEqual:(id)equal;
- (Class)hf_itemClass;
- (HFAccessoryType)hf_accessoryType;
- (HFMatterAccessoryRepresentable)init;
- (HFServiceNameComponents)hf_serviceNameComponents;
- (HMRoom)hf_safeRoom;
- (NSSet)hf_associatedAccessories;
- (NSString)hf_iconIdentifier;
- (NSString)hf_tileSize;
- (id)hf_moveToRoom:(id)room;
- (id)hf_setTileSize:(id)size;
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
  selfCopy = self;
  canShowInControl = MatterAccessoryRepresentable.__hf_canShowInControlCenter.getter();

  return canShowInControl & 1;
}

- (HMRoom)hf_safeRoom
{
  room = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) room];

  return room;
}

- (BOOL)hf_isIdentifiable
{
  selfCopy = self;
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

- (BOOL)hf_isInRoom:(id)room
{
  roomCopy = room;
  selfCopy = self;
  LOBYTE(self) = MatterAccessoryRepresentable.__hf_is(in:)(roomCopy);

  return self & 1;
}

- (id)hf_moveToRoom:(id)room
{
  v3 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:room moveToRoom:?];

  return v3;
}

- (HFAccessoryType)hf_accessoryType
{
  selfCopy = self;
  v3 = MatterAccessoryRepresentable.__hf_accessoryType.getter();

  return v3;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  hf_serviceNameComponents = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_serviceNameComponents];

  return hf_serviceNameComponents;
}

- (BOOL)hf_showInHomeDashboard
{
  v2 = *(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory);
  selfCopy = self;
  LOBYTE(v2) = sub_20DD65314();

  return v2 & 1;
}

- (NSString)hf_tileSize
{
  hf_tileSize = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf_tileSize];

  return hf_tileSize;
}

- (id)hf_setTileSize:(id)size
{
  v3 = [*(&self->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) hf:size setTileSize:?];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20DD654E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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
  selfCopy = self;
  sub_20DD63FA4();
  uniqueIdentifier = [*(&selfCopy->super.isa + OBJC_IVAR___HFMatterAccessoryRepresentable_accessory) uniqueIdentifier];
  sub_20DD63714();

  sub_20DD63724();
  (*(v4 + 8))(v7, v3);
  v10 = sub_20DD65A94();

  return v10;
}

- (NSString)hf_iconIdentifier
{
  selfCopy = self;
  MatterAccessoryRepresentable.__hf_iconIdentifier.getter();

  v3 = sub_20DD64E74();

  return v3;
}

@end