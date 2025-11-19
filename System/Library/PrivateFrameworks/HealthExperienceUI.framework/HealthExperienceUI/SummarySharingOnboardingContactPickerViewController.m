@interface SummarySharingOnboardingContactPickerViewController
- (_TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)autocompleteResultsController:(id)a3 preferredRecipientForRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(int64_t)a5;
- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5;
- (void)cancelButtonTapped:(id)a3;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)finishedSearchingForAutocompleteResults;
- (void)summarySharingEntryStore:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SummarySharingOnboardingContactPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA1FB298();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BA1FBFA8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BA1FC1F4(a3);
}

- (void)cancelButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA1FC5C4();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)summarySharingEntryStore:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5
{
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v8 = sub_1BA4A6628();
  v9 = a3;
  v10 = self;
  v11 = a5;
  sub_1BA203498(v8);
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  if (!a3)
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 1;
    goto LABEL_6;
  }

  v6 = sub_1BA4A6B08();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 1;
  if (!v6)
  {
LABEL_6:
    v12 = self;
    v13 = a4;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = self;
  v9 = a4;
  v10 = sub_1BA1FAEC0(v7);
  if (v10)
  {
    v11 = v10;
    goto LABEL_8;
  }

LABEL_7:

  v11 = MEMORY[0x1E69E7CC0];
LABEL_8:
  sub_1BA1FE078(v11);
}

- (void)finishedSearchingForAutocompleteResults
{
  v2 = self;
  sub_1BA1FF364();
}

- (void)autocompleteResultsController:(id)a3 tintColorForRecipient:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1BA203A00(v11, sub_1BA204DF0, v9);
}

- (id)autocompleteResultsController:(id)a3 preferredRecipientForRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BA203F20(v7);
  v10 = v9;

  return v10;
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1BA204568(v8);
}

@end