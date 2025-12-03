@interface PuzzleSettingsViewController
- (_TtC7NewsUI228PuzzleSettingsViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI228PuzzleSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PuzzleSettingsViewController

- (_TtC7NewsUI228PuzzleSettingsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___dataSource) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228PuzzleSettingsViewController____lazy_storage___collectionView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI228PuzzleSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219BBCEB4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(PuzzleSettingsViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(PuzzleSettingsViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_219BBE17C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_219BBE2A0();
}

@end