@interface CSUIBindable
- (CSUIBindable)init;
- (CSUIBindable)initWithDocumentProxy:(id)a3;
- (CSUIBindable)initWithType:(id)a3;
- (CSUIBindable)initWithURL:(id)a3;
- (NSString)description;
@end

@implementation CSUIBindable

- (CSUIBindable)initWithDocumentProxy:(id)a3
{
  v5 = (&self->super.isa + OBJC_IVAR___CSUIBindable_rawBindable);
  *&self->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16] = &type metadata for DocumentProxyBindable;
  v5[4] = sub_2478BCB84();
  *v5 = a3;
  v8.receiver = self;
  v8.super_class = CSUIBindable;
  v6 = a3;
  return [(CSUIBindable *)&v8 init];
}

- (CSUIBindable)initWithType:(id)a3
{
  v5 = sub_2478D88FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
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

- (CSUIBindable)initWithURL:(id)a3
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
  v2 = self;
  sub_2478D8CEC();
  MEMORY[0x24C1AD190](0x6E6942495553433CLL, 0xEF203A656C626164);
  v3 = *&v2->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 24];
  __swift_project_boxed_opaque_existential_0Tm((&v2->super.isa + OBJC_IVAR___CSUIBindable_rawBindable), *&v2->rawBindable[OBJC_IVAR___CSUIBindable_rawBindable + 16]);
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