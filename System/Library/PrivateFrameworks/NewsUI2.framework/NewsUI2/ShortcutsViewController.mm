@interface ShortcutsViewController
- (_TtC7NewsUI223ShortcutsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ShortcutsViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ShortcutsViewController *)&v5 dealloc];
}

- (_TtC7NewsUI223ShortcutsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219B1F104();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_219B1F798();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ShortcutsViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_219B21D94();
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_219BE8684();
}

@end