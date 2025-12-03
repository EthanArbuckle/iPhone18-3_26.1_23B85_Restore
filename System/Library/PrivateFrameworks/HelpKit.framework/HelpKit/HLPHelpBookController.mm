@interface HLPHelpBookController
- (id)dynamicServerSectionsForIdentifiers:(id)identifiers level:(int64_t)level parent:(id)parent tocMap:(id)map;
- (id)helpItemForID:(id)d;
- (id)helpTopicItemForID:(id)d;
- (id)helpTopicItemForName:(id)name;
- (id)sectionsForChildrenIdentifiers:(id)identifiers level:(int64_t)level parent:(id)parent sectionsMap:(id)map topicsMap:(id)topicsMap;
- (id)systemLanguages;
- (void)addAsideTopic:(id)topic;
- (void)dealloc;
- (void)fetchDataWithDataType:(int64_t)type identifier:(id)identifier completionHandler:(id)handler;
- (void)processData:(id)data formattedData:(id)formattedData;
- (void)processFileURLWithCompletionHandler:(id)handler;
@end

@implementation HLPHelpBookController

- (void)dealloc
{
  if (self->_hasSectionIcon)
  {
    v3 = +[HLPImageCacheController sharedInstance];
    [v3 removeInMemoryCache];
  }

  v4.receiver = self;
  v4.super_class = HLPHelpBookController;
  [(HLPRemoteDataController *)&v4 dealloc];
}

- (void)fetchDataWithDataType:(int64_t)type identifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = +[HLPCommonDefines contentRequestHeaderFields];
  [(HLPRemoteDataController *)self setHeaderFields:v10];

  v11.receiver = self;
  v11.super_class = HLPHelpBookController;
  [(HLPRemoteDataController *)&v11 fetchDataWithDataType:type identifier:identifierCopy completionHandler:handlerCopy];
}

- (void)processFileURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(HLPRemoteDataController *)self URL];
  v6 = [v5 checkResourceIsReachableAndReturnError:0];

  if (v6)
  {
    v7 = MEMORY[0x277CBEA90];
    v8 = [(HLPRemoteDataController *)self URL];
    v9 = [v7 dataWithContentsOfURL:v8];

    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:0];
    v12 = [v10 dictionaryWithDictionary:v11];

    if (v12)
    {
      [(HLPHelpBookController *)self processData:0 formattedData:v12];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__HLPHelpBookController_processFileURLWithCompletionHandler___block_invoke;
      v13[3] = &unk_279706BE8;
      v13[4] = self;
      v14 = handlerCopy;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }
}

