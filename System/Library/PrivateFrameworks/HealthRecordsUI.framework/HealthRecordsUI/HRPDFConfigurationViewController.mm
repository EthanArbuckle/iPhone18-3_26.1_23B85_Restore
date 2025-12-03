@interface HRPDFConfigurationViewController
- (HRPDFConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HRPDFConfigurationViewController)initWithProfile:(id)profile account:(id)account;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)didPinchPDF:(id)f;
- (void)didTapCancel:(id)cancel;
- (void)didTapSave:(id)save;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HRPDFConfigurationViewController

- (HRPDFConfigurationViewController)initWithProfile:(id)profile account:(id)account
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  objc_allocWithZone(type metadata accessor for PDFConfigurationViewController());
  profileCopy = profile;
  accountCopy = account;
  v8 = sub_1D11B6250(profileCopy, account, v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D11B0018();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D11B1218(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D11B1504();
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [(HRPDFConfigurationViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)didTapSave:(id)save
{
  saveCopy = save;
  selfCopy = self;
  sub_1D11B1900(saveCopy);
}

- (HRPDFConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D11B3DC0(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D138D7DC();
  [viewCopy deselectRowAtIndexPath:v12 animated:1];

  v13 = sub_1D12A5CF4(v9, selfCopy);
  sub_1D11B4324(v13);

  (*(v7 + 8))(v9, v6);
}

- (void)didPinchPDF:(id)f
{
  fCopy = f;
  selfCopy = self;
  sub_1D11B46B0(fCopy);
}

@end