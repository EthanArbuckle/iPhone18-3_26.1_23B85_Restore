@interface SUUIItem
- (BOOL)isEqual:(id)equal;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)_downloadKind;
- (NSURL)largestArtworkURL;
- (SUUIItem)initWithCacheRepresentation:(id)representation;
- (SUUIItem)initWithLookupDictionary:(id)dictionary;
- (SUUIStoreIdentifier)storeIdentifier;
- (_NSRange)ageBandRange;
- (id)initContainerItemWithItem:(id)item;
- (id)lookupDictionary;
- (id)valueForMetricsField:(id)field;
@end

@implementation SUUIItem

- (id)initContainerItemWithItem:(id)item
{
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = SUUIItem;
  v5 = [(SUUIItem *)&v25 init];
  if (v5)
  {
    artistName = [itemCopy artistName];
    artistName = v5->_artistName;
    v5->_artistName = artistName;

    artworksProvider = [itemCopy artworksProvider];
    artworksProvider = v5->_artworksProvider;
    v5->_artworksProvider = artworksProvider;

    categoryName = [itemCopy categoryName];
    categoryName = v5->_categoryName;
    v5->_categoryName = categoryName;

    productPageURLString = [itemCopy productPageURLString];
    productPageURLString = v5->_productPageURLString;
    v5->_productPageURLString = productPageURLString;

    collectionName = [itemCopy collectionName];
    title = v5->_title;
    v5->_title = collectionName;

    if (v5->_productPageURLString)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5->_productPageURLString];
      path = [v16 path];
      v18 = path;
      if (path)
      {
        v19 = [path rangeOfString:@"/id"];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = [v18 substringFromIndex:v19 + v20];
          v5->_itemIdentifier = [v21 longLongValue];
        }
      }
    }

    itemKind = [itemCopy itemKind];
    if (itemKind == 13)
    {
      v23 = 7;
      goto LABEL_11;
    }

    if (itemKind == 14)
    {
      v23 = 15;
LABEL_11:
      v5->_itemKind = v23;
    }
  }

  return v5;
}

- (SUUIItem)initWithLookupDictionary:(id)dictionary
{
  v140 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v134.receiver = self;
  v134.super_class = SUUIItem;
  v5 = [(SUUIItem *)&v134 init];

  if (!v5)
  {
    goto LABEL_161;
  }

  v6 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_artistName, v6);
  }

  v7 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A308]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_bundleID, v7);
  }

  v8 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A340]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v9 = [v8 objectAtIndex:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = v9;
    categoryName = v5->_categoryName;
    v5->_categoryName = v8;
  }

  else
  {
    categoryName = [dictionaryCopy objectForKey:@"genres"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [categoryName firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [firstObject objectForKey:@"name"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v5->_categoryName, v12);
        }
      }
    }
  }

  v9 = v8;
LABEL_17:
  v13 = [dictionaryCopy objectForKey:@"collectionName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 copy];
    collectionName = v5->_collectionName;
    v5->_collectionName = v14;
  }

  v16 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A360]];

  if (objc_opt_respondsToSelector())
  {
    v5->_itemIdentifier = [v16 longLongValue];
  }

  v17 = [dictionaryCopy objectForKey:@"feedUrl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_feedUrlString, v17);
  }

  v18 = [dictionaryCopy objectForKey:@"appCount"];

  if (objc_opt_respondsToSelector())
  {
    v5->_numberOfChildItems = [v18 integerValue];
  }

  v19 = [dictionaryCopy objectForKey:@"hasInAppPurchases"];

  if (objc_opt_respondsToSelector())
  {
    v5->_hasInAppPurchases = [v19 BOOLValue];
  }

  v20 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A390]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_productPageURLString, v20);
  }

  v21 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A3A0]];

  objc_opt_class();
  v117 = v5;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
    requiredCapabilities = v5->_requiredCapabilities;
    v5->_requiredCapabilities = v22;
