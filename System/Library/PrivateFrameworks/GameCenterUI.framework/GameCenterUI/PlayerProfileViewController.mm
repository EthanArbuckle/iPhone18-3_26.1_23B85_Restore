@interface PlayerProfileViewController
+ (void)showProfileFor:(id)for from:(id)from completion:(id)completion;
- (BOOL)shouldDisplayInSplitView;
- (PSRootController)_rootController;
- (PSSpecifier)_specifier;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (_TtC12GameCenterUI27PlayerProfileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (id)parentController;
- (id)readPreferenceValue:(id)value;
- (id)rootController;
- (id)specifier;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)donePressed:(id)pressed;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)loadMoreWithContinuationToken:(id)token;
- (void)mainSecondaryCollectionViewLayout;
- (void)scrollToTopActionTriggered;
- (void)setDataPresenter:(id)presenter;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setRootController:(id)controller;
- (void)setSpecifier:(id)specifier;
- (void)set_rootController:(id)controller;
- (void)set_specifier:(id)set_specifier;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PlayerProfileViewController

- (id)parentController
{
  v2 = PlayerProfileViewController.parentController()();

  return v2;
}

- (void)setRootController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  PlayerProfileViewController.setRoot(_:)(controller);
}

- (id)rootController
{
  v2 = PlayerProfileViewController.rootController()();

  return v2;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  PlayerProfileViewController.setSpecifier(_:)(specifier);
}

- (id)specifier
{
  v2 = PlayerProfileViewController.specifier()();

  return v2;
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

  sub_24DF8894C(v10);
}

- (id)readPreferenceValue:(id)value
{
  PlayerProfileViewController.readPreferenceValue(_:)(v11);
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
    sub_24E347C08();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_24DFA0D08;
  }

  selfCopy = self;
  sub_24DE73FA0(v6);
}

+ (void)showProfileFor:(id)for from:(id)from completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = v7;
  if (for)
  {
    v9 = sub_24E347CF8();
    for = v10;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (v7)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v8;
    v8 = sub_24DFA0D08;
  }

LABEL_5:
  fromCopy = from;
  static PlayerProfileViewController.showProfile(for:from:completion:)(v9, for, fromCopy);
  sub_24DE73FA0(v8);
}

- (_TtC12GameCenterUI27PlayerProfileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return PlayerProfileViewController.init(nibName:bundle:)(bundle, v6, bundle);
}

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  v2 = sub_24E0CB9E0();

  return v2;
}

- (void)setDataPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E0CBA4C(presenterCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E0CBBBC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E0CBD88(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E0CC048(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_24E0CC15C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E0CC508(change);
}

- (BOOL)shouldDisplayInSplitView
{
  selfCopy = self;
  v3 = sub_24E0CC65C();

  return v3 & 1;
}

- (id)contentScrollView
{
  selfCopy = self;
  v3 = sub_24E0CC714();

  return v3;
}

- (void)mainSecondaryCollectionViewLayout
{
  selfCopy = self;
  sub_24E0CDF18();
}

- (void)donePressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24E0CE304();

  sub_24DF8BFF4(v6, &qword_27F1E0370);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_24E0CE3F0(viewCopy, cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (PSRootController)_rootController
{
  v2 = sub_24E0CF860();

  return v2;
}

- (void)set_rootController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E0CF8EC(controller);
}

- (PSSpecifier)_specifier
{
  v2 = sub_24E0CF92C();

  return v2;
}

- (void)set_specifier:(id)set_specifier
{
  set_specifierCopy = set_specifier;
  selfCopy = self;
  sub_24E0CF9B8(set_specifier);
}

- (void)scrollToTopActionTriggered
{
  selfCopy = self;
  sub_24E0CFAE4();
}

- (void)loadMoreWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E0CFC0C();
}

@end