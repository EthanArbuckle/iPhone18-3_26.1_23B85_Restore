@interface AppleAccountManager
- (void)updateAccountStatusCache;
@end

@implementation AppleAccountManager

- (void)updateAccountStatusCache
{
  isa = self->super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2557504D0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2557504B0();
  swift_retain_n();
  v9 = sub_2557504A0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = self;
  v10[5] = isa;
  sub_25569E3AC(0, 0, v7, &unk_255755E00, v10);
}

@end