@interface MCMEntitlementBypassList
+ (id)sharedBypassList;
- (BOOL)containerIdIsWellknown:(id)wellknown class:(unint64_t)class;
- (BOOL)isLookupAllowedToBypassEntitlementFromCodeSignIdentifier:(id)identifier forContainerClass:(unint64_t)class containerIdentifier:(id)containerIdentifier;
- (BOOL)systemContainerIdIsWellknown:(id)wellknown;
- (BOOL)systemGroupContainerIdIsWellknown:(id)wellknown;
- (MCMEntitlementBypassList)initWithSystemContainerMapping:(id)mapping systemGroupContainerMapping:(id)containerMapping bypassListedCodeSignIdentifierMapping:(id)identifierMapping;
- (NSDictionary)systemEntitlementBypassList;
- (NSDictionary)systemGroupEntitlementBypassList;
- (id)_convertArraysToSetsInNestedDictionary:(id)dictionary;
- (id)wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet;
- (id)wellknownContainerForId:(id)id class:(unint64_t)class;
- (id)wellknownSystemContainerForId:(id)id;
- (id)wellknownSystemContainers;
- (id)wellknownSystemGroupContainerForId:(id)id;
- (id)wellknownSystemGroupContainers;
- (void)setSystemEntitlementBypassList:(id)list;
- (void)setSystemGroupEntitlementBypassList:(id)list;
@end

@implementation MCMEntitlementBypassList

+ (id)sharedBypassList
{
  v5 = *MEMORY[0x1E69E9840];
  if (sharedBypassList_onceToken != -1)
  {
    dispatch_once(&sharedBypassList_onceToken, &__block_literal_global_1397);
  }

  v2 = sharedBypassList_sharedInstance;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSDictionary)systemGroupEntitlementBypassList
{
  result = self->_systemGroupEntitlementBypassList;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)systemEntitlementBypassList
{
  result = self->_systemEntitlementBypassList;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSystemGroupEntitlementBypassList:(id)list
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_systemGroupEntitlementBypassList = &self->_systemGroupEntitlementBypassList;

  objc_storeStrong(p_systemGroupEntitlementBypassList, list);
}

- (void)setSystemEntitlementBypassList:(id)list
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_systemEntitlementBypassList = &self->_systemEntitlementBypassList;

  objc_storeStrong(p_systemEntitlementBypassList, list);
}

