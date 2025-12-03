@interface SFFilterEditorViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC12MobileSafari28SFFilterEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SFFilterEditorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18BA2B388();
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (_TtC12MobileSafari28SFFilterEditorViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_18BA2C734(v5, v7, bundle);
}

@end