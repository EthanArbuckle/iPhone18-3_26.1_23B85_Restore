@interface ShowHomeIntentHandler
- (_TtC22HomeAutomationInternal21ShowHomeIntentHandler)init;
- (void)confirmShowHome:(ShowHomeIntent *)a3 completion:(id)a4;
- (void)handleShowHome:(ShowHomeIntent *)a3 completion:(id)a4;
- (void)resolveFiltersForShowHome:(ShowHomeIntent *)a3 withCompletion:(id)a4;
@end

@implementation ShowHomeIntentHandler

- (void)resolveFiltersForShowHome:(ShowHomeIntent *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_252E37344();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E46630;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_252E4BD20;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_252CD45A0(0, 0, v10, &unk_252E46640, v15);
}

- (void)confirmShowHome:(ShowHomeIntent *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_252E37344();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E46610;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_252E4BD00;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_252CD45A0(0, 0, v10, &unk_252E46620, v15);
}

- (void)handleShowHome:(ShowHomeIntent *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_252E37344();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_252E465F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_252E4BCE0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_252CD45A0(0, 0, v10, &unk_252E46600, v15);
}

- (_TtC22HomeAutomationInternal21ShowHomeIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowHomeIntentHandler();
  return [(ShowHomeIntentHandler *)&v3 init];
}

@end