uint64_t __61__HLPHelpBookController_processFileURLWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  [*(a1 + 32) setHasLoaded:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)processData:(id)data formattedData:(id)formattedData
{
  v112[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  formattedDataCopy = formattedData;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  helpItemMap = self->_helpItemMap;
  self->_helpItemMap = v7;

  selfCopy = self;
  v100 = formattedDataCopy;
  if (self->_serverType != 1)
  {
    self->_hasSectionIcon = 0;
    v64 = formattedDataCopy;
    v65 = [v64 objectForKeyedSubscript:@"birdseed_version"];
    selfCopy->_contentFormatVersion = [v65 integerValue];

    v66 = [v64 objectForKeyedSubscript:@"version"];
    contentVersion = selfCopy->_contentVersion;
    selfCopy->_contentVersion = v66;

    v68 = [v64 objectForKeyedSubscript:@"copyright_text"];
    copyrightText = selfCopy->_copyrightText;
    selfCopy->_copyrightText = v68;

    v70 = [v64 objectForKeyedSubscript:@"landing"];
    welcomeTopicIdentifier = selfCopy->_welcomeTopicIdentifier;
    selfCopy->_welcomeTopicIdentifier = v70;

    v72 = [v64 objectForKeyedSubscript:@"copyright"];
    copyrightTopicIdentifier = selfCopy->_copyrightTopicIdentifier;
    selfCopy->_copyrightTopicIdentifier = v72;

    v74 = [v64 objectForKeyedSubscript:@"sections"];
    v75 = MEMORY[0x277CBEB38];
    v76 = [v64 objectForKeyedSubscript:@"topics"];
    v77 = [v75 dictionaryWithDictionary:v76];

    v78 = [v64 objectForKeyedSubscript:@"urls"];
    [v77 addEntriesFromDictionary:v78];

    v79 = [v64 objectForKeyedSubscript:@"toc"];

    v63 = [(HLPHelpBookController *)selfCopy sectionsForChildrenIdentifiers:v79 level:0 parent:0 sectionsMap:v74 topicsMap:v77];

    if (selfCopy->_contentFormatVersion <= 4)
    {
      v80 = @"glossary";
    }

    else
    {
      v80 = @"aside";
    }

    v81 = v80;
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __51__HLPHelpBookController_processData_formattedData___block_invoke;
    v104[3] = &unk_279706CB0;
    v104[4] = selfCopy;
    v105 = v81;
    v82 = v81;
    [v77 enumerateKeysAndObjectsUsingBlock:v104];

    goto LABEL_45;
  }

  v102 = [formattedDataCopy objectForKeyedSubscript:@"bookResponse"];
  v96 = [v102 objectForKeyedSubscript:@"meta"];
  v9 = [v102 objectForKeyedSubscript:@"bookId"];
  bookId = self->_bookId;
  self->_bookId = v9;

  self->_contentFormatVersion = 5;
  v11 = [v96 objectForKeyedSubscript:@"productVersion"];
  v12 = self->_contentVersion;
  self->_contentVersion = v11;

  v13 = [v102 objectForKeyedSubscript:@"copyrightId"];
  uppercaseString = [v13 uppercaseString];
  v15 = self->_copyrightTopicIdentifier;
  self->_copyrightTopicIdentifier = uppercaseString;

  v16 = [v102 objectForKeyedSubscript:@"copyrightText"];
  v17 = self->_copyrightText;
  self->_copyrightText = v16;

  v18 = [v102 objectForKeyedSubscript:@"tocId"];
  v19 = self->_welcomeTopicIdentifier;
  self->_welcomeTopicIdentifier = v18;

  v98 = [v102 objectForKeyedSubscript:@"locale"];
  if (v98)
  {
    v20 = objc_alloc_init(HLPHelpLocale);
    locale = self->_locale;
    self->_locale = v20;

    v22 = MEMORY[0x277CCA8D8];
    systemLanguages = [(HLPHelpBookController *)self systemLanguages];
    v112[0] = v98;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:1];
    v25 = [v22 preferredLocalizationsFromArray:systemLanguages forPreferences:v24];
    [(HLPHelpLocale *)selfCopy->_locale setIsoCodes:v25];
  }

  v97 = [v102 objectForKeyedSubscript:@"miscAttributes"];
  if (v97)
  {
    v26 = [v97 dataUsingEncoding:4];
    v27 = MEMORY[0x277CBEAC0];
    v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v26 options:0 error:0];
    v29 = [v27 dictionaryWithDictionary:v28];

    if (v29)
    {
      v30 = [v29 objectForKeyedSubscript:@"remoteSearchTree"];
      remoteSearchPath = selfCopy->_remoteSearchPath;
      selfCopy->_remoteSearchPath = v30;

      lastPathComponent = [(NSString *)selfCopy->_remoteSearchPath lastPathComponent];
      v33 = [lastPathComponent isEqualToString:@"searchTree.json"];

      if ((v33 & 1) == 0)
      {
        v34 = selfCopy->_remoteSearchPath;
        selfCopy->_remoteSearchPath = 0;
      }

      lastPathComponent2 = [(NSString *)selfCopy->_remoteCSSearchIndex lastPathComponent];
      v36 = [lastPathComponent2 isEqualToString:@"search.cshelpindex"];

      if ((v36 & 1) == 0)
      {
        remoteCSSearchIndex = selfCopy->_remoteCSSearchIndex;
        selfCopy->_remoteCSSearchIndex = 0;
      }

      v38 = [v29 objectForKeyedSubscript:@"iconBaseUrl"];
      iconBasePath = selfCopy->_iconBasePath;
      selfCopy->_iconBasePath = v38;
    }
  }

  v99 = [v102 objectForKeyedSubscript:@"toc"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v99, "count")}];
    selfCopy->_hasSectionIcon = 0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v41 = v99;
    v42 = [v41 countByEnumeratingWithState:&v106 objects:v111 count:16];
    if (v42)
    {
      v43 = *v107;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v107 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v106 + 1) + 8 * i);
          v46 = [v45 objectForKeyedSubscript:@"tocId"];
          if ([v46 length])
          {
            [v40 setObject:v45 forKeyedSubscript:v46];
            v47 = [(NSMutableDictionary *)selfCopy->_helpItemMap objectForKeyedSubscript:v46];
            v48 = v47 == 0;

            if (v48)
            {
              v49 = [v45 objectForKeyedSubscript:@"target"];
              if ([v49 length])
              {
                v50 = objc_alloc_init(HLPHelpTopicItem);
                [(HLPHelpItem *)v50 setServerType:1];
                v51 = [v45 objectForKeyedSubscript:@"title"];
                [(HLPHelpItem *)v50 setName:v51];

                [(HLPHelpTopicItem *)v50 setGlossaryIdentifierString:@"aside"];
                [(HLPHelpItem *)v50 setIdentifier:v46];
                [(NSMutableDictionary *)selfCopy->_helpItemMap setObject:v50 forKeyedSubscript:v46];
              }
            }
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v106 objects:v111 count:16];
      }

      while (v42);
    }

    if ([(NSString *)selfCopy->_copyrightTopicIdentifier length])
    {
      if (!selfCopy->_copyrightText)
      {
        goto LABEL_32;
      }

      v52 = [(HLPHelpBookController *)selfCopy helpItemForID:selfCopy->_copyrightTopicIdentifier];
      if (!v52)
      {
        v52 = objc_alloc_init(HLPHelpTopicItem);
        [(HLPHelpItem *)v52 setServerType:1];
        [(NSMutableDictionary *)selfCopy->_helpItemMap setObject:v52 forKeyedSubscript:selfCopy->_copyrightTopicIdentifier];
      }

      [(HLPHelpItem *)v52 setName:selfCopy->_copyrightText];
      [(HLPHelpItem *)v52 setIdentifier:selfCopy->_copyrightTopicIdentifier];
      [(HLPHelpTopicItem *)v52 setHrefID:selfCopy->_copyrightTopicIdentifier];
    }

    v53 = selfCopy;
    if (selfCopy->_copyrightText)
    {
LABEL_35:
      v61 = [v40 objectForKeyedSubscript:v53->_welcomeTopicIdentifier];
      v62 = [v61 objectForKeyedSubscript:@"children"];
      if ([v62 count])
      {
        v63 = [(HLPHelpBookController *)selfCopy dynamicServerSectionsForIdentifiers:v62 level:0 parent:0 tocMap:v40];
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_44;
    }

LABEL_32:
    v54 = +[HLPCommonDefines HLPBundle];
    v55 = [v54 localizedStringForKey:@"Copyright © %ld Apple Inc. All rights reserved." value:&stru_2864756F0 table:0];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v58 = [currentCalendar components:4 fromDate:date];

    if ([v58 year] >= 1)
    {
      v59 = [MEMORY[0x277CCACA8] stringWithFormat:v55, objc_msgSend(v58, "year")];
      v60 = selfCopy->_copyrightText;
      selfCopy->_copyrightText = v59;
    }

    v53 = selfCopy;
    goto LABEL_35;
  }

  v63 = 0;
