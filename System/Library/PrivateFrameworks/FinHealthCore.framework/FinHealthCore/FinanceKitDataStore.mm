@interface FinanceKitDataStore
- (_TtC13FinHealthCore19FinanceKitDataStore)init;
- (void)fetchLastFourDigitsWithAccountDict:(id)a3;
- (void)streamTransactionsSince:(_TtC13FinHealthCore19FinanceKitDataStore *)self savedAccounts:(SEL)a2 transactionHandler:(NSString *)a3 accountHandler:(NSArray *)a4 completionHandler:(id)a5;
@end

@implementation FinanceKitDataStore

- (void)streamTransactionsSince:(_TtC13FinHealthCore19FinanceKitDataStore *)self savedAccounts:(SEL)a2 transactionHandler:(NSString *)a3 accountHandler:(NSArray *)a4 completionHandler:(id)a5
{
  v7 = v6;
  v8 = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a5);
  v18 = _Block_copy(v8);
  v19 = _Block_copy(v7);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v19;
  v20[7] = self;
  v21 = sub_226E63B80();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_226E689B8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_226E689C8;
  v23[5] = v22;
  v24 = a3;
  v25 = a4;
  v26 = self;
  sub_226E32AC4(0, 0, v16, &unk_226E689D8, v23);
}

- (void)fetchLastFourDigitsWithAccountDict:(id)a3
{
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v4 = sub_226E63960();
  v5 = self;
  sub_226E33AFC(v4);
}

- (_TtC13FinHealthCore19FinanceKitDataStore)init
{
  v3 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v6);
  *(&self->super.isa + v3) = sub_226E48FE0(v6);
  v5.receiver = self;
  v5.super_class = type metadata accessor for FinanceKitDataStore();
  return [(FinanceKitDataStore *)&v5 init];
}

@end