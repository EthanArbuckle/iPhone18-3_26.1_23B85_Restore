@interface ObjCVersion
- (BOOL)contains:(id)a3;
- (BOOL)hasDeltaTo:(id)a3;
- (BOOL)hasTemporaryComponents;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSArray)sortedUUIDs;
- (NSString)description;
- (_TtC9Coherence11ObjCVersion)init;
- (id)copy;
- (id)temporaryComponentsWithExcluding:(id)a3;
- (int64_t)compareTo:(id)a3;
- (int64_t)maxCounter;
- (void)apply:(id)a3;
- (void)insertWithRange:(_NSRange)a3 replica:(id)a4;
- (void)merge:(id)a3;
- (void)subtract:(id)a3;
- (void)subtractWithRange:(_NSRange)a3 replica:(id)a4;
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
  v2 = self;
  sub_1ADDEE708();

  sub_1AE23BFEC();
  v3 = sub_1AE23CFCC();

  return v3;
}

- (id)temporaryComponentsWithExcluding:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1ADE003BC(a3);

  return v7;
}

- (void)subtract:(id)a3
{
  v5 = (a3 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  swift_beginAccess();
  v8 = a3;
  v9 = self;

  sub_1ADE00714(v10);
  sub_1ADE00714(v6);
  swift_endAccess();
}

- (void)insertWithRange:(_NSRange)a3 replica:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = self;
  sub_1ADE0D908(location, length, v7);
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
  v9 = self;

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

- (BOOL)hasDeltaTo:(id)a3
{
  v5 = (a3 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = a3;
  v12 = self;

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

- (int64_t)compareTo:(id)a3
{
  v5 = (self + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (a3 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v15 = 0;
  v11 = a3;
  v12 = self;

  sub_1ADF6457C(v13, &v15, v7);
  sub_1ADF6457C(v9, &v15, v6);

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1AE23D83C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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
  v12 = self;

  v15.receiver = v7;
  v15.super_class = v6;
  v13 = [(ObjCVersion *)&v15 init];

  return v13;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1AE227454(v4);

  return self & 1;
}

- (void)subtractWithRange:(_NSRange)a3 replica:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = self;
  sub_1AE227E4C(location, length, v7);
}

- (void)merge:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AE2280DC(v4);
}

- (void)apply:(id)a3
{
  v5 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames);
  v6 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 8);
  v7 = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 16);
  swift_beginAccess();
  v8 = a3;
  v9 = self;

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