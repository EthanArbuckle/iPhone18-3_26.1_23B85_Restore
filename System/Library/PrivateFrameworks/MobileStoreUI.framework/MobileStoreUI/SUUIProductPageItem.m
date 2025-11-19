@interface SUUIProductPageItem
- (SUUIProductPageItem)initWithLookupDictionary:(id)a3;
- (id)loadedChildItems;
- (int64_t)numberOfChildItems;
- (void)_setVersionHistory:(id)a3;
@end

@implementation SUUIProductPageItem

- (SUUIProductPageItem)initWithLookupDictionary:(id)a3
{
  v139 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v135.receiver = self;
  v135.super_class = SUUIProductPageItem;
  v5 = [(SUUIItem *)&v135 initWithLookupDictionary:v4];

  if (!v5)
  {
    goto LABEL_110;
  }

  v6 = [v4 objectForKey:*MEMORY[0x277D6A2F8]];
  v7 = 0x277CCA000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    artistPageURL = v5->_artistPageURL;
    v5->_artistPageURL = v8;
  }

  v10 = [v4 objectForKey:*MEMORY[0x277D6A320]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 copy];
    copyrightString = v5->_copyrightString;
    v5->_copyrightString = v11;
  }

  v13 = [v4 objectForKey:@"regularPriceFormatted"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 copy];
    regularPriceString = v5->_regularPriceString;
    v5->_regularPriceString = v14;
  }

  v16 = [v4 objectForKey:*MEMORY[0x277D6A398]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v17 setDateFormat:@"yyyy-MM-dd"];
    v18 = [v17 dateFromString:v16];
    if (v18)
    {
      [v17 setDateFormat:0];
      [v17 setDateStyle:2];
      [v17 setTimeStyle:0];
      v19 = [v17 stringFromDate:v18];
    }

    else
    {
      v19 = [v16 copy];
    }

    lastUpdateDateString = v5->_lastUpdateDateString;
    v5->_lastUpdateDateString = v19;
  }

  v21 = [v4 objectForKey:*MEMORY[0x277D6A3D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 copy];
    shortenedProductPageURLString = v5->_shortenedProductPageURLString;
    v5->_shortenedProductPageURLString = v22;
  }

  v24 = [v4 objectForKey:@"childrenIds"];
  objc_opt_class();
  v118 = v24;
  v121 = v5;
  v116 = v4;
  if (objc_opt_isKindOfClass())
  {
    v25 = [v24 copy];
    childItemIdentifiers = v5->_childItemIdentifiers;
    v5->_childItemIdentifiers = v25;

    v27 = [v4 objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v113 = v21;
      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      loadedChildItems = v5->_loadedChildItems;
      v5->_loadedChildItems = v28;

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v30 = v5->_childItemIdentifiers;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v131 objects:v138 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v132;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v132 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v131 + 1) + 8 * i);
            v36 = [v35 stringValue];
            v37 = [v27 objectForKey:v36];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [[SUUIItem alloc] initWithLookupDictionary:v37];
              if (v38)
              {
                [(NSMutableDictionary *)v5->_loadedChildItems setObject:v38 forKey:v35];
              }
            }
          }

          v32 = [(NSArray *)v30 countByEnumeratingWithState:&v131 objects:v138 count:16];
        }

        while (v32);
      }

      v21 = v113;
      v4 = v116;
      v7 = 0x277CCA000uLL;
    }
  }

  v39 = [v4 objectForKey:@"appBundleAdamIds"];
  objc_opt_class();
  v117 = v39;
  if (objc_opt_isKindOfClass())
  {
    v40 = [v39 copy];
    parentBundleItemIdentifiers = v5->_parentBundleItemIdentifiers;
    v5->_parentBundleItemIdentifiers = v40;
  }

  v42 = [v4 objectForKey:@"contentRatingsBySystem"];
  objc_opt_class();
  v122 = v42;
  if (objc_opt_isKindOfClass())
  {
    v114 = v21;
    v43 = [v42 keyEnumerator];
    v119 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v127 objects:v137 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v128;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v128 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v127 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = v7;
            v51 = [v49 isEqualToString:@"appsApple"];
            v52 = [SUUIItemContentRating alloc];
            v53 = [v122 objectForKey:v49];
            v54 = [v49 copy];
            v55 = [(SUUIItemContentRating *)v52 initWithContentRatingDictionary:v53 systemName:v54];
            v56 = v55;
            if (v51)
            {
              contentRating = v121->_contentRating;
              v121->_contentRating = v55;

              v56 = v53;
            }

            else
            {

              [(SUUIItemContentRating *)v119 addObject:v56];
            }

            v7 = v50;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v127 objects:v137 count:16];
      }

      while (v46);
    }

    v58 = v119;
    v59 = [MEMORY[0x277CBEA60] arrayWithArray:v119];
    v5 = v121;
    secondaryContentRatings = v121->_secondaryContentRatings;
    v121->_secondaryContentRatings = v59;

    v21 = v114;
    v4 = v116;
    goto LABEL_48;
  }

  v44 = [v4 objectForKey:*MEMORY[0x277D6A310]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = [[SUUIItemContentRating alloc] initWithContentRatingDictionary:v44 systemName:@"appsApple"];
    v58 = v5->_contentRating;
    v5->_contentRating = v61;
LABEL_48:
  }

  v62 = [v4 objectForKey:*MEMORY[0x277D6A328]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = [v62 objectForKey:*MEMORY[0x277D6A330]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [v63 copy];
      itemDescription = v5->_itemDescription;
      v5->_itemDescription = v64;
    }
  }

  else
  {
    v63 = v21;
  }

  v66 = [v4 objectForKey:*MEMORY[0x277D6A3E0]];
  objc_opt_class();
  v120 = v66;
  if (objc_opt_isKindOfClass())
  {
    v67 = [v66 objectForKey:*MEMORY[0x277D6A358]];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v67 BOOLValue])
    {
      v5->_supportedFeatures |= 1uLL;
    }

    v68 = [v66 objectForKey:*MEMORY[0x277D6A370]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = [v68 copy];
      licenseAgreementURLString = v5->_licenseAgreementURLString;
      v5->_licenseAgreementURLString = v69;
    }

    v71 = [v66 objectForKey:*MEMORY[0x277D6A388]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = [v71 copy];
      privacyPolicyURLString = v5->_privacyPolicyURLString;
      v5->_privacyPolicyURLString = v72;
    }

    v74 = [v66 objectForKey:*MEMORY[0x277D6A3A8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [v74 copy];
      installationRequirementsDescription = v5->_installationRequirementsDescription;
      v5->_installationRequirementsDescription = v75;
    }

    v77 = [v66 objectForKey:*MEMORY[0x277D6A400]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = [v77 copy];
      supportURLString = v5->_supportURLString;
      v5->_supportURLString = v78;
    }

    v80 = [v66 objectForKey:*MEMORY[0x277D6A348]];

    if (objc_opt_respondsToSelector())
    {
      -[SUUIItem _setHasInAppPurchases:](v5, "_setHasInAppPurchases:", [v80 BOOLValue]);
    }

    v81 = [v66 objectForKey:@"developerInfo"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = [[SUUIDeveloperInfo alloc] initWithDeveloperDictionary:v81];
      developerInfo = v5->_developerInfo;
      v5->_developerInfo = v82;

      v84 = v5->_developerInfo;
      v85 = [(SUUIItem *)v5 artistName];
      [(SUUIDeveloperInfo *)v84 setTradeName:v85];
    }

    v63 = [v66 objectForKey:@"seller"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = [v63 copy];
      sellerName = v5->_sellerName;
      v5->_sellerName = v86;
    }
  }

  v88 = [v4 objectForKey:@"supportsPassbook"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v88 BOOLValue])
  {
    v5->_supportedFeatures |= 4uLL;
  }

  if ([(SUUIItem *)v5 isNewsstandApp])
  {
    v5->_supportedFeatures |= 8uLL;
  }

  v89 = [v4 objectForKey:@"gameCenterInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = [v89 objectForKey:@"hasLiveAchievements"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v90 BOOLValue])
    {
      v5->_supportedGameCenterFeatures |= 2uLL;
    }

    v91 = [v89 objectForKey:@"hasLiveLeaderboards"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v91 BOOLValue])
    {
      v5->_supportedGameCenterFeatures |= 4uLL;
    }

    v92 = [v89 objectForKey:@"usesGameControllerAPI"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v92 BOOLValue])
    {
      v5->_supportedGameCenterFeatures |= 1uLL;
    }

    v93 = [v89 objectForKey:@"usesMultiplayerAPI"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v93 BOOLValue])
    {
      v5->_supportedGameCenterFeatures |= 8uLL;
    }

    v88 = [v89 objectForKey:@"usesTurnBasedAPI"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v88 BOOLValue])
    {
      v5->_supportedGameCenterFeatures |= 0x10uLL;
    }
  }

  v115 = v89;
  v94 = [v4 objectForKey:*MEMORY[0x277D6A3F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = objc_alloc_init(SUUIStoreNotes);
    storeNotes = v5->_storeNotes;
    v5->_storeNotes = v95;

    v97 = [v94 objectForKey:*MEMORY[0x277D6A3E8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIStoreNotes *)v5->_storeNotes setStandardNotes:v97];
    }
  }

  else
  {
    v97 = v88;
  }

  v98 = SUUIItemScreenshotsForDictionary(v4);
  screenshots = v5->_screenshots;
  v5->_screenshots = v98;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v112 = v62;
    v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v101 = v97;
    v102 = [v101 countByEnumeratingWithState:&v123 objects:v136 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v124;
      do
      {
        for (k = 0; k != v103; ++k)
        {
          if (*v124 != v104)
          {
            objc_enumerationMutation(v101);
          }

          v106 = *(*(&v123 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v107 = [[SUUIScreenshot alloc] initWithScreenshotDictionary:v106];
            if (v107)
            {
              [v100 addObject:v107];
            }
          }
        }

        v103 = [v101 countByEnumeratingWithState:&v123 objects:v136 count:16];
      }

      while (v103);
    }

    v108 = [v100 copy];
    v5 = v121;
    v109 = v121->_screenshots;
    v121->_screenshots = v108;

    v4 = v116;
    v62 = v112;
  }

