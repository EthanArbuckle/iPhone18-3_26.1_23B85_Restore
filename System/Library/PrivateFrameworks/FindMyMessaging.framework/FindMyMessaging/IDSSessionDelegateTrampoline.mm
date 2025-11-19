@interface IDSSessionDelegateTrampoline
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation IDSSessionDelegateTrampoline

- (void)sessionStarted:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D10, &qword_24AF394A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v10 = xmmword_24AF39200;
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  sub_24AF355CC();

  (*(v5 + 8))(v8, v4);
}

- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D10, &qword_24AF394A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v15[0] = a4;
  v15[1] = a5;
  v13 = a5;
  v14 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  sub_24AF355CC();

  (*(v9 + 8))(v12, v8);
}

@end