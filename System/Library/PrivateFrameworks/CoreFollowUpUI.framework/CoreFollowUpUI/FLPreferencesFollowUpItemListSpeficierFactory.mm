@interface FLPreferencesFollowUpItemListSpeficierFactory
+ (id)detailSpecifiersForFollowUpItem:(id)a3 target:(id)a4 selector:(SEL)a5;
@end

@implementation FLPreferencesFollowUpItemListSpeficierFactory

+ (id)detailSpecifiersForFollowUpItem:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x277CFE518]);
  v10 = [v7 groupIdentifier];
  v11 = [v9 initWithIdentifier:v10];

  v57 = v11;
  if ([v11 restrictionEnabled])
  {
    v12 = [MEMORY[0x277CFE4E8] sharedFilter];
    v13 = [v12 overrideGroupRestrictionsForItem:v7] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = MEMORY[0x277D3FAD8];
  v16 = [v7 uniqueIdentifier];
  v17 = [v15 groupSpecifierWithID:v16];

  v56 = v17;
  [v14 addObject:v17];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28584F260 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  v19 = objc_opt_class();
  v63 = *MEMORY[0x277D3FE58];
  [v18 setProperty:v19 forKey:?];
  v68 = *MEMORY[0x277CFE418];
  [v18 setProperty:v7 forKey:?];
  v20 = [v7 representingBundlePath];

  v21 = MEMORY[0x277D3FFC0];
  v69 = v18;
  if (v20)
  {
    v22 = v13;
    v23 = MEMORY[0x277CCA8D8];
    v24 = [v7 representingBundlePath];
    v25 = [v23 bundleWithPath:v24];

    v26 = [v7 bundleIconName];

    v27 = MEMORY[0x277D755B8];
    if (v26)
    {
      v28 = [v7 bundleIconName];
      v29 = [v27 imageNamed:v28 inBundle:v25];

      v30 = SFAppTintColor();
      [v29 imageWithTintColor:v30];
    }

    else
    {
      v30 = [v25 bundleIdentifier];
      v29 = [MEMORY[0x277D759A0] mainScreen];
      [v29 scale];
      [v27 _applicationIconImageForBundleIdentifier:v30 format:0 scale:?];
    }
    v31 = ;

    v18 = v69;
    [v69 setProperty:v31 forKey:*v21];

    v13 = v22;
  }

  [v14 addObject:v18];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [v7 actions];
  v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v70)
  {
    v67 = *v72;
    v65 = *MEMORY[0x277D3FD80];
    v66 = *MEMORY[0x277CFE410];
    v64 = *MEMORY[0x277CFE450];
    v58 = *MEMORY[0x277CFE400];
    v62 = *v21;
    v59 = v7;
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
        v35 = [v33 label];
        v36 = [v34 preferenceSpecifierNamed:v35 target:v8 set:0 get:0 detail:0 cell:13 edit:0];

        [v36 setProperty:v33 forKey:v66];
        [v36 setProperty:MEMORY[0x277CBEC38] forKey:v65];
        [v36 setProperty:v7 forKey:v68];
        [v36 setButtonAction:a5];
        v37 = [v7 groupIdentifier];
        if ([v37 isEqualToString:v64])
        {
          v38 = [v7 actions];
          if ([v38 count] == 1)
          {
            v39 = [v7 displayStyle];

            if ((v39 & 2) == 0)
            {
              goto LABEL_20;
            }

            v37 = [v7 uniqueIdentifier];
            v38 = [v58 stringByAppendingString:v37];
            [v36 setIdentifier:v38];
          }
        }

LABEL_20:
        v40 = [v7 representingBundlePath];

        if (v40)
        {
          [v36 setProperty:objc_opt_class() forKey:v63];
          v41 = MEMORY[0x277CCA8D8];
          v42 = [v7 representingBundlePath];
          v43 = [v41 bundleWithPath:v42];

          v44 = [v7 bundleIconName];

          v45 = MEMORY[0x277D755B8];
          if (v44)
          {
            v46 = [v7 bundleIconName];
            v47 = [v45 imageNamed:v46 inBundle:v43];
          }

          else
          {
            v46 = [v43 bundleIdentifier];
            [MEMORY[0x277D759A0] mainScreen];
            v48 = v13;
            v49 = v14;
            v50 = a5;
            v52 = v51 = v8;
            [v52 scale];
            v47 = [v45 _applicationIconImageForBundleIdentifier:v46 format:0 scale:?];

            v8 = v51;
            a5 = v50;
            v14 = v49;
            v13 = v48;
            v7 = v59;
          }

          v53 = [v47 _imageWithSize:{29.0, 29.0}];

          [v36 setProperty:v53 forKey:v62];
        }

        if (v13)
        {
          [v36 setProperty:MEMORY[0x277CBEC28] forKey:v60];
        }

        [v14 addObject:v36];

        v18 = v69;
      }

      v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v70);
  }

  v54 = *MEMORY[0x277D85DE8];

  return v14;
}

@end