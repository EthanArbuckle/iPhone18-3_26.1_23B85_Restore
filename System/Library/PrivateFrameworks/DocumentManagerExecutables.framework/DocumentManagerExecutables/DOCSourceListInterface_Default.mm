@interface DOCSourceListInterface_Default
- (UIImage)iconForCompletedSync;
- (UIImage)iconForRecents;
- (UIImage)iconForShared;
- (UIImage)iconForSyncError;
- (UIImage)iconForSyncingMetadata;
- (id)ejectIconFor:(int64_t)a3 iconColor:(id)a4;
- (id)iconForSource:(id)a3;
- (id)nonThumbnailedIconForItem:(id)a3;
@end

@implementation DOCSourceListInterface_Default

- (UIImage)iconForRecents
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0x6B636F6C63, 0xE500000000000000, 0, 1);

  return v2;
}

- (UIImage)iconForShared
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0xD000000000000018, 0x8000000249BC5EC0, 0, 1);

  return v2;
}

- (UIImage)iconForSyncError
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0xD00000000000002BLL, 0x8000000249BCF150, 0, 1);

  return v2;
}

- (UIImage)iconForCompletedSync
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0xD000000000000010, 0x8000000249BCF180, 0, 1);

  return v2;
}

- (UIImage)iconForSyncingMetadata
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0xD00000000000001ELL, 0x8000000249BCF1A0, 0, 1);

  return v2;
}

- (id)ejectIconFor:(int64_t)a3 iconColor:(id)a4
{
  v5 = *MEMORY[0x277D76918];
  v6 = objc_opt_self();
  v7 = a4;
  v8 = [v6 configurationWithTextStyle:v5 scale:2];
  v9 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0x69632E7463656A65, 0xEC000000656C6372, 0, 1);
  v10 = [v9 imageWithConfiguration_];

  v11 = [v10 imageWithTintColor:v7 renderingMode:1];

  return v11;
}

- (id)iconForSource:(id)a3
{
  v3 = [a3 iconPreferingSymbolImages];

  return v3;
}

- (id)nonThumbnailedIconForItem:(id)a3
{
  v3 = a3;

  v4 = specialized DOCSourceListInterface_Default.nonThumbnailedIcon(forItem:)(v3);

  return v4;
}

@end