LABEL_110:
  v110 = v5;

  return v110;
}

- (id)loadedChildItems
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_childItemIdentifiers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_loadedChildItems objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int64_t)numberOfChildItems
{
  if (self->_childItemIdentifiers)
  {
    childItemIdentifiers = self->_childItemIdentifiers;

    return [(NSArray *)childItemIdentifiers count];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SUUIProductPageItem;
    return [(SUUIItem *)&v6 numberOfChildItems];
  }
}

- (void)_setVersionHistory:(id)a3
{
  v13 = a3;
  if ([v13 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(NSString *)v5 setDateStyle:2];
    [(NSString *)v5 setTimeStyle:0];
    v6 = [v13 objectAtIndex:0];
    v7 = [v6 date];
    v8 = [(NSString *)v5 stringFromDate:v7];
    lastUpdateDateString = self->_lastUpdateDateString;
    self->_lastUpdateDateString = v8;

    objc_storeStrong(&self->_releaseNotes, a3);
    v10 = [v6 changeNotes];
    updateDescription = self->_updateDescription;
    self->_updateDescription = v10;
  }

  else
  {
    releaseNotes = self->_releaseNotes;
    self->_releaseNotes = 0;

    v5 = self->_updateDescription;
    self->_updateDescription = 0;
  }
}

@end