- (id)wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet
{
  v5 = *MEMORY[0x1E69E9840];
  if (wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet_onceToken != -1)
  {
    dispatch_once(&wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet_onceToken, &__block_literal_global_97);
  }

  v2 = wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet_set;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __91__MCMEntitlementBypassList_wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet_set = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.facetime", @"com.apple.iBooks", @"com.apple.Maps", @"com.apple.mobilenotes", @"com.apple.mobilesafari", @"com.apple.podcasts", 0}];
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_convertArraysToSetsInNestedDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v22 = dictionaryCopy;
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:dictionaryCopy];
  v23 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  if ([v5 count])
  {
    do
    {
      lastObject = [v5 lastObject];
      v7 = v5;
      [v5 removeLastObject];
      lastObject2 = [v23 lastObject];
      [v23 removeLastObject];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = lastObject;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v9 objectForKeyedSubscript:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
              [lastObject2 setObject:v16 forKeyedSubscript:v14];

              [v7 addObject:v15];
              v17 = [lastObject2 objectForKeyedSubscript:v14];
              [v23 addObject:v17];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [MEMORY[0x1E695DFD8] setWithArray:v15];
                [lastObject2 setObject:v18 forKeyedSubscript:v14];
              }

              else
              {
                [lastObject2 setObject:v15 forKeyedSubscript:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
        }

        while (v11);
      }

      v5 = v7;
    }

    while ([v7 count]);
  }

  v19 = [v4 copy];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)isLookupAllowedToBypassEntitlementFromCodeSignIdentifier:(id)identifier forContainerClass:(unint64_t)class containerIdentifier:(id)containerIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  containerIdentifierCopy = containerIdentifier;
  if (class <= 0xE)
  {
    v10 = [(NSDictionary *)self->_bypassListedLookupByCodeSignIdentifier objectForKeyedSubscript:identifier];
    if (v10)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v12 = [v10 isEqual:null];

      if (v12)
      {
        v13 = 0;
LABEL_9:
        v9 = 1;
LABEL_11:

        goto LABEL_12;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:class];
      v13 = [v10 objectForKeyedSubscript:v14];

      if (v13)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v16 = [v13 isEqual:null2];

        if ((v16 & 1) == 0)
        {
          v9 = [v13 containsObject:containerIdentifierCopy];
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)wellknownContainerForId:(id)id class:(unint64_t)class
{
  v11 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (class == 13)
  {
    v7 = [(MCMEntitlementBypassList *)self wellknownSystemGroupContainerForId:idCopy];
    goto LABEL_5;
  }

  if (class == 12)
  {
    v7 = [(MCMEntitlementBypassList *)self wellknownSystemContainerForId:idCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)containerIdIsWellknown:(id)wellknown class:(unint64_t)class
{
  v11 = *MEMORY[0x1E69E9840];
  wellknownCopy = wellknown;
  if (class == 13)
  {
    v7 = [(MCMEntitlementBypassList *)self systemGroupContainerIdIsWellknown:wellknownCopy];
  }

  else
  {
    if (class != 12)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(MCMEntitlementBypassList *)self systemContainerIdIsWellknown:wellknownCopy];
  }

  v8 = v7;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)wellknownSystemGroupContainers
{
  v6 = *MEMORY[0x1E69E9840];
  systemGroupEntitlementBypassList = [(MCMEntitlementBypassList *)self systemGroupEntitlementBypassList];
  allKeys = [systemGroupEntitlementBypassList allKeys];

  v4 = *MEMORY[0x1E69E9840];

  return allKeys;
}

- (BOOL)systemGroupContainerIdIsWellknown:(id)wellknown
{
  v9 = *MEMORY[0x1E69E9840];
  wellknownCopy = wellknown;
  systemGroupEntitlementBypassList = [(MCMEntitlementBypassList *)self systemGroupEntitlementBypassList];
  v6 = [systemGroupEntitlementBypassList valueForKey:wellknownCopy];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (id)wellknownSystemGroupContainerForId:(id)id
{
  v9 = *MEMORY[0x1E69E9840];
  idCopy = id;
  systemGroupEntitlementBypassList = [(MCMEntitlementBypassList *)self systemGroupEntitlementBypassList];
  v6 = [systemGroupEntitlementBypassList valueForKey:idCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)wellknownSystemContainers
{
  v6 = *MEMORY[0x1E69E9840];
  systemEntitlementBypassList = [(MCMEntitlementBypassList *)self systemEntitlementBypassList];
  allKeys = [systemEntitlementBypassList allKeys];

  v4 = *MEMORY[0x1E69E9840];

  return allKeys;
}

- (BOOL)systemContainerIdIsWellknown:(id)wellknown
{
  v9 = *MEMORY[0x1E69E9840];
  wellknownCopy = wellknown;
  systemEntitlementBypassList = [(MCMEntitlementBypassList *)self systemEntitlementBypassList];
  v6 = [systemEntitlementBypassList valueForKey:wellknownCopy];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (id)wellknownSystemContainerForId:(id)id
{
  v9 = *MEMORY[0x1E69E9840];
  idCopy = id;
  systemEntitlementBypassList = [(MCMEntitlementBypassList *)self systemEntitlementBypassList];
  v6 = [systemEntitlementBypassList valueForKey:idCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMEntitlementBypassList)initWithSystemContainerMapping:(id)mapping systemGroupContainerMapping:(id)containerMapping bypassListedCodeSignIdentifierMapping:(id)identifierMapping
{
  v18 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  containerMappingCopy = containerMapping;
  identifierMappingCopy = identifierMapping;
  v17.receiver = self;
  v17.super_class = MCMEntitlementBypassList;
  v11 = [(MCMEntitlementBypassList *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(MCMEntitlementBypassList *)v11 setSystemEntitlementBypassList:mappingCopy];
    [(MCMEntitlementBypassList *)v12 setSystemGroupEntitlementBypassList:containerMappingCopy];
    v13 = [(MCMEntitlementBypassList *)v12 _convertArraysToSetsInNestedDictionary:identifierMappingCopy];
    bypassListedLookupByCodeSignIdentifier = v12->_bypassListedLookupByCodeSignIdentifier;
    v12->_bypassListedLookupByCodeSignIdentifier = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

void __44__MCMEntitlementBypassList_sharedBypassList__block_invoke()
{
  v23[9] = *MEMORY[0x1E69E9840];
  v22[0] = @"com.apple.mobile.MobileHouseArrest";
  v15 = [MEMORY[0x1E695DFB0] null];
  v23[0] = v15;
  v22[1] = @"com.apple.accountsd";
  v20 = &unk_1F5A76540;
  v21 = &unk_1F5A76FD8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[1] = v0;
  v22[2] = @"com.apple.itunescloudd";
  v1 = [MEMORY[0x1E695DFB0] null];
  v23[2] = v1;
  v22[3] = @"com.apple.CacheDeleteDaily";
  v2 = [MEMORY[0x1E695DFB0] null];
  v23[3] = v2;
  v22[4] = @"com.apple.Safari.History";
  v18 = &unk_1F5A76558;
  v19 = &unk_1F5A76FF0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v23[4] = v3;
  v22[5] = @"com.apple.mobile_installation_proxy";
  v4 = [MEMORY[0x1E695DFB0] null];
  v23[5] = v4;
  v22[6] = @"com.apple.AppPredictionWidget.extension";
  v5 = [MEMORY[0x1E695DFB0] null];
  v23[6] = v5;
  v22[7] = @"com.apple.Maps.Widget";
  v16 = &unk_1F5A76558;
  v17 = &unk_1F5A77008;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v23[7] = v6;
  v22[8] = @"com.apple.filecoordinationd";
  v7 = [MEMORY[0x1E695DFB0] null];
  v23[8] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];

  v9 = containermanager_copy_global_configuration();
  LODWORD(v0) = [v9 isInternalImage];

  if (v0)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:&unk_1F5A75A78];
    [v10 setValue:@"systemgroup.com.apple.codecoveragedata" forKey:@"systemgroup.com.apple.codecoveragedata"];
    v11 = [v10 copy];
  }

  else
  {
    v11 = &unk_1F5A75A78;
  }

  v12 = [[MCMEntitlementBypassList alloc] initWithSystemContainerMapping:&unk_1F5A75A50 systemGroupContainerMapping:v11 bypassListedCodeSignIdentifierMapping:v8];
  v13 = sharedBypassList_sharedInstance;
  sharedBypassList_sharedInstance = v12;

  v14 = *MEMORY[0x1E69E9840];
}

@end