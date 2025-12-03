@interface UIDragItem(MobileSafariExtras)
+ (id)safari_itemWithTab:()MobileSafariExtras tabItem:browserController:;
- (id)safari_localBrowserController;
- (id)safari_localSourceTabView;
- (id)safari_localTab;
- (id)safari_localTabItem;
- (id)safari_localWBTab;
- (uint64_t)safari_dragPreviewRequiresUpdateForTabView:()MobileSafariExtras pinned:;
- (uint64_t)safari_localTabIsPinnable;
@end

@implementation UIDragItem(MobileSafariExtras)

+ (id)safari_itemWithTab:()MobileSafariExtras tabItem:browserController:
{
  v8 = MEMORY[0x277CCAA88];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 safari_itemProviderForTab:v11 browserController:v9];
  v13 = [[self alloc] initWithItemProvider:v12];
  v14 = objc_alloc_init(TabDragMetadata);
  [(TabDragMetadata *)v14 setTab:v11];

  [(TabDragMetadata *)v14 setTabItem:v10];
  [(TabDragMetadata *)v14 setBrowserController:v9];

  [v13 setLocalObject:v14];

  return v13;
}

- (uint64_t)safari_localTabIsPinnable
{
  safari_localBrowserController = [self safari_localBrowserController];
  tabController = [safari_localBrowserController tabController];
  safari_localWBTab = [self safari_localWBTab];
  v5 = [tabController isTabPinnable:safari_localWBTab];

  return v5;
}

- (id)safari_localTab
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  safari_localWBTab = [self safari_localWBTab];
  uuid = [safari_localWBTab uuid];
  v5 = [v2 initWithUUIDString:uuid];

  safari_localBrowserController = [self safari_localBrowserController];
  tabController = [safari_localBrowserController tabController];
  v8 = [tabController tabWithUUID:v5];

  return v8;
}

- (id)safari_localSourceTabView
{
  safari_localTabItem = [self safari_localTabItem];
  if (safari_localTabItem)
  {
    safari_localBrowserController = [self safari_localBrowserController];
    tabCollectionViewProvider = [safari_localBrowserController tabCollectionViewProvider];
    v5 = [tabCollectionViewProvider tabCollectionViewForItem:safari_localTabItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_localWBTab
{
  _safari_localTabDragMetadata = [(UIDragItem *)self _safari_localTabDragMetadata];
  v2 = [_safari_localTabDragMetadata tab];

  return v2;
}

- (id)safari_localTabItem
{
  _safari_localTabDragMetadata = [(UIDragItem *)self _safari_localTabDragMetadata];
  tabItem = [_safari_localTabDragMetadata tabItem];

  return tabItem;
}

- (id)safari_localBrowserController
{
  _safari_localTabDragMetadata = [(UIDragItem *)self _safari_localTabDragMetadata];
  browserController = [_safari_localTabDragMetadata browserController];

  return browserController;
}

- (uint64_t)safari_dragPreviewRequiresUpdateForTabView:()MobileSafariExtras pinned:
{
  v6 = a3;
  _safari_localTabDragMetadata = [(UIDragItem *)self _safari_localTabDragMetadata];
  targetTabViewForDragPreview = [_safari_localTabDragMetadata targetTabViewForDragPreview];
  v9 = targetTabViewForDragPreview;
  if (targetTabViewForDragPreview)
  {
    safari_localSourceTabView = targetTabViewForDragPreview;
  }

  else
  {
    safari_localSourceTabView = [self safari_localSourceTabView];
  }

  v11 = safari_localSourceTabView;

  [_safari_localTabDragMetadata setTargetTabViewForDragPreview:v6];
  dragPreviewPinned = [_safari_localTabDragMetadata dragPreviewPinned];
  [_safari_localTabDragMetadata setDragPreviewPinned:a4];

  return (v11 != v6) | ((dragPreviewPinned ^ a4) & 1);
}

@end