@interface MUIMessageListSectionDataSourceChange
+ (id)added:(int64_t)a3 isFirstChange:(BOOL)a4;
+ (id)cleanSnapshot;
+ (id)failed;
+ (id)moved:(int64_t)a3;
+ (id)removed:(int64_t)a3;
+ (id)sectionRemoved:(id)a3;
+ (id)skipped;
+ (id)updated:(int64_t)a3;
- (BOOL)failed;
- (BOOL)hasChanges;
- (BOOL)isAddition;
- (BOOL)isCleanSnapshot;
- (BOOL)isFirstChange;
- (BOOL)isMove;
- (BOOL)isRemoval;
- (BOOL)isSectionRemoval;
- (BOOL)isUpdate;
- (BOOL)skipped;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)ef_publicDescription;
- (int64_t)numberOfChanges;
@end

@implementation MUIMessageListSectionDataSourceChange

+ (id)cleanSnapshot
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MUIMessageListSectionDataSourceChange.cleanSnapshot()();

  return v2;
}

- (BOOL)isCleanSnapshot
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isCleanSnapshot.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)failed
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.failed.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)skipped
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.skipped.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (NSString)ef_publicDescription
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.ef_publicDescription.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

+ (id)added:(int64_t)a3 isFirstChange:(BOOL)a4
{
  swift_getObjCClassMetadata();
  v6 = sub_214CCD394();
  swift_getObjCClassMetadata();
  v4 = static MUIMessageListSectionDataSourceChange.added(_:isFirstChange:)(a3, v6 & 1);

  return v4;
}

- (NSString)description
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.description.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

- (BOOL)hasChanges
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.hasChanges.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isRemoval
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isRemoval.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isUpdate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isUpdate.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isMove
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isMove.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isAddition
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isAddition.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isFirstChange
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isFirstChange.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (int64_t)numberOfChanges
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIMessageListSectionDataSourceChange.numberOfChanges.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

+ (id)removed:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MUIMessageListSectionDataSourceChange.removed(_:)(a3);

  return v3;
}

+ (id)moved:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MUIMessageListSectionDataSourceChange.moved(_:)(a3);

  return v3;
}

+ (id)updated:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MUIMessageListSectionDataSourceChange.updated(_:)(a3);

  return v3;
}

+ (id)skipped
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MUIMessageListSectionDataSourceChange.skipped()();

  return v2;
}

+ (id)failed
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MUIMessageListSectionDataSourceChange.failed()();

  return v2;
}

+ (id)sectionRemoved:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  v5 = static MUIMessageListSectionDataSourceChange.sectionRemoved(_:)(a3);
  MEMORY[0x277D82BD8](a3);

  return v5;
}

- (BOOL)isSectionRemoval
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.isSectionRemoval.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (NSString)debugDescription
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIMessageListSectionDataSourceChange.debugDescription.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

@end