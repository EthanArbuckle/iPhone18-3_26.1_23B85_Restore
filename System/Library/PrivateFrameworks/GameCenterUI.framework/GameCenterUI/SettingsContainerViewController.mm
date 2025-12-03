@interface SettingsContainerViewController
- (id)_rootController;
- (id)parentController;
- (id)readPreferenceValue:(id)value;
- (id)specifier;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)onboardingFlowFinishedWithAction:(unint64_t)action;
- (void)openAvatarEditor;
- (void)openPlayerProfileViewWithPlayerID:(id)d;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setRootController:(id)controller;
- (void)setSpecifier:(id)specifier;
- (void)set_rootController:(id)controller;
- (void)set_specifier:(id)set_specifier;
- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signInControllerDidCancel:(id)cancel;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  sub_24E052ED4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E053FC0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E054200(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E0542B0(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_24E0543A4();
}

- (void)set_rootController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E054590(controller);
}

- (void)set_specifier:(id)set_specifier
{
  set_specifierCopy = set_specifier;
  selfCopy = self;
  sub_24E054628(set_specifier);
}

- (id)parentController
{
  v2 = SettingsContainerViewController.parentController()();

  return v2;
}

- (void)setRootController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  SettingsContainerViewController.setRoot(_:)(controller);
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  SettingsContainerViewController.setSpecifier(_:)(specifier);
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  if (value)
  {
    specifierCopy = specifier;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    specifierCopy2 = specifier;
    selfCopy2 = self;
  }

  sub_24DF8C95C(v10, &qword_27F1E0370);
}

- (id)readPreferenceValue:(id)value
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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_24E347C08();
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

  selfCopy = self;
  v9._rawValue = l;
  SettingsContainerViewController.handleURL(_:withCompletion:)(v9, v7);
  sub_24DE73FA0(v7);
}

- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  SettingsContainerViewController.signInController(_:didCompleteWithSuccess:error:)(controllerCopy, 0, error);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  SettingsContainerViewController.signInControllerDidCancel(_:)(cancelCopy);
}

- (void)openAvatarEditor
{
  selfCopy = self;
  SettingsContainerViewController.openAvatarEditor()();
}

- (void)photoPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  SettingsContainerViewController.photoPickerDidCancel(_:)(cancelCopy);
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  contactCopy = contact;
  imageCopy = image;
  selfCopy = self;
  SettingsContainerViewController.photoPicker(_:didUpdatePhotoFor:with:)(pickerCopy, contactCopy, imageCopy);
}

- (void)openPlayerProfileViewWithPlayerID:(id)d
{
  if (d)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  SettingsContainerViewController.openPlayerProfileView(playerID:)(v8);
}

- (void)onboardingFlowFinishedWithAction:(unint64_t)action
{
  selfCopy = self;
  SettingsContainerViewController.onboardingFlowFinished(with:)();
}

@end