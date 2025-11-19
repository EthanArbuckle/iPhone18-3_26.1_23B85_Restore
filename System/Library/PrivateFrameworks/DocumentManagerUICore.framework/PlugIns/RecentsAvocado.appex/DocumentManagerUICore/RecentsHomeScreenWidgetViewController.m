@interface RecentsHomeScreenWidgetViewController
- (_TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)updateForBundleIdentifier:(id)a3;
- (void)updateForWidgetConfiguration:(id)a3;
- (void)updateLockedStateWithDeviceIsLocked:(BOOL)a3;
- (void)updateQueryFiltersForNewApps;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RecentsHomeScreenWidgetViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000066C8();
}

- (void)updateLockedStateWithDeviceIsLocked:(BOOL)a3
{
  v4 = self;
  sub_100006D04(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100007310(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100007914(a3);
}

- (_TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10001A1C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100007EF4(v5, v7, a4);
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000FCD8(v4, &unk_100025300, sub_100010378, &unk_100025318);
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  sub_10000FCD8(v7, &unk_1000252B0, sub_1000101F0, &unk_1000252C8);
  _Block_release(v6);
}

- (void)updateForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_10001A1C0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_10000FFD4(v4, v6);
}

- (void)updateForWidgetConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000E0C0(a3);
}

- (void)updateQueryFiltersForNewApps
{
  v2 = self;
  sub_10000F1D0();
}

@end