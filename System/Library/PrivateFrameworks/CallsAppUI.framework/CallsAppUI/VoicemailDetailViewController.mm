@interface VoicemailDetailViewController
- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)handleBackButtonPressed;
- (void)handleCallButtonPressed;
- (void)reportSpamWithShouldDelete:(BOOL)a3;
- (void)shareMessage;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VoicemailDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  VoicemailDetailViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  VoicemailDetailViewController.viewWillAppear(_:)(a3);
}

- (void)handleBackButtonPressed
{
  v4 = self;
  v2 = [(VoicemailDetailViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (void)handleCallButtonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
  v4 = self;
  v2();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  VoicemailDetailViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  VoicemailDetailViewController.viewWillDisappear(_:)(a3);
}

- (void)shareMessage
{
  v2 = self;
  sub_1CFBDF274();
}

- (void)reportSpamWithShouldDelete:(BOOL)a3
{
  v4 = self;
  sub_1CFBDFC08(a3);
}

- (_TtC10CallsAppUI29VoicemailDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1CFC9F998();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1CFC9F968();
  v11 = a4;
  v12 = self;
  v13 = v11;
  v14 = v12;
  v15 = sub_1CFC9F958();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a4;
  v16[5] = v14;
  sub_1CFBDC030(0, 0, v9, &unk_1CFCA2CD8, v16);
}

@end