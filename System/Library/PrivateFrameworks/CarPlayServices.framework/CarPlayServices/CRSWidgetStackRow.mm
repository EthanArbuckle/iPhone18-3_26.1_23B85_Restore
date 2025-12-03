@interface CRSWidgetStackRow
- (BOOL)isEqual:(id)equal;
- (CRSWidgetStackRow)init;
- (CRSWidgetStackRow)initWithStacks:(id)stacks;
- (NSArray)stacks;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSWidgetStackRow

- (NSArray)stacks
{
  v2 = *(self + OBJC_IVAR___CRSWidgetStackRow_stacks);
  type metadata accessor for CRSWidgetStack(0);

  v3 = sub_242FCB31C();

  return v3;
}

- (CRSWidgetStackRow)initWithStacks:(id)stacks
{
  type metadata accessor for CRSWidgetStack(0);
  *(self + OBJC_IVAR___CRSWidgetStackRow_stacks) = sub_242FCB32C();
  v5.receiver = self;
  v5.super_class = CRSWidgetStackRow;
  return [(CRSWidgetStackRow *)&v5 init];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_242FC2BEC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  stacks = [(CRSWidgetStackRow *)selfCopy stacks];
  if (!stacks)
  {
    type metadata accessor for CRSWidgetStack(0);
    sub_242FCB32C();
    stacks = sub_242FCB31C();
  }

  v7 = sub_242FCB2DC();
  [coderCopy encodeObject:stacks forKey:v7];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_242FCB3BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRSWidgetStackRow.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  stacks = [(CRSWidgetStackRow *)selfCopy stacks];
  type metadata accessor for CRSWidgetStack(0);
  sub_242FCB32C();

  sub_242FC3A88();
  v4 = sub_242FCB34C();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  stacks = [(CRSWidgetStackRow *)selfCopy stacks];
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