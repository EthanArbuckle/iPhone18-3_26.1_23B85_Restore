@interface WBTabGroup(MobileSafariFrameworkExtras)
- (id)plainTextForPasteboard;
- (id)richTextForPasteboard;
- (uint64_t)_sf_isOppositeBrowsingModeOfTabGroup:()MobileSafariFrameworkExtras;
- (uint64_t)tabCountForPasteboard;
@end

@implementation WBTabGroup(MobileSafariFrameworkExtras)

- (id)plainTextForPasteboard
{
  isNamed = [self isNamed];
  v3 = MEMORY[0x1E696AEC0];
  unpinnedTabs = [self unpinnedTabs];
  v5 = [v3 safari_listOfLinksForTabs:unpinnedTabs];

  if (((v5 != 0) & isNamed) != 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    title = [self title];
    v8 = [v6 stringWithFormat:@"%@\n%@", title, v5];

    v5 = v8;
  }

  return v5;
}

- (id)richTextForPasteboard
{
  v15[1] = *MEMORY[0x1E69E9840];
  isNamed = [self isNamed];
  v3 = MEMORY[0x1E696AAB0];
  unpinnedTabs = [self unpinnedTabs];
  v5 = [v3 safari_richListOfLinksForTabs:unpinnedTabs includingBulletForSingleLink:isNamed];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (isNamed)
    {
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      title = [self title];
      v14 = *MEMORY[0x1E69DB648];
      v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
      v15[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v7 initWithString:title attributes:v10];
      [v6 appendAttributedString:v11];

      v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v6 appendAttributedString:v12];
    }

    [v6 appendAttributedString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)tabCountForPasteboard
{
  v1 = MEMORY[0x1E69E20D8];
  unpinnedTabs = [self unpinnedTabs];
  v3 = [v1 linkCountForTabs:unpinnedTabs];

  return v3;
}

- (uint64_t)_sf_isOppositeBrowsingModeOfTabGroup:()MobileSafariFrameworkExtras
{
  v4 = a3;
  LODWORD(self) = [self isPrivateBrowsing];
  isPrivateBrowsing = [v4 isPrivateBrowsing];

  return self ^ isPrivateBrowsing;
}

@end