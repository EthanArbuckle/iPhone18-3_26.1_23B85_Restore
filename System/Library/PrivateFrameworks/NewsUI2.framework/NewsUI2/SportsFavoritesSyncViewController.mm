@interface SportsFavoritesSyncViewController
- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)doConfirmationAction;
- (void)doDeferAction;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsFavoritesSyncViewController

- (void)doConfirmationAction
{
  v2 = self;
  sub_21935D778(2, sub_21935E540, 0);
}

- (void)doDeferAction
{
  v2 = self;
  sub_21935D778(3, sub_21935E538, 1);
}

- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_21935D9D8();
  v3 = [v2 traitCollection];
  sub_21935E3CC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21935E0B8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_21935E1E0(a3);
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(SportsFavoritesSyncViewController *)&v2 viewWillLayoutSubviews];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(SportsFavoritesSyncViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_21935E3CC();
}

@end