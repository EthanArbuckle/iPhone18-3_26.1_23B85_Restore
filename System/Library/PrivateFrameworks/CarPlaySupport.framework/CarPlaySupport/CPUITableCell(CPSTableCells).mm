@interface CPUITableCell(CPSTableCells)
- (void)configureWithListItem:()CPSTableCells spinning:environment:activePlayback:;
@end

@implementation CPUITableCell(CPSTableCells)

- (void)configureWithListItem:()CPSTableCells spinning:environment:activePlayback:
{
  v41 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v39 = a4;
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = a6;
  v36 = 0;
  v30 = [location[0] accessoryType];
  if (v30)
  {
    if (v30 == 1)
    {
      v9 = [MEMORY[0x277CF9190] accessoryWithDisclosureIndicator];
      v10 = v36;
      v36 = v9;
      v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    else if (v30 == 2)
    {
      v34 = 0;
      v32 = 0;
      if ([v38 isUserApplication])
      {
        v35 = [MEMORY[0x277CF9190] accessoryWithCloudIcon];
        v34 = 1;
        objc_storeStrong(&v36, v35);
      }

      else
      {
        v33 = [MEMORY[0x277CF9190] accessoryWithiCloudIcon];
        v32 = 1;
        objc_storeStrong(&v36, v33);
      }

      if (v32)
      {
        v6 = MEMORY[0x277D82BD8](v33).n128_u64[0];
      }

      if (v34)
      {
        v6 = MEMORY[0x277D82BD8](v35).n128_u64[0];
      }
    }
  }

  else
  {
    v26 = [location[0] accessoryImage];
    v6 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    if (v26)
    {
      v24 = MEMORY[0x277CF9190];
      v25 = [location[0] accessoryImage];
      v7 = [v24 accessoryWithImage:?];
      v8 = v36;
      v36 = v7;
      MEMORY[0x277D82BD8](v8);
      v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    }
  }

  v20 = MEMORY[0x277CF9198];
  v23 = [location[0] text];
  v22 = [location[0] detailText];
  v21 = [location[0] image];
  v16 = [location[0] isExplicitContent];
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
  v31 = [v20 configurationWithText:v23 detailText:v22 image:v21 showExplicit:v16 accessory:v17 showActivityIndicator:v18 & 1 showPlaybackProgress:v19 playbackProgress:v14 activePlayback:? isPlaying:? playingIndicatorLeadingSide:? isEnabled:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v13 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v41 applyConfiguration:{v31, v13}];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

@end