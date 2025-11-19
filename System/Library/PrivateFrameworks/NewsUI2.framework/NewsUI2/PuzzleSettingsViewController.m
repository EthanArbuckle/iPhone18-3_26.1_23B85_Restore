@interface PuzzleSettingsViewController
- (_TtC7NewsUI228PuzzleSettingsViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI228PuzzleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PuzzleSettingsViewController

- (_TtC7NewsUI228PuzzleSettingsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___dataSource) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___collectionView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI228PuzzleSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219BBCEB4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(PuzzleSettingsViewController *)&v4 viewDidAppear:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(PuzzleSettingsViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219BBE17C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219BBE2A0();
}

@end