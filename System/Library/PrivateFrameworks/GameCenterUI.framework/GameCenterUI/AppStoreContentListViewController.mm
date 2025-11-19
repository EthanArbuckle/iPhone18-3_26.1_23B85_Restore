@interface AppStoreContentListViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC12GameCenterUI33AppStoreContentListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AppStoreContentListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24E233BAC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E233C58(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E233E04(a3);
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
  sub_24E235D00();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_24E236450(v12, v13);

  (*(v9 + 8))(v11, v8);
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
  sub_24E23662C();
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
  sub_24E236A08();

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
  sub_24E236DEC();

  (*(v10 + 8))(v12, v9);
}

- (_TtC12GameCenterUI33AppStoreContentListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  sub_24E237360();
}

@end