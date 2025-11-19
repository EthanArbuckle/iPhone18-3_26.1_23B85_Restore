@interface SummarySharingSystemContactsPickerViewController
- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)summarySharingEntryStore:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SummarySharingSystemContactsPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA1EE8E0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SummarySharingSystemContactsPickerViewController();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:v3];
  sub_1BA1EEC70();
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA1F01E0(v4);
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = sub_1BA4A64F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v10 = a4;
  v11 = self;
  *v9 = sub_1BA4A7308();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  LOBYTE(a4) = sub_1BA4A6528();
  (*(v7 + 8))(v9, v6);
  if (a4)
  {
    v12 = v11 + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state;
    v13 = *(&v11->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController_state);
    *v12 = v10;
    v14 = v12[8];
    v12[8] = 1;
    v15 = v10;
    sub_1BA1F1484(v13, v14);
    sub_1BA1EEC70();
  }

  else
  {
    __break(1u);
  }
}

- (void)summarySharingEntryStore:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5
{
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v8 = sub_1BA4A6628();
  v9 = a3;
  v10 = self;
  v11 = a5;
  sub_1BA1F1724(v8);
}

- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI48SummarySharingSystemContactsPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end