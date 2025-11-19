@interface AchievementsByGameViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC12GameCenterUI32AchievementsByGameViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AchievementsByGameViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24DFDDE24();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24DFDDF08(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24DFDE0D4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_24DFDE280(a3);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24DFE0A18();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24DFE0DE8();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_24DFE11C0();

  (*(v10 + 8))(v12, v9);
}

- (_TtC12GameCenterUI32AchievementsByGameViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  sub_24DFE207C();
}

@end