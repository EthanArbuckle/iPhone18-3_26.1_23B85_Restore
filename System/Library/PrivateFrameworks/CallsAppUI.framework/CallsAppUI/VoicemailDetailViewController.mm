@interface VoicemailDetailViewController
- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)handleBackButtonPressed;
- (void)handleCallButtonPressed;
- (void)reportSpamWithShouldDelete:(BOOL)delete;
- (void)shareMessage;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VoicemailDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  VoicemailDetailViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  VoicemailDetailViewController.viewWillAppear(_:)(appear);
}

- (void)handleBackButtonPressed
{
  selfCopy = self;
  navigationController = [(VoicemailDetailViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (void)handleCallButtonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
  selfCopy = self;
  v2();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  VoicemailDetailViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  VoicemailDetailViewController.viewWillDisappear(_:)(disappear);
}

- (void)shareMessage
{
  selfCopy = self;
  sub_1CFBDF274();
}

- (void)reportSpamWithShouldDelete:(BOOL)delete
{
  selfCopy = self;
  sub_1CFBDFC08(delete);
}

- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1CFC9F998();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1CFC9F968();
  contactCopy = contact;
  selfCopy = self;
  v13 = contactCopy;
  v14 = selfCopy;
  v15 = sub_1CFC9F958();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = contact;
  v16[5] = v14;
  sub_1CFBDC030(0, 0, v9, &unk_1CFCA2CD8, v16);
}

@end