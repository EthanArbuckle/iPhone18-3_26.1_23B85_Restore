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
  v13 = [[a1 alloc] initWithItemProvider:v12];
  v14 = objc_alloc_init(TabDragMetadata);
  [(TabDragMetadata *)v14 setTab:v11];

  [(TabDragMetadata *)v14 setTabItem:v10];
  [(TabDragMetadata *)v14 setBrowserController:v9];

  [v13 setLocalObject:v14];

  return v13;
}

- (uint64_t)safari_localTabIsPinnable
{
  v2 = [a1 safari_localBrowserController];
  v3 = [v2 tabController];
  v4 = [a1 safari_localWBTab];
  v5 = [v3 isTabPinnable:v4];

  return v5;
}

- (id)safari_localTab
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [a1 safari_localWBTab];
  v4 = [v3 uuid];
  v5 = [v2 initWithUUIDString:v4];

  v6 = [a1 safari_localBrowserController];
  v7 = [v6 tabController];
  v8 = [v7 tabWithUUID:v5];

  return v8;
}

- (id)safari_localSourceTabView
{
  v2 = [a1 safari_localTabItem];
  if (v2)
  {
    v3 = [a1 safari_localBrowserController];
    v4 = [v3 tabCollectionViewProvider];
    v5 = [v4 tabCollectionViewForItem:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_localWBTab
{
  v1 = [(UIDragItem *)a1 _safari_localTabDragMetadata];
  v2 = [v1 tab];

  return v2;
}

- (id)safari_localTabItem
{
  v1 = [(UIDragItem *)a1 _safari_localTabDragMetadata];
  v2 = [v1 tabItem];

  return v2;
}

- (id)safari_localBrowserController
{
  v1 = [(UIDragItem *)a1 _safari_localTabDragMetadata];
  v2 = [v1 browserController];

  return v2;
}

- (uint64_t)safari_dragPreviewRequiresUpdateForTabView:()MobileSafariExtras pinned:
{
  v6 = a3;
  v7 = [(UIDragItem *)a1 _safari_localTabDragMetadata];
  v8 = [v7 targetTabViewForDragPreview];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [a1 safari_localSourceTabView];
  }

  v11 = v10;

  [v7 setTargetTabViewForDragPreview:v6];
  v12 = [v7 dragPreviewPinned];
  [v7 setDragPreviewPinned:a4];

  return (v11 != v6) | ((v12 ^ a4) & 1);
}

@end