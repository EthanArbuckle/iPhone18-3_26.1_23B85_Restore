@interface CascadeIndexer
- (void)handleDonateNowNotification:(id)a3;
@end

@implementation CascadeIndexer

- (void)handleDonateNowNotification:(id)a3
{
  isa = self->super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_253CCFD58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFD18();
  v13 = sub_253CD0B58();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = isa;

  sub_25324690C(0, 0, v7, &unk_253D4A270, v15);

  (*(v9 + 8))(v12, v8);
}

@end