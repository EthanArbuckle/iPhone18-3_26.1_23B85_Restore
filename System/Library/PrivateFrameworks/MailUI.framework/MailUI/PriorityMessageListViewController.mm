@interface PriorityMessageListViewController
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC6MailUI33PriorityMessageListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)hostingSceneDidBecomeActive:(id)active;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PriorityMessageListViewController

- (void)viewDidLoad
{
  MEMORY[0x277D82BE0](self);
  sub_214C97F4C();
  MEMORY[0x277D82BD8](self);
}

- (void)viewDidAppear:(BOOL)appear
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  sub_214C9987C(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  sub_214C99AB4(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI33PriorityMessageListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  MEMORY[0x277D82BE0](name);
  MEMORY[0x277D82BE0](bundle);
  if (name)
  {
    v6 = sub_214CCF564();
    v7 = v4;
    MEMORY[0x277D82BD8](name);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return PriorityMessageListViewController.init(nibName:bundle:)(v8, v9, bundle);
}

- (void)hostingSceneDidBecomeActive:(id)active
{
  selfCopy = self;
  activeCopy = active;
  v10 = sub_214CCCE94();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](activeCopy);
  v9 = &v5 - v6;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCCE74();
  sub_214C9D570(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](activeCopy);
  MEMORY[0x277D82BD8](selfCopy);
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:selectionFollowsFocusForItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:canFocusItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:shouldHighlightItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
  return sub_214CCD384() & 1;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v11 = sub_214CCD374();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v12 = &v7 - v8;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v16 = PriorityMessageListViewController.collectionView(_:shouldSelectItemAt:)();
  (*(v9 + 8))(v12, v11);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
  return sub_214CCD384() & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  pathCopy = path;
  v10 = sub_214CCD374();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v9 = &v6 - v6;
  MEMORY[0x277D82BE0](v5);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  PriorityMessageListViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](viewCopy);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  selfCopy = self;
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  pathCopy = path;
  v14 = sub_214CCD374();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](viewCopy);
  v13 = &v9 - v9;
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](supplementaryViewCopy);
  MEMORY[0x277D82BE0](kindCopy);
  MEMORY[0x277D82BE0](pathCopy);
  MEMORY[0x277D82BE0](self);
  v10 = sub_214CCF564();
  v16 = v8;
  sub_214CCD324();
  PriorityMessageListViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(viewCopy, supplementaryViewCopy, v10, v16);
  (*(v11 + 8))(v13, v14);
  MEMORY[0x277D82BD8](pathCopy);

  MEMORY[0x277D82BD8](kindCopy);
  MEMORY[0x277D82BD8](selfCopy);
  MEMORY[0x277D82BD8](supplementaryViewCopy);
  MEMORY[0x277D82BD8](viewCopy);
}

@end