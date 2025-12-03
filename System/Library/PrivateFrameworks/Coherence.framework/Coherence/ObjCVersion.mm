@interface ObjCVersion
- (BOOL)contains:(id)contains;
- (BOOL)hasDeltaTo:(id)to;
- (BOOL)hasTemporaryComponents;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSArray)sortedUUIDs;
- (NSString)description;
- (_TtC9Coherence11ObjCVersion)init;
- (id)copy;
- (id)temporaryComponentsWithExcluding:(id)excluding;
- (int64_t)compareTo:(id)to;
- (int64_t)maxCounter;
- (void)apply:(id)apply;
- (void)insertWithRange:(_NSRange)range replica:(id)replica;
- (void)merge:(id)merge;
- (void)subtract:(id)subtract;
- (void)subtractWithRange:(_NSRange)range replica:(id)replica;
@end

@implementation ObjCVersion

- (_TtC9Coherence11ObjCVersion)init
{
  v2 = MEMORY[0x1E69E7CC8];
  v3 = (&self->super.isa + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  *v3 = MEMORY[0x1E69E7CC8];
  v3[1] = v2;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ObjCVersion();
  return [(ObjCVersion *)&v5 init];
}

- (NSArray)sortedUUIDs
{
  selfCopy = self;
  sub_1ADDEE708();

  sub_1AE23BFEC();
  v3 = sub_1AE23CFCC();

  return v3;
}

- (id)temporaryComponentsWithExcluding:(id)excluding
{
  excludingCopy = excluding;
  selfCopy = self;
  v7 = sub_1ADE003BC(excluding);

  return v7;
}

- (void)subtract:(id)subtract
{
  v5 = (subtract + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  swift_beginAccess();
  subtractCopy = subtract;
  selfCopy = self;

  sub_1ADE00714(v10);
  sub_1ADE00714(v6);
  swift_endAccess();
}

- (void)insertWithRange:(_NSRange)range replica:(id)replica
{
  length = range.length;
  location = range.location;
  replicaCopy = replica;
  selfCopy = self;
  sub_1ADE0D908(location, length, replicaCopy);
}

- (BOOL)isEmpty
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  return !*(v2[1] + 16) && *(*v2 + 16) == 0;
}

- (int64_t)maxCounter
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  sub_1ADF62304(v10, v6);

  v11 = type metadata accessor for Timestamp(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_1ADDCEDE0(v6, &qword_1EB5BA480, &qword_1AE25AAE0);
    return -1;
  }

  else
  {
    v12 = *&v6[*(v11 + 20)];
    sub_1ADE0DCEC(v6, type metadata accessor for Timestamp);
  }

  return v12;
}

- (BOOL)hasTemporaryComponents
{
  v2 = self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  return *(*(v2 + 1) + 16) != 0;
}

- (BOOL)hasDeltaTo:(id)to
{
  v5 = (to + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  toCopy = to;
  selfCopy = self;

  if (sub_1ADF637A8(v7, v10))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ADF637A8(v6, v9);
  }

  return v13 & 1;
}

- (int64_t)compareTo:(id)to
{
  v5 = (self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (to + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v15 = 0;
  toCopy = to;
  selfCopy = self;

  sub_1ADF6457C(v13, &v15, v7);
  sub_1ADF6457C(v9, &v15, v6);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1AE22718C(v8);

  sub_1ADDCEDE0(v8, &qword_1EB5BAA00, &qword_1AE2587A0);
  return v6 & 1;
}

- (id)copy
{
  v3 = (self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = type metadata accessor for ObjCVersion();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
  v9 = MEMORY[0x1E69E7CC8];
  *v8 = MEMORY[0x1E69E7CC8];
  *(v8 + 1) = v9;
  swift_beginAccess();
  v10 = *v8;
  v11 = *(v8 + 1);
  *v8 = v5;
  *(v8 + 1) = v4;
  selfCopy = self;

  v15.receiver = v7;
  v15.super_class = v6;
  v13 = [(ObjCVersion *)&v15 init];

  return v13;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  selfCopy = self;
  LOBYTE(self) = sub_1AE227454(containsCopy);

  return self & 1;
}

- (void)subtractWithRange:(_NSRange)range replica:(id)replica
{
  length = range.length;
  location = range.location;
  replicaCopy = replica;
  selfCopy = self;
  sub_1AE227E4C(location, length, replicaCopy);
}

- (void)merge:(id)merge
{
  mergeCopy = merge;
  selfCopy = self;
  sub_1AE2280DC(mergeCopy);
}

- (void)apply:(id)apply
{
  v5 = *(apply + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames);
  v6 = *(apply + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 8);
  v7 = *(apply + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  swift_beginAccess();
  applyCopy = apply;
  selfCopy = self;

  sub_1ADDF8898(v5, v6, v7);
  swift_endAccess();
}

- (NSString)description
{
  v3 = OBJC_IVAR____TtC9Coherence11ObjCVersion_version;
  swift_beginAccess();
  v6 = *(&self->super.isa + v3);
  CRVersion.description.getter();
  v4 = sub_1AE23CCDC();

  return v4;
}

@end