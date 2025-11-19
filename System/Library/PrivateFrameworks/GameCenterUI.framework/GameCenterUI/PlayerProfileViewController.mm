@interface PlayerProfileViewController
+ (void)showProfileFor:(id)a3 from:(id)a4 completion:(id)a5;
- (BOOL)shouldDisplayInSplitView;
- (PSRootController)_rootController;
- (PSSpecifier)_specifier;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (_TtC12GameCenterUI27PlayerProfileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (id)parentController;
- (id)readPreferenceValue:(id)a3;
- (id)rootController;
- (id)specifier;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)donePressed:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)loadMoreWithContinuationToken:(id)a3;
- (void)mainSecondaryCollectionViewLayout;
- (void)scrollToTopActionTriggered;
- (void)setDataPresenter:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setRootController:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)set_rootController:(id)a3;
- (void)set_specifier:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PlayerProfileViewController

- (id)parentController
{
  v2 = PlayerProfileViewController.parentController()();

  return v2;
}

- (void)setRootController:(id)a3
{
  v5 = a3;
  v6 = self;
  PlayerProfileViewController.setRoot(_:)(a3);
}

- (id)rootController
{
  v2 = PlayerProfileViewController.rootController()();

  return v2;
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  PlayerProfileViewController.setSpecifier(_:)(a3);
}

- (id)specifier
{
  v2 = PlayerProfileViewController.specifier()();

  return v2;
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

  sub_24DF8894C(v10);
}

- (id)readPreferenceValue:(id)a3
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

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    sub_24E347C08();
  }

  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_24DFA0D08;
  }

  v7 = self;
  sub_24DE73FA0(v6);
}

+ (void)showProfileFor:(id)a3 from:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = v7;
  if (a3)
  {
    v9 = sub_24E347CF8();
    a3 = v10;
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
  v11 = a4;
  static PlayerProfileViewController.showProfile(for:from:completion:)(v9, a3, v11);
  sub_24DE73FA0(v8);
}

- (_TtC12GameCenterUI27PlayerProfileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return PlayerProfileViewController.init(nibName:bundle:)(a4, v6, a4);
}

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  v2 = sub_24E0CB9E0();

  return v2;
}

- (void)setDataPresenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0CBA4C(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E0CBBBC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E0CBD88(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E0CC048(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_24E0CC15C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0CC508(a3);
}

- (BOOL)shouldDisplayInSplitView
{
  v2 = self;
  v3 = sub_24E0CC65C();

  return v3 & 1;
}

- (id)contentScrollView
{
  v2 = self;
  v3 = sub_24E0CC714();

  return v3;
}

- (void)mainSecondaryCollectionViewLayout
{
  v2 = self;
  sub_24E0CDF18();
}

- (void)donePressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_24E0CE304();

  sub_24DF8BFF4(v6, &qword_27F1E0370);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_24E0CE3F0(v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (PSRootController)_rootController
{
  v2 = sub_24E0CF860();

  return v2;
}

- (void)set_rootController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0CF8EC(a3);
}

- (PSSpecifier)_specifier
{
  v2 = sub_24E0CF92C();

  return v2;
}

- (void)set_specifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0CF9B8(a3);
}

- (void)scrollToTopActionTriggered
{
  v2 = self;
  sub_24E0CFAE4();
}

- (void)loadMoreWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E0CFC0C();
}

@end