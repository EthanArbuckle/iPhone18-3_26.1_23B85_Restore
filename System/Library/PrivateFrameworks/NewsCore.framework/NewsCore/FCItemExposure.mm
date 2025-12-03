@interface FCItemExposure
- (BOOL)isEqual:(id)equal;
- (FCItemExposure)init;
- (FCItemExposure)initWithItemID:(id)d exposedAt:(id)at version:(int64_t)version;
- (FCItemExposure)initWithItemID:(id)d firstExposedAt:(id)at lastExposedAt:(id)exposedAt maxExposedVersion:(int64_t)version maxExposedVersionFirstExposedAt:(id)firstExposedAt;
- (NSString)description;
- (NSString)itemID;
- (int64_t)hash;
@end

@implementation FCItemExposure

- (NSString)itemID
{
  v2 = *(self + OBJC_IVAR___FCItemExposure_itemID);
  v3 = *(self + OBJC_IVAR___FCItemExposure_itemID + 8);

  v4 = sub_1B67D963C();

  return v4;
}

- (FCItemExposure)initWithItemID:(id)d firstExposedAt:(id)at lastExposedAt:(id)exposedAt maxExposedVersion:(int64_t)version maxExposedVersionFirstExposedAt:(id)firstExposedAt
{
  v27[1] = firstExposedAt;
  versionCopy = version;
  ObjectType = swift_getObjectType();
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v27 - v17;
  v19 = sub_1B67D964C();
  v21 = v20;
  sub_1B67D874C();
  sub_1B67D874C();
  sub_1B67D874C();
  v22 = (self + OBJC_IVAR___FCItemExposure_itemID);
  *v22 = v19;
  v22[1] = v21;
  v23 = v9[2];
  v23(self + OBJC_IVAR___FCItemExposure_firstExposedAt, v18, v8);
  v23(self + OBJC_IVAR___FCItemExposure_lastExposedAt, v16, v8);
  v23(self + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v13, v8);
  *(self + OBJC_IVAR___FCItemExposure_maxExposedVersion) = versionCopy;
  v30.receiver = self;
  v30.super_class = ObjectType;
  v24 = [(FCItemExposure *)&v30 init];
  v25 = v9[1];
  v25(v13, v8);
  v25(v16, v8);
  v25(v18, v8);
  return v24;
}

- (FCItemExposure)initWithItemID:(id)d exposedAt:(id)at version:(int64_t)version
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D964C();
  v15 = v14;
  sub_1B67D874C();
  v16 = (self + OBJC_IVAR___FCItemExposure_itemID);
  *v16 = v13;
  v16[1] = v15;
  v17 = *(v9 + 16);
  v17(self + OBJC_IVAR___FCItemExposure_firstExposedAt, v12, v8);
  v17(self + OBJC_IVAR___FCItemExposure_lastExposedAt, v12, v8);
  *(self + OBJC_IVAR___FCItemExposure_maxExposedVersion) = version;
  v17(self + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v12, v8);
  v20.receiver = self;
  v20.super_class = ObjectType;
  v18 = [(FCItemExposure *)&v20 init];
  (*(v9 + 8))(v12, v8);
  return v18;
}

- (NSString)description
{
  selfCopy = self;
  ItemExposure.shortDescription.getter(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1B67D897C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_1B67D963C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  sub_1B6415FF0(v12, v10, &qword_1EB94B738, &unk_1B6819580);
  if (!v11)
  {
    sub_1B64E6418(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(self, v9);

LABEL_9:
  sub_1B64E6418(v12);
  return v7 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ItemExposure.hash.getter();

  return v3;
}

- (FCItemExposure)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end