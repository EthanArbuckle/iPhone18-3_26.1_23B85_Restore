@interface FLPreferencesFollowUpItemListSpeficierFactory
+ (id)detailSpecifiersForFollowUpItem:(id)item target:(id)target selector:(SEL)selector;
@end

@implementation FLPreferencesFollowUpItemListSpeficierFactory

+ (id)detailSpecifiersForFollowUpItem:(id)item target:(id)target selector:(SEL)selector
{
  v76 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  targetCopy = target;
  v9 = objc_alloc(MEMORY[0x277CFE518]);
  groupIdentifier = [itemCopy groupIdentifier];
  v11 = [v9 initWithIdentifier:groupIdentifier];

  v57 = v11;
  if ([v11 restrictionEnabled])
  {
    mEMORY[0x277CFE4E8] = [MEMORY[0x277CFE4E8] sharedFilter];
    v13 = [mEMORY[0x277CFE4E8] overrideGroupRestrictionsForItem:itemCopy] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v15 = MEMORY[0x277D3FAD8];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v17 = [v15 groupSpecifierWithID:uniqueIdentifier];

  v56 = v17;
  [array addObject:v17];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28584F260 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  v19 = objc_opt_class();
  v63 = *MEMORY[0x277D3FE58];
  [v18 setProperty:v19 forKey:?];
  v68 = *MEMORY[0x277CFE418];
  [v18 setProperty:itemCopy forKey:?];
  representingBundlePath = [itemCopy representingBundlePath];

  v21 = MEMORY[0x277D3FFC0];
  v69 = v18;
  if (representingBundlePath)
  {
    v22 = v13;
    v23 = MEMORY[0x277CCA8D8];
    representingBundlePath2 = [itemCopy representingBundlePath];
    v25 = [v23 bundleWithPath:representingBundlePath2];

    bundleIconName = [itemCopy bundleIconName];

    v27 = MEMORY[0x277D755B8];
    if (bundleIconName)
    {
      bundleIconName2 = [itemCopy bundleIconName];
      mainScreen = [v27 imageNamed:bundleIconName2 inBundle:v25];

      bundleIdentifier = SFAppTintColor();
      [mainScreen imageWithTintColor:bundleIdentifier];
    }

    else
    {
      bundleIdentifier = [v25 bundleIdentifier];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      [v27 _applicationIconImageForBundleIdentifier:bundleIdentifier format:0 scale:?];
    }
    v31 = ;

    v18 = v69;
    [v69 setProperty:v31 forKey:*v21];

    v13 = v22;
  }

  [array addObject:v18];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [itemCopy actions];
  v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v70)
  {
    v67 = *v72;
    v65 = *MEMORY[0x277D3FD80];
    v66 = *MEMORY[0x277CFE410];
    v64 = *MEMORY[0x277CFE450];
    v58 = *MEMORY[0x277CFE400];
    v62 = *v21;
    v59 = itemCopy;
    v60 = *MEMORY[0x277D3FF38];
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v72 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v71 + 1) + 8 * i);
        v34 = MEMORY[0x277D3FAD8];
        label = [v33 label];
        v36 = [v34 preferenceSpecifierNamed:label target:targetCopy set:0 get:0 detail:0 cell:13 edit:0];

        [v36 setProperty:v33 forKey:v66];
        [v36 setProperty:MEMORY[0x277CBEC38] forKey:v65];
        [v36 setProperty:itemCopy forKey:v68];
        [v36 setButtonAction:selector];
        groupIdentifier2 = [itemCopy groupIdentifier];
        if ([groupIdentifier2 isEqualToString:v64])
        {
          actions = [itemCopy actions];
          if ([actions count] == 1)
          {
            displayStyle = [itemCopy displayStyle];

            if ((displayStyle & 2) == 0)
            {
              goto LABEL_20;
            }

            groupIdentifier2 = [itemCopy uniqueIdentifier];
            actions = [v58 stringByAppendingString:groupIdentifier2];
            [v36 setIdentifier:actions];
          }
        }

LABEL_20:
        representingBundlePath3 = [itemCopy representingBundlePath];

        if (representingBundlePath3)
        {
          [v36 setProperty:objc_opt_class() forKey:v63];
          v41 = MEMORY[0x277CCA8D8];
          representingBundlePath4 = [itemCopy representingBundlePath];
          v43 = [v41 bundleWithPath:representingBundlePath4];

          bundleIconName3 = [itemCopy bundleIconName];

          v45 = MEMORY[0x277D755B8];
          if (bundleIconName3)
          {
            bundleIconName4 = [itemCopy bundleIconName];
            v47 = [v45 imageNamed:bundleIconName4 inBundle:v43];
          }

          else
          {
            bundleIconName4 = [v43 bundleIdentifier];
            [MEMORY[0x277D759A0] mainScreen];
            v48 = v13;
            v49 = array;
            selectorCopy = selector;
            v52 = v51 = targetCopy;
            [v52 scale];
            v47 = [v45 _applicationIconImageForBundleIdentifier:bundleIconName4 format:0 scale:?];

            targetCopy = v51;
            selector = selectorCopy;
            array = v49;
            v13 = v48;
            itemCopy = v59;
          }

          v53 = [v47 _imageWithSize:{29.0, 29.0}];

          [v36 setProperty:v53 forKey:v62];
        }

        if (v13)
        {
          [v36 setProperty:MEMORY[0x277CBEC28] forKey:v60];
        }

        [array addObject:v36];

        v18 = v69;
      }

      v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v70);
  }

  v54 = *MEMORY[0x277D85DE8];

  return array;
}

@end