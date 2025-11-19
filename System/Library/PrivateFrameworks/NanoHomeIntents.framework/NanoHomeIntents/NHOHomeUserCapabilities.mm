@interface NHOHomeUserCapabilities
- (BOOL)restrictedGuest;
- (BOOL)shouldShowElectricity;
- (NHOHomeUserCapabilities)init;
- (NHOHomeUserCapabilities)initWithHome:(id)a3;
- (void)updateCapabilitiesWithCompletionHandler:(id)a3;
@end

@implementation NHOHomeUserCapabilities

- (BOOL)shouldShowElectricity
{
  if ((*(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) == 1)
  {
    v2 = 1;
  }

  else
  {
    v3 = self;
    v2 = sub_25B1494D8();
  }

  return v2 & 1;
}

- (BOOL)restrictedGuest
{
  v2 = self;
  v3 = sub_25B1494D8();

  return v3 & 1;
}

- (NHOHomeUserCapabilities)initWithHome:(id)a3
{
  v4 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  v5 = qword_27FA39AF8;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_25B161A14();
  v8 = __swift_project_value_buffer(v7, qword_27FA3A070);
  (*(*(v7 - 8) + 16))(self + v4, v8, v7);
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) = 0;
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) = 0;
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_home) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for NHOHomeUserCapabilities();
  return [(NHOHomeUserCapabilities *)&v10 init];
}

- (void)updateCapabilitiesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_25B161CF4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_25B1658C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_25B1658D8;
  v13[5] = v12;
  v14 = self;
  sub_25B14A9D4(0, 0, v8, &unk_25B1658E8, v13);
}

- (NHOHomeUserCapabilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end