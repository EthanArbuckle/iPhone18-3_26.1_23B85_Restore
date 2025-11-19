@interface WBTabGroup(MobileSafariFrameworkExtras)
- (id)plainTextForPasteboard;
- (id)richTextForPasteboard;
- (uint64_t)_sf_isOppositeBrowsingModeOfTabGroup:()MobileSafariFrameworkExtras;
- (uint64_t)tabCountForPasteboard;
@end

@implementation WBTabGroup(MobileSafariFrameworkExtras)

- (id)plainTextForPasteboard
{
  v2 = [a1 isNamed];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 unpinnedTabs];
  v5 = [v3 safari_listOfLinksForTabs:v4];

  if (((v5 != 0) & v2) != 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [a1 title];
    v8 = [v6 stringWithFormat:@"%@\n%@", v7, v5];

    v5 = v8;
  }

  return v5;
}

- (id)richTextForPasteboard
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 isNamed];
  v3 = MEMORY[0x1E696AAB0];
  v4 = [a1 unpinnedTabs];
  v5 = [v3 safari_richListOfLinksForTabs:v4 includingBulletForSingleLink:v2];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (v2)
    {
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = [a1 title];
      v14 = *MEMORY[0x1E69DB648];
      v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
      v15[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v7 initWithString:v8 attributes:v10];
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
  v2 = [a1 unpinnedTabs];
  v3 = [v1 linkCountForTabs:v2];

  return v3;
}

- (uint64_t)_sf_isOppositeBrowsingModeOfTabGroup:()MobileSafariFrameworkExtras
{
  v4 = a3;
  LODWORD(a1) = [a1 isPrivateBrowsing];
  v5 = [v4 isPrivateBrowsing];

  return a1 ^ v5;
}

@end