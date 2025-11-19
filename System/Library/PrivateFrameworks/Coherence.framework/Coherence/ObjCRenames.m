@interface ObjCRenames
- (NSString)description;
- (_TtC9Coherence11ObjCRenames)init;
- (id)renamed:(id)a3;
- (id)renamed:(int64_t)a3 replica:(id)a4;
- (id)renamedWithRange:(_NSRange)a3 replica:(id)a4;
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

- (id)renamed:(int64_t)a3 replica:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_1AE2232A0(a3, v6);

  return v8;
}

- (id)renamed:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1AE22378C(v4);

  return v6;
}

- (id)renamedWithRange:(_NSRange)a3 replica:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = self;
  v9 = sub_1AE223EC0(location, length, v7);

  return v9;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence11ObjCRenames_renames);
  v3 = self->renames[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  v4 = *&self->renames[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames + 8];
  v5 = self;

  sub_1AE221C28(v2, v3, v4);

  v6 = sub_1AE23CCDC();

  return v6;
}

@end