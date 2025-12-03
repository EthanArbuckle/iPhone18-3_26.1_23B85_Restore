@interface RecentsHomeScreenWidgetViewController
- (_TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)updateForBundleIdentifier:(id)identifier;
- (void)updateForWidgetConfiguration:(id)configuration;
- (void)updateLockedStateWithDeviceIsLocked:(BOOL)locked;
- (void)updateQueryFiltersForNewApps;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RecentsHomeScreenWidgetViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000066C8();
}

- (void)updateLockedStateWithDeviceIsLocked:(BOOL)locked
{
  selfCopy = self;
  sub_100006D04(locked);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100007310(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100007914(disappear);
}

- (_TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10001A1C0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100007EF4(v5, v7, bundle);
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  sub_10000FCD8(reloadedCopy, &unk_100025300, sub_100010378, &unk_100025318);
}

- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block
{
  v6 = _Block_copy(block);
  collectionCopy = collection;
  selfCopy = self;
  sub_10000FCD8(collectionCopy, &unk_1000252B0, sub_1000101F0, &unk_1000252C8);
  _Block_release(v6);
}

- (void)updateForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_10001A1C0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10000FFD4(v4, v6);
}

- (void)updateForWidgetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_10000E0C0(configuration);
}

- (void)updateQueryFiltersForNewApps
{
  selfCopy = self;
  sub_10000F1D0();
}

@end