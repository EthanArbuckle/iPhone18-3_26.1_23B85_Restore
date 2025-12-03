@interface CRSWidget
- (BOOL)isEqual:(id)equal;
- (CRSWidget)init;
- (CRSWidget)initWithID:(id)d chsWidget:(id)widget suggestionSource:(int64_t)source;
- (NSString)description;
- (NSUUID)id;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSWidget

- (NSUUID)id
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR___CRSWidget__id) + *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR___CRSWidget__id)) + 0x58), v3);
  v8 = sub_242FCB28C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (CRSWidget)initWithID:(id)d chsWidget:(id)widget suggestionSource:(int64_t)source
{
  sourceCopy = source;
  v7 = sub_242FCB2CC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_242FCB2AC();
  v15 = v8[2];
  v15(v12, v14, v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  v17 = objc_allocWithZone(v16);
  v15(&v17[*((*MEMORY[0x277D85000] & *v17) + 0x58)], v12, v7);
  v26.receiver = v17;
  v26.super_class = v16;
  widgetCopy = widget;
  v19 = [(CRSWidget *)&v26 init];
  v20 = v8[1];
  v20(v12, v7);
  *(&self->super.isa + OBJC_IVAR___CRSWidget__id) = v19;
  *(&self->super.isa + OBJC_IVAR___CRSWidget_chsWidget) = widgetCopy;
  *(&self->super.isa + OBJC_IVAR___CRSWidget_suggestionSource) = sourceCopy;
  v25.receiver = self;
  v25.super_class = CRSWidget;
  v21 = [(CRSWidget *)&v25 init];
  v20(v14, v7);
  return v21;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_242FC90C4(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_242FCB46C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRSWidget.encode(with:)(coderCopy);
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

  v6 = CRSWidget.isEqual(_:)(v8);

  sub_242FC3650(v8, &qword_27ED5D990, &qword_242FCCFF0);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CRSWidget.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  CRSWidget.description.getter();

  v3 = sub_242FCB2DC();

  return v3;
}

- (CRSWidget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end