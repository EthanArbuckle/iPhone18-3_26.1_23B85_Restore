@interface ObjCRenames
- (NSString)description;
- (_TtC9Coherence11ObjCRenames)init;
- (id)renamed:(id)renamed;
- (id)renamed:(int64_t)renamed replica:(id)replica;
- (id)renamedWithRange:(_NSRange)range replica:(id)replica;
@end

@implementation ObjCRenames

- (_TtC9Coherence11ObjCRenames)init
{
  v3 = sub_1ADDEC7C0(MEMORY[0x1E69E7CC0]);
  v4 = self + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames;
  *v4 = -1;
  v4[8] = 0;
  *(v4 + 2) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ObjCRenames();
  return [(ObjCRenames *)&v6 init];
}

- (id)renamed:(int64_t)renamed replica:(id)replica
{
  replicaCopy = replica;
  selfCopy = self;
  v8 = sub_1AE2232A0(renamed, replicaCopy);

  return v8;
}

- (id)renamed:(id)renamed
{
  renamedCopy = renamed;
  selfCopy = self;
  v6 = sub_1AE22378C(renamedCopy);

  return v6;
}

- (id)renamedWithRange:(_NSRange)range replica:(id)replica
{
  length = range.length;
  location = range.location;
  replicaCopy = replica;
  selfCopy = self;
  v9 = sub_1AE223EC0(location, length, replicaCopy);

  return v9;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames);
  v3 = self->renames[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  v4 = *&self->renames[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 8];
  selfCopy = self;

  sub_1AE221C28(v2, v3, v4);

  v6 = sub_1AE23CCDC();

  return v6;
}

@end