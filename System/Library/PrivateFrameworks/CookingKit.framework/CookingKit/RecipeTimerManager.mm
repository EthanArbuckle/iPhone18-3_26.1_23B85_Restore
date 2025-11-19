@interface RecipeTimerManager
- (void)timersUpdated:(id)a3;
@end

@implementation RecipeTimerManager

- (void)timersUpdated:(id)a3
{
  v4 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = sub_21A2F4544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4534();
  v13 = sub_21A2F7C64();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  swift_retain_n();
  sub_21A199D08(0, 0, v7, &unk_21A316A20, v14);

  (*(v9 + 8))(v12, v8);
}

@end