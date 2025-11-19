@interface GKExpandedGroupViewController
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSLayoutConstraint)collectionViewHeightConstraint;
- (NSLayoutConstraint)contentViewWidthConstraint;
- (UIButton)doneButton;
- (UICollectionView)collectionView;
- (UILabel)titleLabel;
- (UIView)container;
- (UIVisualEffectView)visualEffectView;
- (_TtP12GameCenterUI37GKExpandedGroupViewControllerDelegate_)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)configureWithPlayers:(id)a3 groupName:(id)a4 caption:(id)a5 playerSelectionProxy:(id)a6;
- (void)doneButtonPressed;
- (void)setCollectionView:(id)a3;
- (void)setCollectionViewHeightConstraint:(id)a3;
- (void)setContainer:(id)a3;
- (void)setContentViewWidthConstraint:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)setVisualEffectView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKExpandedGroupViewController

- (void)doneButtonPressed
{
  v1 = a1;
  sub_24E2BC744();
}

- (UIButton)doneButton
{
  v2 = sub_24E2BAFD8();

  return v2;
}

- (void)setDoneButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB040();
}

- (UICollectionView)collectionView
{
  v2 = sub_24E2BB0B8();

  return v2;
}

- (void)setCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB120();
}

- (NSLayoutConstraint)contentViewWidthConstraint
{
  v2 = sub_24E2BB198();

  return v2;
}

- (void)setContentViewWidthConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB200();
}

- (UIVisualEffectView)visualEffectView
{
  v2 = sub_24E2BB278();

  return v2;
}

- (void)setVisualEffectView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB2E0();
}

- (UIView)container
{
  v2 = sub_24E2BB358();

  return v2;
}

- (void)setContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB3C0();
}

- (UILabel)titleLabel
{
  v2 = sub_24E2BB438();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB4A0();
}

- (NSLayoutConstraint)collectionViewHeightConstraint
{
  v2 = sub_24E2BB518();

  return v2;
}

- (void)setCollectionViewHeightConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2BB580();
}

- (_TtP12GameCenterUI37GKExpandedGroupViewControllerDelegate_)delegate
{
  v2 = sub_24E2BB5F8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_24E2BB6A0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E2BB9C4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_24E2BC07C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E2BC204(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E2BC41C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E2BC648(a3);
}

- (void)configureWithPlayers:(id)a3 groupName:(id)a4 caption:(id)a5 playerSelectionProxy:(id)a6
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v10 = sub_24E347F08();
  if (a4)
  {
    sub_24E347CF8();
  }

  if (a5)
  {
    sub_24E347CF8();
  }

  swift_unknownObjectRetain();
  v11 = self;
  sub_24E2BC75C(v10, v12, v13, v14, v15, a6);
  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  v12 = sub_24E2BC938(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_24E2BCBCC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24E2BCCD4();

  (*(v7 + 8))(v9, v6);
  return 1;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
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