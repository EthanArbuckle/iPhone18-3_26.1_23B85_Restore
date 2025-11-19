@interface SettingsContainerViewController
- (id)_rootController;
- (id)parentController;
- (id)readPreferenceValue:(id)a3;
- (id)specifier;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)onboardingFlowFinishedWithAction:(unint64_t)a3;
- (void)openAvatarEditor;
- (void)openPlayerProfileViewWithPlayerID:(id)a3;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setRootController:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)set_rootController:(id)a3;
- (void)set_specifier:(id)a3;
- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signInControllerDidCancel:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SettingsContainerViewController

- (id)specifier
{
  v0 = _s12GameCenterUI31SettingsContainerViewControllerC9specifierSo11PSSpecifierCSgyF_0();

  return v0;
}

- (id)_rootController
{
  v0 = SettingsContainerViewController.rootController()();

  return v0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E052ED4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E053FC0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E054200(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E0542B0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_24E0543A4();
}

- (void)set_rootController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E054590(a3);
}

- (void)set_specifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E054628(a3);
}

- (id)parentController
{
  v2 = SettingsContainerViewController.parentController()();

  return v2;
}

- (void)setRootController:(id)a3
{
  v5 = a3;
  v6 = self;
  SettingsContainerViewController.setRoot(_:)(a3);
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  SettingsContainerViewController.setSpecifier(_:)(a3);
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_24DF8C95C(v10, &qword_27F1E0370);
}

- (id)readPreferenceValue:(id)a3
{
  SettingsContainerViewController.readPreferenceValue(_:)(v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_24E348BE8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_24E347C08();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_24DFA0D08;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  v9._rawValue = a3;
  SettingsContainerViewController.handleURL(_:withCompletion:)(v9, v7);
  sub_24DE73FA0(v7);
}

- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  SettingsContainerViewController.signInController(_:didCompleteWithSuccess:error:)(v7, 0, a5);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  SettingsContainerViewController.signInControllerDidCancel(_:)(v4);
}

- (void)openAvatarEditor
{
  v2 = self;
  SettingsContainerViewController.openAvatarEditor()();
}

- (void)photoPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  SettingsContainerViewController.photoPickerDidCancel(_:)(v4);
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  SettingsContainerViewController.photoPicker(_:didUpdatePhotoFor:with:)(v8, v9, v10);
}

- (void)openPlayerProfileViewWithPlayerID:(id)a3
{
  if (a3)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  SettingsContainerViewController.openPlayerProfileView(playerID:)(v8);
}

- (void)onboardingFlowFinishedWithAction:(unint64_t)a3
{
  v3 = self;
  SettingsContainerViewController.onboardingFlowFinished(with:)();
}

@end