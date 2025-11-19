@interface TapViewModel
- (void)closeUI;
- (void)closeUIImmediate;
- (void)requiresCardPIN:(id)a3;
- (void)updateWithTransactionEvent:(int64_t)a3;
- (void)vasReadSuccessWithMerchantNames:(id)a3;
@end

@implementation TapViewModel

- (void)updateWithTransactionEvent:(int64_t)a3
{

  sub_2440A50D8(a3);
}

- (void)vasReadSuccessWithMerchantNames:(id)a3
{
  v3 = sub_2440D3220();

  sub_2440A5564(v3);
}

- (void)requiresCardPIN:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *(self->super.isa + 202);
  v9 = a3;

  v8(v10);
  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v9;
  sub_243F54830(0, 0, v7, &unk_2440E6040, v12);
}

- (void)closeUI
{

  sub_2440A6A8C();
}

- (void)closeUIImmediate
{
  v2 = sub_243FA9620();
  swift_beginAccess();
  v3 = *(**v2 + 536);

  v3(v4);
}

@end