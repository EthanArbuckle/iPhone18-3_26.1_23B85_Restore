@interface SFPropertiesEditorViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC12MobileSafari32SFPropertiesEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFPropertiesEditorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18BA2EACC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_18BA303B0(appear);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_18BA30E74();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  sub_18BA30F48();

  (*(v7 + 8))(v9, v6);
}

- (_TtC12MobileSafari32SFPropertiesEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_18BA30838(v5, v7, bundle);
}

@end