LABEL_44:

LABEL_45:
  if (selfCopy->_hasSectionIcon)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v85 = MEMORY[0x277CCA8D8];
    systemLanguages2 = [(HLPHelpBookController *)selfCopy systemLanguages];
    v110 = firstObject;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
    v88 = [v85 preferredLocalizationsFromArray:systemLanguages2 forPreferences:v87];

    firstObject2 = [v88 firstObject];
    v90 = firstObject2;
    if (firstObject2)
    {
      v91 = firstObject2;
    }

    else
    {
      v91 = firstObject;
    }

    v92 = +[HLPImageCacheController sharedInstance];
    [v92 setLanguageCode:v91];
  }

  v93 = objc_alloc_init(HLPHelpSectionItem);
  rootSectionItem = selfCopy->_rootSectionItem;
  selfCopy->_rootSectionItem = v93;

  [(HLPHelpSectionItem *)selfCopy->_rootSectionItem setOpen:1];
  [(HLPHelpSectionItem *)selfCopy->_rootSectionItem setChildren:v63];

  formattedDataCopy = v100;
LABEL_51:

  v95 = *MEMORY[0x277D85DE8];
}

void __51__HLPHelpBookController_processData_formattedData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) helpItemMap];
  v7 = [v6 objectForKeyedSubscript:v12];

  if (!v7)
  {
    v8 = [HLPHelpTopicItem alloc];
    v9 = [*(a1 + 32) helpBookURL];
    v10 = -[HLPHelpTopicItem initWithDictionary:helpBookURL:serverType:](v8, "initWithDictionary:helpBookURL:serverType:", v5, v9, [*(a1 + 32) serverType]);

    [(HLPHelpTopicItem *)v10 setGlossaryIdentifierString:*(a1 + 40)];
    [(HLPHelpItem *)v10 setIdentifier:v12];
    v11 = [*(a1 + 32) helpItemMap];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }
}