LABEL_42:

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = dictionaryCopy;
    requiredCapabilities = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v21 componentsSeparatedByString:@" "];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v25 = v133 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v130 objects:v139 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v131;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v131 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v130 + 1) + 8 * i);
          if ([v30 length])
          {
            [(NSArray *)requiredCapabilities addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v130 objects:v139 count:16];
      }

      while (v27);
    }

    v31 = [(NSArray *)requiredCapabilities copy];
    v5 = v117;
    v32 = v117->_requiredCapabilities;
    v117->_requiredCapabilities = v31;

    dictionaryCopy = v24;
    goto LABEL_42;
  }

LABEL_43:
  v33 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A338]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_title, v33);
  }

  v34 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A368]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v5->_itemKindString, v34);
    itemKindString = v5->_itemKindString;
    v36 = &off_2798FD028;
    v37 = 25;
    while (![*v36 isEqualToString:itemKindString])
    {
      v36 += 2;
      if (!--v37)
      {
        v38 = 0;
        goto LABEL_51;
      }
    }

    v38 = *(v36 - 1);
LABEL_51:
    v5 = v117;
    v117->_itemKind = v38;
  }

  v39 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A300]];

  v40 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v39];
  artworksProvider = v5->_artworksProvider;
  v5->_artworksProvider = v40;

  v42 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A378]];

  v43 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v42];
  newsstandArtworks = v5->_newsstandArtworks;
  v5->_newsstandArtworks = v43;

  if (v5->_newsstandArtworks)
  {
    v5->_newsstandApp = 1;
  }

  v45 = [dictionaryCopy objectForKey:@"hasMessagesExtension"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_hasMessagesExtension = [v45 BOOLValue];
  }

  v46 = [dictionaryCopy objectForKey:@"isHiddenFromSpringBoard"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_isHiddenFromSpringBoard = [v46 BOOLValue];
  }

  v47 = [dictionaryCopy objectForKey:@"isGameControllerSupported"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_gameControllerSupported = [v47 BOOLValue];
  }

  v48 = [dictionaryCopy objectForKey:@"requiresGameController"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_requiresGameController = [v48 BOOLValue];
  }

  v49 = [dictionaryCopy objectForKey:@"ageBand"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = [v49 objectForKey:@"maxAge"];
    v107 = [v49 objectForKey:@"minAge"];
  }

  else
  {
    v107 = 0;
    v50 = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5->_ageBandRange.location = [v107 integerValue];
    v51 = [v50 integerValue] - v5->_ageBandRange.location;
  }

  else
  {
    v51 = 0;
    v5->_ageBandRange.location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5->_ageBandRange.length = v51;
  v52 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A310]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = [v52 objectForKey:@"value"];

    v111 = v53;
    if (objc_opt_respondsToSelector())
    {
      v5->_parentalControlsRank = [v53 integerValue];
    }
  }

  else
  {
    v111 = v48;
  }

  v54 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A380]];
  objc_opt_class();
  v110 = v54;
  v106 = v52;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v54 count])
  {
    v55 = [v54 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [v55 objectForKey:@"version"];
      objc_opt_class();
      v57 = v50;
      if (objc_opt_isKindOfClass())
      {
        v58 = [v56 objectForKey:@"display"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v5->_versionString, v58);
        }

        v59 = [v56 objectForKey:@"externalId"];

        v111 = v59;
        if (objc_opt_respondsToSelector())
        {
          v5->_versionIdentifier = [v59 longLongValue];
        }
      }

      v60 = [[SUUIItemOffer alloc] initWithLookupDictionary:v55];
      itemOffer = v5->_itemOffer;
      v5->_itemOffer = v60;

      v62 = [dictionaryCopy objectForKey:@"fileSizeByDevice"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SUUIItemOffer *)v5->_itemOffer _setFileSizeWithDeviceSizes:v62];
      }

      v50 = v57;
      v52 = v106;
    }

    v54 = v110;
  }

  v63 = [dictionaryCopy objectForKey:@"deviceFamilies"];
  if (!v63)
  {
    v64 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A3E0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [v64 objectForKey:@"deviceFamilies"];
    }

    else
    {
      v63 = 0;
    }

    v54 = v110;
  }

  objc_opt_class();
  v115 = v63;
  v104 = v50;
  v105 = v49;
  if (objc_opt_isKindOfClass())
  {
    v65 = dictionaryCopy;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v66 = v63;
    v67 = [v66 countByEnumeratingWithState:&v126 objects:v138 count:16];
    if (!v67)
    {
      goto LABEL_108;
    }

    v68 = v67;
    v69 = *v127;
    while (1)
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v127 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v126 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v71 isEqualToString:@"ipad"])
          {
            v72 = 1;
          }

          else if ([v71 isEqualToString:@"iphone"])
          {
            v72 = 2;
          }

          else if ([v71 isEqualToString:@"ipod"])
          {
            v72 = 4;
          }

          else
          {
            if (![v71 isEqualToString:@"tvos"])
            {
              continue;
            }

            v72 = 8;
          }

          v117->_deviceFamilies |= v72;
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v126 objects:v138 count:16];
      if (!v68)
      {
LABEL_108:

        dictionaryCopy = v65;
        v5 = v117;
        v63 = v115;
        v49 = v105;
        v52 = v106;
        v54 = v110;
        goto LABEL_110;
      }
    }
  }

  v5->_deviceFamilies = 15;
