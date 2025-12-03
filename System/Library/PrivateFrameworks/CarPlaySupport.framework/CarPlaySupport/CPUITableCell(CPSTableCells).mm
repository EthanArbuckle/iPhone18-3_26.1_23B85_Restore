@interface CPUITableCell(CPSTableCells)
- (void)configureWithListItem:()CPSTableCells spinning:environment:activePlayback:;
@end

@implementation CPUITableCell(CPSTableCells)

- (void)configureWithListItem:()CPSTableCells spinning:environment:activePlayback:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v39 = a4;
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = a6;
  v36 = 0;
  accessoryType = [location[0] accessoryType];
  if (accessoryType)
  {
    if (accessoryType == 1)
    {
      accessoryWithDisclosureIndicator = [MEMORY[0x277CF9190] accessoryWithDisclosureIndicator];
      v10 = v36;
      v36 = accessoryWithDisclosureIndicator;
      v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    else if (accessoryType == 2)
    {
      v34 = 0;
      v32 = 0;
      if ([v38 isUserApplication])
      {
        accessoryWithCloudIcon = [MEMORY[0x277CF9190] accessoryWithCloudIcon];
        v34 = 1;
        objc_storeStrong(&v36, accessoryWithCloudIcon);
      }

      else
      {
        accessoryWithiCloudIcon = [MEMORY[0x277CF9190] accessoryWithiCloudIcon];
        v32 = 1;
        objc_storeStrong(&v36, accessoryWithiCloudIcon);
      }

      if (v32)
      {
        v6 = MEMORY[0x277D82BD8](accessoryWithiCloudIcon).n128_u64[0];
      }

      if (v34)
      {
        v6 = MEMORY[0x277D82BD8](accessoryWithCloudIcon).n128_u64[0];
      }
    }
  }

  else
  {
    accessoryImage = [location[0] accessoryImage];
    v6 = MEMORY[0x277D82BD8](accessoryImage).n128_u64[0];
    if (accessoryImage)
    {
      v24 = MEMORY[0x277CF9190];
      accessoryImage2 = [location[0] accessoryImage];
      v7 = [v24 accessoryWithImage:?];
      v8 = v36;
      v36 = v7;
      MEMORY[0x277D82BD8](v8);
      v6 = MEMORY[0x277D82BD8](accessoryImage2).n128_u64[0];
    }
  }

  v20 = MEMORY[0x277CF9198];
  text = [location[0] text];
  detailText = [location[0] detailText];
  image = [location[0] image];
  isExplicitContent = [location[0] isExplicitContent];
  v17 = v36;
  v18 = v39;
  [location[0] playbackProgress];
  v15 = v11 > 0.0;
  [location[0] playbackProgress];
  v19 = v12;
  LOBYTE(v14) = v15;
  BYTE1(v14) = v37 & 1;
  BYTE2(v14) = [location[0] isPlaying];
  BYTE3(v14) = [location[0] playingIndicatorLocation] == 0;
  BYTE4(v14) = [location[0] isEnabled];
  v31 = [v20 configurationWithText:text detailText:detailText image:image showExplicit:isExplicitContent accessory:v17 showActivityIndicator:v18 & 1 showPlaybackProgress:v19 playbackProgress:v14 activePlayback:? isPlaying:? playingIndicatorLeadingSide:? isEnabled:?];
  MEMORY[0x277D82BD8](image);
  MEMORY[0x277D82BD8](detailText);
  *&v13 = MEMORY[0x277D82BD8](text).n128_u64[0];
  [selfCopy applyConfiguration:{v31, v13}];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

@end