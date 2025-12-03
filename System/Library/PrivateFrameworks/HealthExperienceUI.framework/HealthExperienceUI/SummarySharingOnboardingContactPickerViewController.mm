@interface SummarySharingOnboardingContactPickerViewController
- (_TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)autocompleteResultsController:(id)controller preferredRecipientForRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(int64_t)index;
- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)cancelButtonTapped:(id)tapped;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)finishedSearchingForAutocompleteResults;
- (void)summarySharingEntryStore:(id)store didUpdateReachabilityStatus:(id)status error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SummarySharingOnboardingContactPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA1FB298();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BA1FBFA8(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BA1FC1F4(appear);
}

- (void)cancelButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA1FC5C4();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)summarySharingEntryStore:(id)store didUpdateReachabilityStatus:(id)status error:(id)error
{
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v8 = sub_1BA4A6628();
  storeCopy = store;
  selfCopy = self;
  errorCopy = error;
  sub_1BA203498(v8);
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  if (!results)
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 1;
    goto LABEL_6;
  }

  v6 = sub_1BA4A6B08();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 1;
  if (!v6)
  {
LABEL_6:
    selfCopy = self;
    dCopy = d;
    goto LABEL_7;
  }

  v7 = v6;
  selfCopy2 = self;
  dCopy2 = d;
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
  selfCopy = self;
  sub_1BA1FF364();
}

- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  sub_1BA203A00(recipientCopy, sub_1BA204DF0, v9);
}

- (id)autocompleteResultsController:(id)controller preferredRecipientForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  sub_1BA203F20(recipientCopy);
  v10 = v9;

  return v10;
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(int64_t)index
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  sub_1BA204568(recipientCopy);
}

@end