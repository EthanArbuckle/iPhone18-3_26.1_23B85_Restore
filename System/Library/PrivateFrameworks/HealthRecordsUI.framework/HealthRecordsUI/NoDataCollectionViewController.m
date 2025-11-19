@interface NoDataCollectionViewController
- (_TtC15HealthRecordsUI30NoDataCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC15HealthRecordsUI30NoDataCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)reloadAccounts;
- (void)viewDidLoad;
@end

@implementation NoDataCollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D136F8FC();
}

- (void)reloadAccounts
{
  sub_1D1373B98(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D13905AC();
  v7 = self;
  v8 = sub_1D139059C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_1D107877C(0, 0, v5, &unk_1D13B42E0, v9);
}

- (_TtC15HealthRecordsUI30NoDataCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI30NoDataCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end