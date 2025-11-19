@interface MNTraceSelectStatementBuilder
- (_TtC10Navigation29MNTraceSelectStatementBuilder)init;
- (_TtC10Navigation29MNTraceSelectStatementBuilder)initWithTrace:(id)a3 tableName:(id)a4;
- (id)selectStatement;
- (id)selectStatementWithError:(id *)a3;
- (void)addColumn:(id)a3;
- (void)addColumns:(id)a3;
- (void)innerJoin:(id)a3 where:(id)a4 equals:(id)a5;
@end

@implementation MNTraceSelectStatementBuilder

- (_TtC10Navigation29MNTraceSelectStatementBuilder)initWithTrace:(id)a3 tableName:(id)a4
{
  v6 = sub_1D32770C0();
  *(&self->super.isa + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__joinClauses) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__trace) = a3;
  v7 = (self + OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__tableName);
  *v7 = v6;
  v7[1] = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MNTraceSelectStatementBuilder();
  v9 = a3;
  return [(MNTraceSelectStatementBuilder *)&v11 init];
}

- (void)addColumn:(id)a3
{
  v4 = sub_1D32770C0();
  v6 = v5;
  v7 = OBJC_IVAR____TtC10Navigation29MNTraceSelectStatementBuilder__columns;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D3141080(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D3141080((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)addColumns:(id)a3
{
  v4 = sub_1D32771A0();
  swift_beginAccess();
  v5 = self;
  sub_1D31400F8(v4);
  swift_endAccess();
}

- (void)innerJoin:(id)a3 where:(id)a4 equals:(id)a5
{
  v6 = sub_1D32770C0();
  v8 = v7;
  v9 = sub_1D32770C0();
  v11 = v10;
  v12 = sub_1D32770C0();
  v14 = v13;
  v15 = self;
  sub_1D3140398(v6, v8, v9, v11, v12, v14);
}

- (id)selectStatementWithError:(id *)a3
{
  v3 = self;
  v4 = sub_1D314068C();

  return v4;
}

- (id)selectStatement
{
  v2 = self;
  v3 = sub_1D3140AE4();

  return v3;
}

- (_TtC10Navigation29MNTraceSelectStatementBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end