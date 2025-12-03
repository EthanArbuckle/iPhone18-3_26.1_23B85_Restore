@interface CSUIBindable
- (CSUIBindable)init;
- (CSUIBindable)initWithDocumentProxy:(id)proxy;
- (CSUIBindable)initWithType:(id)type;
- (CSUIBindable)initWithURL:(id)l;
- (NSString)description;
@end

@implementation CSUIBindable

- (CSUIBindable)initWithDocumentProxy:(id)proxy
{
  v5 = (&self->super.isa + OBJC_IVAR___CSUIBindable_rawBindable);
  *&self->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16] = &type metadata for DocumentProxyBindable;
  v5[4] = sub_2478BCB84();
  *v5 = proxy;
  v8.receiver = self;
  v8.super_class = CSUIBindable;
  proxyCopy = proxy;
  return [(CSUIBindable *)&v8 init];
}

- (CSUIBindable)initWithType:(id)type
{
  v5 = sub_2478D88FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  typeCopy = type;
  sub_2478D88EC();

  v11 = sub_2478D88CC();
  v13 = v12;
  v14 = (self + OBJC_IVAR___CSUIBindable_rawBindable);
  *&self->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16] = &type metadata for TypeIdentifierBindable;
  v14[4] = sub_2478BCBD8();
  *v14 = v11;
  v14[1] = v13;
  v17.receiver = self;
  v17.super_class = CSUIBindable;
  v15 = [(CSUIBindable *)&v17 init];
  (*(v6 + 8))(v9, v5);
  return v15;
}

- (CSUIBindable)initWithURL:(id)l
{
  v4 = sub_2478D889C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2478D887C();
  v9 = (self + OBJC_IVAR___CSUIBindable_rawBindable);
  v9[3] = type metadata accessor for URLBindable();
  v9[4] = sub_2478BCA20(&qword_27EE54B18, 255, type metadata accessor for URLBindable);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v9);
  (*(v5 + 16))(boxed_opaque_existential_0Tm, v8, v4);
  v13.receiver = self;
  v13.super_class = CSUIBindable;
  v11 = [(CSUIBindable *)&v13 init];
  (*(v5 + 8))(v8, v4);
  return v11;
}

- (NSString)description
{
  selfCopy = self;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0x6E6942495553433CLL, 0xEF203A656C626164);
  v3 = *&selfCopy->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 24];
  __swift_project_boxed_opaque_existential_0Tm((&selfCopy->super.isa + OBJC_IVAR___CSUIBindable_rawBindable), *&selfCopy->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16]);
  v4 = *(v3 + 8);
  sub_2478D8E3C();
  MEMORY[0x24C1AD190](62, 0xE100000000000000);

  v5 = sub_2478D89BC();

  return v5;
}

- (CSUIBindable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end