- (id)systemLanguages
{
  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  additionalSupportedLanguages = [(HLPHelpBookController *)self additionalSupportedLanguages];
  v5 = [additionalSupportedLanguages count];

  if (v5)
  {
    additionalSupportedLanguages2 = [(HLPHelpBookController *)self additionalSupportedLanguages];
    v7 = [systemLanguages arrayByAddingObjectsFromArray:additionalSupportedLanguages2];

    systemLanguages = v7;
  }

  return systemLanguages;
}

- (id)dynamicServerSectionsForIdentifiers:(id)identifiers level:(int64_t)level parent:(id)parent tocMap:(id)map
{
  v46 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  parentCopy = parent;
  mapCopy = map;
  array = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = identifiersCopy;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0x27F4D9000uLL;
    v16 = *v42;
    selfCopy = self;
    v35 = v12;
    v38 = *v42;
    do
    {
      v17 = 0;
      v36 = v14;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        if (([v18 isEqualToString:{*(&self->super.super.isa + *(v15 + 2296)), v35}] & 1) == 0)
        {
          v19 = [mapCopy objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19)
          {
            v21 = [v19 objectForKeyedSubscript:@"children"];
            v22 = [v21 count];
            v23 = [(NSMutableDictionary *)self->_helpItemMap objectForKeyedSubscript:v18];
            v24 = v23;
            if (v21 != v12 && v22 != 0)
            {
              if (!v23)
              {
                v24 = [(HLPHelpItem *)[HLPHelpSectionItem alloc] initWithDictionary:v20 helpBookURL:selfCopy->_helpBookURL serverType:selfCopy->_serverType];
                [(HLPHelpItem *)v24 setIdentifier:v18];
              }

              v26 = [(HLPHelpBookController *)selfCopy dynamicServerSectionsForIdentifiers:v21 level:level + 1 parent:v24 tocMap:mapCopy];
              [(HLPHelpSectionItem *)v24 setChildren:v26];
            }

            v27 = [v20 objectForKeyedSubscript:@"icon"];
            if ([v27 length] && -[NSString length](selfCopy->_iconBasePath, "length"))
            {
              v28 = [(NSString *)selfCopy->_iconBasePath stringByAppendingPathComponent:v27];
              [MEMORY[0x277CBEBC0] URLWithString:v28];
              v29 = mapCopy;
              v31 = v30 = parentCopy;
              [(HLPHelpItem *)v24 setIconURL:v31];

              parentCopy = v30;
              mapCopy = v29;
              selfCopy->_hasSectionIcon = 1;
              v12 = v35;
              v14 = v36;
            }

            [(HLPHelpItem *)v24 setParent:parentCopy];
            [(HLPHelpItem *)v24 setLevel:level];
            if (v24)
            {
              [array addObject:v24];
            }

            self = selfCopy;
            v15 = 0x27F4D9000;
            v16 = v38;
          }
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  if ([array count])
  {
    v32 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)sectionsForChildrenIdentifiers:(id)identifiers level:(int64_t)level parent:(id)parent sectionsMap:(id)map topicsMap:(id)topicsMap
{
  parentCopy = parent;
  mapCopy = map;
  topicsMapCopy = topicsMap;
  if (self->_contentFormatVersion <= 4)
  {
    v15 = @"glossary";
  }

  else
  {
    v15 = @"aside";
  }

  v16 = v15;
  v17 = MEMORY[0x277CBEB18];
  identifiersCopy = identifiers;
  array = [v17 array];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __91__HLPHelpBookController_sectionsForChildrenIdentifiers_level_parent_sectionsMap_topicsMap___block_invoke;
  v27[3] = &unk_279706CD8;
  v20 = mapCopy;
  v28 = v20;
  selfCopy = self;
  levelCopy = level;
  v21 = topicsMapCopy;
  v30 = v21;
  v22 = v16;
  v31 = v22;
  v23 = parentCopy;
  v32 = v23;
  v24 = array;
  v33 = v24;
  [identifiersCopy enumerateObjectsUsingBlock:v27];

  if ([v24 count])
  {
    v25 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __91__HLPHelpBookController_sectionsForChildrenIdentifiers_level_parent_sectionsMap_topicsMap___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [*(a1 + 40) helpItemMap];
    v5 = [v4 objectForKeyedSubscript:v18];

    if (!v5)
    {
      v6 = [HLPHelpSectionItem alloc];
      v7 = [*(a1 + 40) helpBookURL];
      v5 = -[HLPHelpItem initWithDictionary:helpBookURL:serverType:](v6, "initWithDictionary:helpBookURL:serverType:", v3, v7, [*(a1 + 40) serverType]);
    }

    v8 = v5;
    v9 = [v3 objectForKeyedSubscript:@"children"];
    v10 = [(HLPHelpSectionItem *)v8 children];

    if (!v10)
    {
      v11 = [*(a1 + 40) sectionsForChildrenIdentifiers:v9 level:*(a1 + 80) + 1 parent:v8 sectionsMap:*(a1 + 32) topicsMap:*(a1 + 48)];
      [(HLPHelpSectionItem *)v8 setChildren:v11];
    }

    if (v8)
    {
      v12 = [*(a1 + 40) helpItemMap];
      [v12 setObject:v8 forKeyedSubscript:v18];
    }

    v13 = [(HLPHelpItem *)v8 iconURL];

    if (v13)
    {
      [*(a1 + 40) setHasSectionIcon:1];
    }

    v14 = v8;
  }

  else
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:v18];
    if (v9)
    {
      v15 = [HLPHelpTopicItem alloc];
      v16 = [*(a1 + 40) helpBookURL];
      v14 = -[HLPHelpTopicItem initWithDictionary:helpBookURL:serverType:](v15, "initWithDictionary:helpBookURL:serverType:", v9, v16, [*(a1 + 40) serverType]);

      [(HLPHelpTopicItem *)v14 setGlossaryIdentifierString:*(a1 + 56)];
      v17 = [*(a1 + 40) helpItemMap];
      [v17 setObject:v14 forKeyedSubscript:v18];

      v8 = 0;
    }

    else
    {
      v8 = 0;
      v14 = 0;
    }
  }

  [(HLPHelpItem *)v14 setIdentifier:v18];
  [(HLPHelpItem *)v14 setParent:*(a1 + 64)];
  [(HLPHelpItem *)v14 setLevel:*(a1 + 80)];
  if (v14)
  {
    [*(a1 + 72) addObject:v14];
  }
}

- (id)helpTopicItemForID:(id)d
{
  v3 = [(HLPHelpBookController *)self helpItemForID:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)helpTopicItemForName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if ([nameCopy length])
  {
    lowercaseString = [nameCopy lowercaseString];
    allValues = [(NSMutableDictionary *)self->_helpItemMap allValues];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__HLPHelpBookController_helpTopicItemForName___block_invoke;
    v10[3] = &unk_279706A78;
    v7 = lowercaseString;
    v11 = v7;
    v12 = &v13;
    [allValues enumerateObjectsUsingBlock:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __46__HLPHelpBookController_helpTopicItemForName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = [v7 name];
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addAsideTopic:(id)topic
{
  topicCopy = topic;
  identifier = [topicCopy identifier];
  if (identifier)
  {
    v5 = identifier;
    helpItemMap = self->_helpItemMap;
    identifier2 = [topicCopy identifier];
    v8 = [(NSMutableDictionary *)helpItemMap objectForKeyedSubscript:identifier2];

    if (!v8)
    {
      v9 = self->_helpItemMap;
      identifier3 = [topicCopy identifier];
      [(NSMutableDictionary *)v9 setObject:topicCopy forKeyedSubscript:identifier3];
    }
  }
}

- (id)helpItemForID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_helpItemMap objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    if (self->_serverType == 1)
    {
      helpItemMap = self->_helpItemMap;
      uppercaseString = [dCopy uppercaseString];
      v5 = [(NSMutableDictionary *)helpItemMap objectForKeyedSubscript:uppercaseString];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end