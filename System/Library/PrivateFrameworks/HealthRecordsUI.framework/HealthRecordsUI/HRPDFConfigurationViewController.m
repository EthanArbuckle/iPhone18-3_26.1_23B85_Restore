@interface HRPDFConfigurationViewController
- (HRPDFConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HRPDFConfigurationViewController)initWithProfile:(id)a3 account:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)didPinchPDF:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapSave:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HRPDFConfigurationViewController

- (HRPDFConfigurationViewController)initWithProfile:(id)a3 account:(id)a4
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  objc_allocWithZone(type metadata accessor for PDFConfigurationViewController());
  v6 = a3;
  v7 = a4;
  v8 = sub_1D11B6250(v6, a4, v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D11B0018();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1D11B1218(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D11B1504();
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [(HRPDFConfigurationViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)didTapSave:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D11B1900(v4);
}

- (HRPDFConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  v12 = sub_1D11B3DC0(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  v12 = sub_1D138D7DC();
  [v10 deselectRowAtIndexPath:v12 animated:1];

  v13 = sub_1D12A5CF4(v9, v11);
  sub_1D11B4324(v13);

  (*(v7 + 8))(v9, v6);
}

- (void)didPinchPDF:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D11B46B0(v4);
}

@end