@interface CRSWidgetStack
- (BOOL)isEqual:(id)a3;
- (CRSWidgetStack)init;
- (CRSWidgetStack)initWithID:(id)a3 widgets:(id)a4;
- (NSArray)_widgets;
- (NSArray)widgets;
- (NSString)description;
- (NSUUID)id;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)set_widgets:(id)a3;
@end

@implementation CRSWidgetStack

- (NSUUID)id
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(self + OBJC_IVAR___CRSWidgetStack__id) + *((*MEMORY[0x277D85000] & **(self + OBJC_IVAR___CRSWidgetStack__id)) + 0x58), v3);
  v8 = sub_242FCB28C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSArray)widgets
{
  v2 = [(CRSWidgetStack *)self _widgets];

  return v2;
}

- (NSArray)_widgets
{
  v2 = *(self + OBJC_IVAR___CRSWidgetStack__widgets);
  type metadata accessor for CRSWidget(0);

  v3 = sub_242FCB31C();

  return v3;
}

- (void)set_widgets:(id)a3
{
  type metadata accessor for CRSWidget(0);
  v4 = sub_242FCB32C();
  v5 = *(self + OBJC_IVAR___CRSWidgetStack__widgets);
  *(self + OBJC_IVAR___CRSWidgetStack__widgets) = v4;
}

- (CRSWidgetStack)initWithID:(id)a3 widgets:(id)a4
{
  v5 = sub_242FCB2CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_242FCB2AC();
  type metadata accessor for CRSWidget(0);
  v13 = sub_242FCB32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  (*(v6 + 16))(v10, v12, v5);
  *(self + OBJC_IVAR___CRSWidgetStack__id) = sub_242FC87E0(v10);
  *(self + OBJC_IVAR___CRSWidgetStack__widgets) = v13;
  v16.receiver = self;
  v16.super_class = CRSWidgetStack;
  v14 = [(CRSWidgetStack *)&v16 init];
  (*(v6 + 8))(v12, v5);
  return v14;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_242FC6CA0(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRSWidgetStack.encode(with:)(v4);
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

  v6 = CRSWidgetStack.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(CRSWidgetStack *)v8 id];
  sub_242FCB2AC();

  v10 = sub_242FCB2BC();
  (*(v4 + 8))(v7, v3);
  v11 = [(CRSWidgetStack *)v8 widgets];
  type metadata accessor for CRSWidget(0);
  sub_242FCB32C();

  sub_242FC8498(&qword_27ED5DB60, type metadata accessor for CRSWidget);
  v12 = sub_242FCB34C();

  return v12 ^ v10;
}

- (NSString)description
{
  v2 = self;
  CRSWidgetStack.description.getter();

  v3 = sub_242FCB2DC();

  return v3;
}

- (CRSWidgetStack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end