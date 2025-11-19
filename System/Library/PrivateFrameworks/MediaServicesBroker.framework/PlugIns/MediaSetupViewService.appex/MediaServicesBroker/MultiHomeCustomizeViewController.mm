@interface MultiHomeCustomizeViewController
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)requestDismiss;
- (void)selectContinue;
- (void)switchDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation MultiHomeCustomizeViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10001D284();
}

- (void)requestDismiss
{
  v2 = *&self->OBTableWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_mainController];
  v3 = self;
  sub_100011B3C(1u);
}

- (void)selectContinue
{
  v2 = self;
  sub_10001D58C();
}

- (void)switchDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D860(v4);
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1000257AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002578C();
  v11 = a3;
  v12 = self;
  v13 = sub_10001E2D0(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *&self->OBTableWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_viewModel];
  if (!(v4 >> 62))
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 0)
  {
    v6 = *&self->OBTableWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_viewModel];
  }

  return sub_100025C3C();
}

@end