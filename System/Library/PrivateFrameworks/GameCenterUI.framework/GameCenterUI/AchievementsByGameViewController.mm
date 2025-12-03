@interface AchievementsByGameViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC12GameCenterUI32AchievementsByGameViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AchievementsByGameViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24DFDDE24();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24DFDDF08(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24DFDE0D4(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24DFDE280(disappear);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24DFE0A18();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24DFE0DE8();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_24DFE11C0();

  (*(v10 + 8))(v12, v9);
}

- (_TtC12GameCenterUI32AchievementsByGameViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  sub_24DFE207C();
}

@end