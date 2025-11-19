@interface CustomReplacementRegularExpression
- (_TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression)initWithCoder:(id)a3;
- (_TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression)initWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)replacementStringForResult:(id)a3 inString:(id)a4 offset:(int64_t)a5 template:(id)a6;
@end

@implementation CustomReplacementRegularExpression

- (_TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression)initWithCoder:(id)a3
{
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

- (id)replacementStringForResult:(id)a3 inString:(id)a4 offset:(int64_t)a5 template:(id)a6
{
  v8 = sub_2150A4AD0();
  v10 = v9;
  v11 = *(&self->super.super.isa + OBJC_IVAR____TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression_replaceBlock);
  v12 = a3;
  v13 = self;
  sub_215066F3C(v12, v8, v10, v19);
  v16[0] = v19[0];
  v16[1] = v19[1];
  v17 = v20;
  v18 = v21;
  v11(v16);

  v14 = sub_2150A4A90();

  return v14;
}

- (_TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression)initWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end