LABEL_110:
  v73 = [dictionaryCopy objectForKey:@"editorialBadgeInfo"];
  objc_opt_class();
  v108 = v73;
  if (objc_opt_isKindOfClass())
  {
    v74 = [v73 objectForKey:@"nameForDisplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_editorialBadge, v74);
    }

    v54 = v110;
  }

  if (!v5->_versionIdentifier)
  {
    v75 = [dictionaryCopy objectForKey:@"version"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_versionString, v75);
    }

    v76 = [dictionaryCopy objectForKey:@"versionId"];

    v111 = v76;
    if (objc_opt_respondsToSelector())
    {
      v5->_versionIdentifier = [v76 longLongValue];
    }

    v54 = v110;
  }

  v77 = [dictionaryCopy objectForKey:*MEMORY[0x277D6A418]];
  objc_opt_class();
  v109 = v77;
  if (objc_opt_isKindOfClass())
  {
    itemKind = v5->_itemKind;
    if (itemKind == 17 || itemKind == 12)
    {
      v79 = [v77 objectForKey:*MEMORY[0x277D6A410]];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfUserRatings = [v79 integerValue];
      }

      v80 = MEMORY[0x277D6A428];
    }

    else
    {
      v79 = [v77 objectForKey:*MEMORY[0x277D6A408]];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfUserRatings = [v79 integerValue];
      }

      v80 = MEMORY[0x277D6A420];
    }

    v81 = [v77 objectForKey:*v80];

    v111 = v81;
    v54 = v110;
    if (objc_opt_respondsToSelector())
    {
      [v81 floatValue];
      v5->_userRating = v82;
    }
  }

  v83 = [dictionaryCopy objectForKey:@"videoPreviewByType"];
  objc_opt_class();
  v116 = v83;
  if (objc_opt_isKindOfClass())
  {
    v103 = dictionaryCopy;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v86 = &unk_286BBE130;
    }

    else
    {
      v86 = &unk_286BBE148;
    }

    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v86;
    v114 = [v86 countByEnumeratingWithState:&v122 objects:v137 count:16];
    if (v114)
    {
      v113 = *v123;
LABEL_137:
      v88 = 0;
      while (1)
      {
        if (*v123 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v89 = [v116 objectForKey:*(*(&v122 + 1) + 8 * v88)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = v89;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v136 = v89;
            v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
          }

          else
          {
            v90 = 0;
          }
        }

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v91 = v90;
        v92 = [v91 countByEnumeratingWithState:&v118 objects:v135 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = *v119;
          do
          {
            for (k = 0; k != v93; ++k)
            {
              if (*v119 != v94)
              {
                objc_enumerationMutation(v91);
              }

              v96 = *(*(&v118 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = [[SUUIVideo alloc] initWithVideoDictionary:v96];
                if (v97)
                {
                  [v87 addObject:v97];
                }
              }
            }

            v93 = [v91 countByEnumeratingWithState:&v118 objects:v135 count:16];
          }

          while (v93);
        }

        v98 = [v87 count];
        v63 = v115;
        if (v98)
        {
          break;
        }

        if (++v88 == v114)
        {
          v114 = [obj countByEnumeratingWithState:&v122 objects:v137 count:16];
          if (v114)
          {
            goto LABEL_137;
          }

          break;
        }
      }
    }

    v99 = [v87 copy];
    v5 = v117;
    videos = v117->_videos;
    v117->_videos = v99;

    dictionaryCopy = v103;
    v50 = v104;
    v49 = v105;
    v52 = v106;
    v54 = v110;
  }

