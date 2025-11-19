@interface ShortcutsViewController
- (_TtC7NewsUI223ShortcutsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ShortcutsViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ShortcutsViewController *)&v5 dealloc];
}

- (_TtC7NewsUI223ShortcutsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219B1F104();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_219B1F798();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ShortcutsViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219B21D94();
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_219BE8684();
}

@end