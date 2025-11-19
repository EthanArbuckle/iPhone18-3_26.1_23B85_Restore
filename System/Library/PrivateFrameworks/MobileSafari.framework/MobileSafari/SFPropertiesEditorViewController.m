@interface SFPropertiesEditorViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC12MobileSafari32SFPropertiesEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFPropertiesEditorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_18BA2EACC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_18BA303B0(a3);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_18BA30E74();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  sub_18BA30F48();

  (*(v7 + 8))(v9, v6);
}

- (_TtC12MobileSafari32SFPropertiesEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_18BA30838(v5, v7, a4);
}

@end