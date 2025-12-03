@interface GKExpandedGroupViewController
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSLayoutConstraint)collectionViewHeightConstraint;
- (NSLayoutConstraint)contentViewWidthConstraint;
- (UIButton)doneButton;
- (UICollectionView)collectionView;
- (UILabel)titleLabel;
- (UIView)container;
- (UIVisualEffectView)visualEffectView;
- (_TtP12GameCenterUI37GKExpandedGroupViewControllerDelegate_)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)configureWithPlayers:(id)players groupName:(id)name caption:(id)caption playerSelectionProxy:(id)proxy;
- (void)doneButtonPressed;
- (void)setCollectionView:(id)view;
- (void)setCollectionViewHeightConstraint:(id)constraint;
- (void)setContainer:(id)container;
- (void)setContentViewWidthConstraint:(id)constraint;
- (void)setDelegate:(id)delegate;
- (void)setDoneButton:(id)button;
- (void)setTitleLabel:(id)label;
- (void)setVisualEffectView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKExpandedGroupViewController

- (void)doneButtonPressed
{
  selfCopy = self;
  sub_24E2BC744();
}

- (UIButton)doneButton
{
  v2 = sub_24E2BAFD8();

  return v2;
}

- (void)setDoneButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_24E2BB040();
}

- (UICollectionView)collectionView
{
  v2 = sub_24E2BB0B8();

  return v2;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E2BB120();
}

- (NSLayoutConstraint)contentViewWidthConstraint
{
  v2 = sub_24E2BB198();

  return v2;
}

- (void)setContentViewWidthConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E2BB200();
}

- (UIVisualEffectView)visualEffectView
{
  v2 = sub_24E2BB278();

  return v2;
}

- (void)setVisualEffectView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E2BB2E0();
}

- (UIView)container
{
  v2 = sub_24E2BB358();

  return v2;
}

- (void)setContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24E2BB3C0();
}

- (UILabel)titleLabel
{
  v2 = sub_24E2BB438();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_24E2BB4A0();
}

- (NSLayoutConstraint)collectionViewHeightConstraint
{
  v2 = sub_24E2BB518();

  return v2;
}

- (void)setCollectionViewHeightConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E2BB580();
}

- (_TtP12GameCenterUI37GKExpandedGroupViewControllerDelegate_)delegate
{
  v2 = sub_24E2BB5F8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E2BB6A0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E2BB9C4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_24E2BC07C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E2BC204(change);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E2BC41C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E2BC648(disappear);
}

- (void)configureWithPlayers:(id)players groupName:(id)name caption:(id)caption playerSelectionProxy:(id)proxy
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v10 = sub_24E347F08();
  if (name)
  {
    sub_24E347CF8();
  }

  if (caption)
  {
    sub_24E347CF8();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E2BC75C(v10, v12, v13, v14, v15, proxy);
  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_24E2BC938(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_24E2BCBCC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E2BCCD4();

  (*(v7 + 8))(v9, v6);
  return 1;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_24E2BCE44();
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

@end