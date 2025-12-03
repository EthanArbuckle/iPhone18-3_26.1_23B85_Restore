@interface HFAccessoryListUtilities
+ (NSArray)sortedAccessoryTypeGroups;
+ (id)accessoryRepresentableItemForAccessoryRepresentable:(id)representable valueSource:(id)source;
+ (id)accessoryRepresentableObjectsFromAccessoryLikeObjects:(id)objects objectLevel:(unint64_t)level accessoryTypeGroups:(id)groups;
+ (id)createAccessoryCategorySectionsWithItems:(id)items inHome:(id)home sectionIdentifierBlock:(id)block;
+ (id)createRoomSectionsWithItems:(id)items inHome:(id)home sectionIdentifierBlock:(id)block;
+ (id)uniqueAccessoryRepresentablesIn:(id)in;
- (HFAccessoryListUtilities)init;
@end

@implementation HFAccessoryListUtilities

- (HFAccessoryListUtilities)init
{
  v3.receiver = self;
  v3.super_class = HFAccessoryListUtilities;
  return [(HFAccessoryListUtilities *)&v3 init];
}

+ (id)accessoryRepresentableObjectsFromAccessoryLikeObjects:(id)objects objectLevel:(unint64_t)level accessoryTypeGroups:(id)groups
{
  sub_20D9D7510(0, &qword_280E01F60, off_277DEF2B8);
  sub_20DA1A7C0();
  v7 = sub_20DD651E4();
  if (groups)
  {
    sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
    groups = sub_20DD64FD4();
  }

  swift_getObjCClassMetadata();
  static HFAccessoryListUtilities.accessoryRepresentableObjects(from:objectLevel:accessoryTypeGroups:)(v7, level, groups);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
  v8 = sub_20DD64FB4();

  return v8;
}

+ (id)uniqueAccessoryRepresentablesIn:(id)in
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
  v3 = sub_20DD64FD4();
  sub_20DA177D0(v3);

  v4 = sub_20DD64FB4();

  return v4;
}

+ (id)accessoryRepresentableItemForAccessoryRepresentable:(id)representable valueSource:(id)source
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!HFAccessoryRepresentable.itemClass.getter())
  {
    swift_unknownObjectRelease();
LABEL_6:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v6 = [swift_getObjCClassFromMetadata() itemWithAccessoryRepresentableObject:representable valueSource:source];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_7:
  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)createRoomSectionsWithItems:(id)items inHome:(id)home sectionIdentifierBlock:(id)block
{
  v6 = _Block_copy(block);
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v7 = sub_20DD64FD4();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v6);
  homeCopy = home;
  sub_20DA18984(v7, homeCopy, ObjCClassMetadata, v6);
  _Block_release(v6);
  _Block_release(v6);

  sub_20D9D7510(0, &qword_280E02130, off_277DEFC28);
  v10 = sub_20DD64FB4();

  return v10;
}

+ (id)createAccessoryCategorySectionsWithItems:(id)items inHome:(id)home sectionIdentifierBlock:(id)block
{
  v6 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844188, &qword_20DD949C8);
  v7 = sub_20DD64FD4();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v6);
  homeCopy = home;
  sub_20DA19F94(v7, ObjCClassMetadata, v6);
  _Block_release(v6);
  _Block_release(v6);

  sub_20D9D7510(0, &qword_280E02130, off_277DEFC28);
  v10 = sub_20DD64FB4();

  return v10;
}

+ (NSArray)sortedAccessoryTypeGroups
{
  _sSo24HFAccessoryListUtilitiesC4HomeE25sortedAccessoryTypeGroupsSaySo0aG5GroupCGvgZ_0();
  sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
  v2 = sub_20DD64FB4();

  return v2;
}

@end