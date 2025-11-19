@interface CRSWidgetStackRow
- (BOOL)isEqual:(id)a3;
- (CRSWidgetStackRow)init;
- (CRSWidgetStackRow)initWithStacks:(id)a3;
- (NSArray)stacks;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSWidgetStackRow

- (NSArray)stacks
{
  v2 = *(self + OBJC_IVAR___CRSWidgetStackRow_stacks);
  type metadata accessor for CRSWidgetStack(0);

  v3 = sub_242FCB31C();

  return v3;
}

- (CRSWidgetStackRow)initWithStacks:(id)a3
{
  type metadata accessor for CRSWidgetStack(0);
  *(self + OBJC_IVAR___CRSWidgetStackRow_stacks) = sub_242FCB32C();
  v5.receiver = self;
  v5.super_class = CRSWidgetStackRow;
  return [(CRSWidgetStackRow *)&v5 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_242FC2BEC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CRSWidgetStackRow *)v5 stacks];
  if (!v6)
  {
    type metadata accessor for CRSWidgetStack(0);
    sub_242FCB32C();
    v6 = sub_242FCB31C();
  }

  v7 = sub_242FCB2DC();
  [v4 encodeObject:v6 forKey:v7];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_242FCB3BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRSWidgetStackRow.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(CRSWidgetStackRow *)v2 stacks];
  type metadata accessor for CRSWidgetStack(0);
  sub_242FCB32C();

  sub_242FC3A88();
  v4 = sub_242FCB34C();

  return v4;
}

- (NSString)description
{
  v2 = self;
  v3 = [(CRSWidgetStackRow *)v2 stacks];
  v4 = type metadata accessor for CRSWidgetStack(0);
  v5 = sub_242FCB32C();

  MEMORY[0x245D28B00](v5, v4);

  v6 = sub_242FCB2DC();

  return v6;
}

- (CRSWidgetStackRow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end