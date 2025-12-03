@interface SportsFavoritesSyncViewController
- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)doConfirmationAction;
- (void)doDeferAction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsFavoritesSyncViewController

- (void)doConfirmationAction
{
  selfCopy = self;
  sub_21935D778(2, sub_21935E540, 0);
}

- (void)doDeferAction
{
  selfCopy = self;
  sub_21935D778(3, sub_21935E538, 1);
}

- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7NewsUI233SportsFavoritesSyncViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  traitCollection = [v2 traitCollection];
  sub_21935E3CC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21935E0B8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21935E1E0(disappear);
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(SportsFavoritesSyncViewController *)&v2 viewWillLayoutSubviews];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SportsFavoritesSyncViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_21935E3CC();
}

@end