LABEL_161:
  v101 = v5;

  return v101;
}

- (NSURL)largestArtworkURL
{
  largestArtwork = [(SUUIArtworkProviding *)self->_artworksProvider largestArtwork];
  v3 = [largestArtwork URL];

  return v3;
}

- (SUUIStoreIdentifier)storeIdentifier
{
  storeIdentifier = self->_storeIdentifier;
  if (!storeIdentifier)
  {
    v4 = [[SUUIStoreIdentifier alloc] initWithLongLong:[(SUUIItem *)self itemIdentifier]];
    v5 = self->_storeIdentifier;
    self->_storeIdentifier = v4;

    bundleIdentifier = [(SUUIItem *)self bundleIdentifier];
    [(SUUIStoreIdentifier *)self->_storeIdentifier setBundleIdentifier:bundleIdentifier];

    [(SUUIStoreIdentifier *)self->_storeIdentifier setPodcastFeedURLIdentifier:self->_feedUrlString];
    storeIdentifier = self->_storeIdentifier;
  }

  return storeIdentifier;
}

- (id)lookupDictionary
{
  v64[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  ageBandRange = [(SUUIItem *)self ageBandRange];
  if (ageBandRange != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = ageBandRange;
    v7 = v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v8 setObject:v9 forKey:@"minAge"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 + v7];
    [v8 setObject:v10 forKey:@"maxAge"];

    [dictionary setObject:v8 forKey:@"ageBand"];
  }

  artistName = [(SUUIItem *)self artistName];
  if (artistName)
  {
    [dictionary setObject:artistName forKey:*MEMORY[0x277D6A2F0]];
  }

  bundleIdentifier = [(SUUIItem *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:*MEMORY[0x277D6A308]];
  }

  categoryName = [(SUUIItem *)self categoryName];

  if (categoryName)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{categoryName, 0}];
    [dictionary setObject:v14 forKey:*MEMORY[0x277D6A340]];
  }

  collectionName = [(SUUIItem *)self collectionName];

  if (collectionName)
  {
    [dictionary setObject:collectionName forKey:@"collectionName"];
  }

  if ([(SUUIItem *)self hasInAppPurchases])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"hasInAppPurchases"];
  }

  itemIdentifier = [(SUUIItem *)self itemIdentifier];
  if (itemIdentifier)
  {
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:itemIdentifier];
    [dictionary setObject:v17 forKey:*MEMORY[0x277D6A360]];
  }

  itemKindString = [(SUUIItem *)self itemKindString];

  if (itemKindString)
  {
    [dictionary setObject:itemKindString forKey:*MEMORY[0x277D6A368]];
  }

  primaryItemOffer = [(SUUIItem *)self primaryItemOffer];
  v20 = primaryItemOffer;
  if (primaryItemOffer)
  {
    lookupDictionary = [primaryItemOffer lookupDictionary];
    v64[0] = lookupDictionary;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    [dictionary setObject:v22 forKey:*MEMORY[0x277D6A380]];
  }

  numberOfChildItems = [(SUUIItem *)self numberOfChildItems];
  if (numberOfChildItems >= 1)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfChildItems];
    [dictionary setObject:v24 forKey:@"appCount"];
  }

  parentalControlsRank = [(SUUIItem *)self parentalControlsRank];
  if (parentalControlsRank)
  {
    v62 = @"value";
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:parentalControlsRank];
    v63 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [dictionary setObject:v27 forKey:*MEMORY[0x277D6A310]];
  }

  productPageURLString = [(SUUIItem *)self productPageURLString];

  if (productPageURLString)
  {
    [dictionary setObject:productPageURLString forKey:*MEMORY[0x277D6A390]];
  }

  requiredCapabilities = [(SUUIItem *)self requiredCapabilities];

  if (requiredCapabilities)
  {
    [dictionary setObject:requiredCapabilities forKey:*MEMORY[0x277D6A3A0]];
  }

  title = [(SUUIItem *)self title];

  if (title)
  {
    [dictionary setObject:title forKey:*MEMORY[0x277D6A338]];
  }

  versionIdentifier = [(SUUIItem *)self versionIdentifier];
  if (versionIdentifier)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithLongLong:versionIdentifier];
    [dictionary setObject:v32 forKey:@"versionId"];
  }

  versionString = [(SUUIItem *)self versionString];

  if (versionString)
  {
    [dictionary setObject:versionString forKey:@"version"];
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deviceFamilies = [(SUUIItem *)self deviceFamilies];
  v36 = deviceFamilies;
  if (deviceFamilies)
  {
    [v34 addObject:@"ipad"];
    if ((v36 & 2) == 0)
    {
LABEL_35:
      if ((v36 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((deviceFamilies & 2) == 0)
  {
    goto LABEL_35;
  }

  [v34 addObject:@"iphone"];
  if ((v36 & 4) != 0)
  {
LABEL_36:
    [v34 addObject:@"ipod"];
  }

LABEL_37:
  if ([v34 count])
  {
    v37 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v34, @"deviceFamilies", 0}];
    [dictionary setObject:v37 forKey:*MEMORY[0x277D6A3E0]];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemKind = [(SUUIItem *)self itemKind];
  v40 = MEMORY[0x277D6A420];
  v41 = MEMORY[0x277D6A408];
  if (itemKind == 17)
  {
    v41 = MEMORY[0x277D6A410];
    v40 = MEMORY[0x277D6A428];
  }

  if (itemKind == 12)
  {
    v42 = MEMORY[0x277D6A410];
  }

  else
  {
    v42 = v41;
  }

  if (itemKind == 12)
  {
    v43 = MEMORY[0x277D6A428];
  }

  else
  {
    v43 = v40;
  }

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUUIItem numberOfUserRatings](self, "numberOfUserRatings")}];
  [v38 setObject:v44 forKey:*v42];

  v45 = MEMORY[0x277CCABB0];
  [(SUUIItem *)self userRating];
  v46 = [v45 numberWithFloat:?];
  [v38 setObject:v46 forKey:*v43];

  [dictionary setObject:v38 forKey:*MEMORY[0x277D6A418]];
  artworksProvider = [(SUUIItem *)self artworksProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  artworksProvider2 = [(SUUIItem *)self artworksProvider];
  artworksProvider3 = artworksProvider2;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v53 = objc_opt_isKindOfClass();

    if ((v53 & 1) == 0)
    {
      goto LABEL_58;
    }

    artworksProvider3 = [(SUUIItem *)self artworksProvider];
    _lookupArray = [artworksProvider3 _lookupArray];
    if (![_lookupArray count])
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  urlTemplateString = [artworksProvider2 urlTemplateString];

  if (urlTemplateString)
  {
    _lookupArray = [artworksProvider3 _lookupDictionary];
LABEL_55:
    [dictionary setObject:_lookupArray forKey:*MEMORY[0x277D6A300]];
LABEL_56:
  }

LABEL_58:
  newsstandArtworks = [(SUUIItem *)self newsstandArtworks];
  objc_opt_class();
  v55 = objc_opt_isKindOfClass();

  newsstandArtworks2 = [(SUUIItem *)self newsstandArtworks];
  newsstandArtworks3 = newsstandArtworks2;
  if ((v55 & 1) == 0)
  {
    objc_opt_class();
    v60 = objc_opt_isKindOfClass();

    if ((v60 & 1) == 0)
    {
      goto LABEL_66;
    }

    newsstandArtworks3 = [(SUUIItem *)self newsstandArtworks];
    _lookupArray2 = [newsstandArtworks3 _lookupArray];
    if (![_lookupArray2 count])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  urlTemplateString2 = [newsstandArtworks2 urlTemplateString];

  if (urlTemplateString2)
  {
    _lookupArray2 = [newsstandArtworks3 _lookupDictionary];
LABEL_63:
    [dictionary setObject:_lookupArray2 forKey:*MEMORY[0x277D6A378]];
LABEL_64:
  }

LABEL_66:

  return dictionary;
}

- (NSString)_downloadKind
{
  itemKind = [(SUUIItem *)self itemKind];
  if (itemKind <= 0x12)
  {
    v3 = **(&unk_2798FD1B0 + itemKind);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    itemIdentifier = [equalCopy itemIdentifier];
    v6 = itemIdentifier == [(SUUIItem *)self itemIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SUUIItem)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59.receiver = self;
    v59.super_class = SUUIItem;
    v5 = [(SUUIItem *)&v59 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"artistName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        artistName = v5->_artistName;
        v5->_artistName = v7;
      }

      v9 = [representationCopy objectForKey:@"bid"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        bundleID = v5->_bundleID;
        v5->_bundleID = v10;
      }

      v12 = [representationCopy objectForKey:@"genre"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        categoryName = v5->_categoryName;
        v5->_categoryName = v13;
      }

      v15 = [representationCopy objectForKey:@"col_name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 copy];
        collectionName = v5->_collectionName;
        v5->_collectionName = v16;
      }

      v18 = [representationCopy objectForKey:@"dev_fam"];

      if (objc_opt_respondsToSelector())
      {
        v5->_deviceFamilies = [v18 unsignedIntegerValue];
      }

      v19 = [representationCopy objectForKey:@"id"];

      if (objc_opt_respondsToSelector())
      {
        v5->_itemIdentifier = [v19 longLongValue];
      }

      v20 = [representationCopy objectForKey:@"offer"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [[SUUIItemOffer alloc] initWithCacheRepresentation:v20];
        itemOffer = v5->_itemOffer;
        v5->_itemOffer = v21;
      }

      v23 = [representationCopy objectForKey:@"child_count"];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfChildItems = [v23 integerValue];
      }

      v24 = [representationCopy objectForKey:@"user_rating_count"];

      if (objc_opt_respondsToSelector())
      {
        v5->_numberOfUserRatings = [v24 integerValue];
      }

      v25 = [representationCopy objectForKey:@"parental_rank"];

      if (objc_opt_respondsToSelector())
      {
        v5->_parentalControlsRank = [v25 integerValue];
      }

      v26 = [representationCopy objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 copy];
        productPageURLString = v5->_productPageURLString;
        v5->_productPageURLString = v27;
      }

      v29 = [representationCopy objectForKey:@"req_caps"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v29 copy];
        requiredCapabilities = v5->_requiredCapabilities;
        v5->_requiredCapabilities = v30;
      }

      v32 = [representationCopy objectForKey:@"name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v32 copy];
        title = v5->_title;
        v5->_title = v33;
      }

      v35 = [representationCopy objectForKey:@"user_rating"];

      if (objc_opt_respondsToSelector())
      {
        [v35 floatValue];
        v5->_userRating = v36;
      }

      v37 = [representationCopy objectForKey:@"version_id"];

      if (objc_opt_respondsToSelector())
      {
        v5->_versionIdentifier = [v37 longLongValue];
      }

      v38 = [representationCopy objectForKey:@"version"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v38 copy];
        versionString = v5->_versionString;
        v5->_versionString = v39;
      }

      v41 = [representationCopy objectForKey:@"kind"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [v41 copy];
        itemKindString = v5->_itemKindString;
        v5->_itemKindString = v42;

        v44 = v5->_itemKindString;
        v45 = &off_2798FD028;
        v46 = 25;
        while (![*v45 isEqualToString:v44])
        {
          v45 += 2;
          if (!--v46)
          {
            v47 = 0;
            goto LABEL_43;
          }
        }

        v47 = *(v45 - 1);
LABEL_43:
        v5->_itemKind = v47;
      }

      else
      {
        v48 = v5->_itemKindString;
        v5->_itemKind = 12;
        v5->_itemKindString = @"iosSoftware";
      }

      v49 = [representationCopy objectForKey:@"artwork"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [representationCopy objectForKey:@"artworkProvider"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v50 isEqualToString:@"artworkTemplate"])
        {
          v51 = off_2798F3D28;
        }

        else
        {
          v51 = off_2798F3D10;
        }

        v52 = [objc_alloc(*v51) initWithCacheRepresentation:v49];
        artworksProvider = v5->_artworksProvider;
        v5->_artworksProvider = v52;
      }

      v54 = [representationCopy objectForKey:@"ageblen"];
      v55 = [representationCopy objectForKey:@"agebloc"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        integerValue = [v55 integerValue];
        integerValue2 = [v54 integerValue];
        v5->_ageBandRange.location = integerValue;
      }

      else
      {
        integerValue2 = 0;
        v5->_ageBandRange.location = 0x7FFFFFFFFFFFFFFFLL;
      }

      v5->_ageBandRange.length = integerValue2;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageBandRange.length];
  [v3 setObject:v4 forKey:@"ageblen"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageBandRange.location];
  [v3 setObject:v5 forKey:@"agebloc"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceFamilies];
  [v3 setObject:v6 forKey:@"dev_fam"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemIdentifier];
  [v3 setObject:v7 forKey:@"id"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfChildItems];
  [v3 setObject:v8 forKey:@"child_count"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
  [v3 setObject:v9 forKey:@"user_rating_count"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_parentalControlsRank];
  [v3 setObject:v10 forKey:@"parental_rank"];

  *&v11 = self->_userRating;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v3 setObject:v12 forKey:@"user_rating"];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_versionIdentifier];
  [v3 setObject:v13 forKey:@"version_id"];

  artistName = self->_artistName;
  if (artistName)
  {
    [v3 setObject:artistName forKey:@"artistName"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bid"];
  }

  categoryName = self->_categoryName;
  if (categoryName)
  {
    [v3 setObject:categoryName forKey:@"genre"];
  }

  collectionName = self->_collectionName;
  if (collectionName)
  {
    [v3 setObject:collectionName forKey:@"col_name"];
  }

  itemKindString = self->_itemKindString;
  if (itemKindString)
  {
    [v3 setObject:itemKindString forKey:@"kind"];
  }

  productPageURLString = self->_productPageURLString;
  if (productPageURLString)
  {
    [v3 setObject:productPageURLString forKey:@"url"];
  }

  requiredCapabilities = self->_requiredCapabilities;
  if (requiredCapabilities)
  {
    [v3 setObject:requiredCapabilities forKey:@"req_caps"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"name"];
  }

  versionString = self->_versionString;
  if (versionString)
  {
    [v3 setObject:versionString forKey:@"version"];
  }

  cacheRepresentation = [(SUUIItemOffer *)self->_itemOffer cacheRepresentation];
  if (cacheRepresentation)
  {
    [v3 setObject:cacheRepresentation forKey:@"offer"];
  }

  cacheRepresentation2 = [(SUUIArtworkProviding *)self->_artworksProvider cacheRepresentation];
  if (cacheRepresentation2)
  {
    [v3 setObject:cacheRepresentation2 forKey:@"artwork"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = @"artworkTemplate";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    v25 = @"artworkList";
  }

  [v3 setObject:v25 forKey:@"artworkProvider"];
LABEL_28:

  return v3;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A490]])
  {
    title = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemIdentifier];
LABEL_6:
    v6 = title;
    goto LABEL_7;
  }

  if (([fieldCopy isEqualToString:*MEMORY[0x277D6A4A8]] & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A0]))
  {
    title = [(SUUIItem *)self title];
    goto LABEL_6;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A4B0]])
  {
    title = [(SUUIItem *)self itemKindString];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (_NSRange)ageBandRange
{
  length = self->_ageBandRange.length;
  location = self->_ageBandRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end