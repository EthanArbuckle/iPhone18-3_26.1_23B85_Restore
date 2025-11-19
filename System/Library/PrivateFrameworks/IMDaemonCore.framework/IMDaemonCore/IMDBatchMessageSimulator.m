@interface IMDBatchMessageSimulator
- (IMDBatchMessageSimulator)init;
- (IMDBatchMessageSimulator)initWithMessages:(id)a3 configuration:(id)a4;
- (void)runWithCompletion:(id)a3;
@end

@implementation IMDBatchMessageSimulator

- (IMDBatchMessageSimulator)initWithMessages:(id)a3 configuration:(id)a4
{
  sub_22B4D01A0(0, &unk_28141F1F8, 0x277D1AC48);
  *(&self->super.isa + OBJC_IVAR___IMDBatchMessageSimulator_messages) = sub_22B7DB918();
  v6 = a4;
  if (!a4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D1AC50]) init];
  }

  v7 = (&self->super.isa + OBJC_IVAR___IMDBatchMessageSimulator_batch);
  *v7 = v6;
  v7[1] = 0;
  v8 = MEMORY[0x277D84F90];
  v7[2] = 0;
  v7[3] = v8;
  v11.receiver = self;
  v11.super_class = IMDBatchMessageSimulator;
  v9 = a4;
  return [(IMDBatchMessageSimulator *)&v11 init];
}

- (void)runWithCompletion:(id)a3
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B7FA680;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B7F8D08;
  v13[5] = v12;
  v14 = self;
  sub_22B7C0EFC(0, 0, v8, &unk_22B7F8D10, v13);
}

- (IMDBatchMessageSimulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end