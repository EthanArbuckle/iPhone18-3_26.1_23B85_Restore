@interface BLTSectionInfoItem
- (NSString)displayName;
@end

@implementation BLTSectionInfoItem

- (NSString)displayName
{
  sectionInfo = [(BLTSectionInfoItem *)self sectionInfo];
  displayName = [sectionInfo displayName];

  if (!displayName)
  {
    v5 = MEMORY[0x277CC1E60];
    sectionInfo2 = [(BLTSectionInfoItem *)self sectionInfo];
    sectionID = [sectionInfo2 sectionID];
    v8 = [v5 applicationProxyForIdentifier:sectionID];

    displayName = [v8 localizedName];
  }

  return displayName;
}

@end