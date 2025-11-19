@interface BLTSectionInfoItem
- (NSString)displayName;
@end

@implementation BLTSectionInfoItem

- (NSString)displayName
{
  v3 = [(BLTSectionInfoItem *)self sectionInfo];
  v4 = [v3 displayName];

  if (!v4)
  {
    v5 = MEMORY[0x277CC1E60];
    v6 = [(BLTSectionInfoItem *)self sectionInfo];
    v7 = [v6 sectionID];
    v8 = [v5 applicationProxyForIdentifier:v7];

    v4 = [v8 localizedName];
  }

  return v4;
}

@end