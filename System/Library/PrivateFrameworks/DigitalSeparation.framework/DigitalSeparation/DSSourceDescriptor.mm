@interface DSSourceDescriptor
+ (id)descriptorCache;
+ (id)sourceDescriptorForSource:(id)source;
+ (id)sourceDescriptorForSource:(id)source localizationBundle:(id)bundle;
+ (void)initialize;
+ (void)setDescriptorCache:(uint64_t)cache;
- (BOOL)requiresCellular;
- (BOOL)requiresWifi;
- (BOOL)shouldIgnoreError:(id)error;
- (BOOL)supportsResourceTypes;
- (NSArray)darwinNotifications;
- (NSDictionary)ignoreErrors;
- (NSString)correspondingApplicationIdentifier;
- (NSString)dataUsageBundleIdentifier;
- (NSString)localizedAlertButtonLabel;
- (NSString)localizedAppName;
- (NSString)localizedName;
- (NSString)localizedStopAllAlertDetail;
- (NSString)localizedStopAllAlertLabel;
- (NSString)localizedStopAllLabel;
- (__CFString)namedValueForLocKey:(uint64_t)key;
- (__CFString)resourceTypeFromResource:(uint64_t)resource;
- (id)_locKeyForResources:(void *)resources withDescriptorKey:;
- (id)_localizedStopByPerson:(void *)person detailTextForDirectlySharedResources:(void *)resources isBlocking:;
- (id)_localizedStopByPerson:(void *)person detailTextForIndirectlySharedResources:(void *)resources isBlocking:;
- (id)attributedStopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResourceList:(int)list isBlocking:;
- (id)localizedAlertDetailForSelectedPeople:(id)people;
- (id)localizedAlertTextForPerson:(id)person;
- (id)localizedDetailTextByType:(id)type;
- (id)localizedNameListForResources:(uint64_t)resources;
- (id)localizedPublicSharingDetailTextByType:(id)type;
- (id)localizedResourceNamesForPerson:(id)person;
- (id)localizedStopAllAlertDetailForPeople:(id)people;
- (id)localizedStopByTypeSubtitleForSharingType:(id)type;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)orderedResourceTypes:(id)types;
- (id)peopleByResourceType:(uint64_t)type;
- (id)resourceTypeOrder;
- (id)sharedResourcesByResourceType:(uint64_t)type;
- (id)stopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResources:(int)resources isBlocking:;
- (id)stopByPersonLocKey:(void *)key resourceTypes:(char)types isBlocking:;
- (int64_t)priority;
- (uint64_t)initWithSourceName:(void *)name localizationBundle:;
- (uint64_t)localizationBundle;
- (uint64_t)sourceName;
- (uint64_t)sourceProperties;
- (void)_localizedStopByPerson:(void *)person isBlocking:;
- (void)_sharedResourcesForPeople:(int)people isOwnedByUser:;
- (void)localizableKey:(void *)key;
- (void)localizedAppName;
- (void)setLocalizationBundle:(uint64_t)bundle;
- (void)setSourceName:(uint64_t)name;
- (void)setSourceProperties:(uint64_t)properties;
@end

@implementation DSSourceDescriptor

+ (id)descriptorCache
{
  objc_opt_self();
  v0 = _descriptorCache;
  if (!_descriptorCache)
  {
    if (descriptorCache_onceToken != -1)
    {
      +[DSSourceDescriptor descriptorCache];
    }

    v0 = _descriptorCache;
  }

  return v0;
}

uint64_t __37__DSSourceDescriptor_descriptorCache__block_invoke()
{
  _descriptorCache = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (void)setDescriptorCache:(uint64_t)cache
{
  v4 = a2;
  objc_opt_self();
  if (_descriptorCache != v4)
  {
    os_unfair_lock_lock(&kDescriptorCacheLock);
    v2 = [v4 copy];
    v3 = _descriptorCache;
    _descriptorCache = v2;

    os_unfair_lock_unlock(&kDescriptorCacheLock);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLogSourceDescriptor = os_log_create("com.apple.DigitalSeparation", "DSSourceDescriptor");

    MEMORY[0x2821F96F8]();
  }
}

- (uint64_t)initWithSourceName:(void *)name localizationBundle:
{
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    if (![v6 length])
    {
      [DSSourceDescriptor initWithSourceName:self localizationBundle:?];
    }

    if (![v6 length])
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"No source name provided" userInfo:0];
      objc_exception_throw(v13);
    }

    v14.receiver = self;
    v14.super_class = DSSourceDescriptor;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong((self + 16), name);
      v9 = [*(self + 16) URLForResource:@"SourceDescriptors" withExtension:@"plist"];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9];
      v11 = *(self + 24);
      *(self + 24) = v10;
    }
  }

  return self;
}

+ (id)sourceDescriptorForSource:(id)source
{
  v4 = MEMORY[0x277CCA8D8];
  sourceCopy = source;
  dssd_bundleForSourceDescriptor = [v4 dssd_bundleForSourceDescriptor];
  v7 = [self sourceDescriptorForSource:sourceCopy localizationBundle:dssd_bundleForSourceDescriptor];

  return v7;
}

+ (id)sourceDescriptorForSource:(id)source localizationBundle:(id)bundle
{
  v21[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  bundleCopy = bundle;
  os_unfair_lock_lock(&kDescriptorCacheLock);
  v9 = +[DSSourceDescriptor descriptorCache];
  v10 = [v9 objectForKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&kDescriptorCacheLock);
  if (!v10)
  {
    v10 = [[DSSourceDescriptor alloc] initWithSourceName:sourceCopy localizationBundle:bundleCopy];
    if (v10)
    {
      if (sourceCopy)
      {
        os_unfair_lock_lock(&kDescriptorCacheLock);
        v11 = +[DSSourceDescriptor descriptorCache];
        [v11 setObject:v10 forKeyedSubscript:sourceCopy];

        os_unfair_lock_unlock(&kDescriptorCacheLock);
        goto LABEL_5;
      }
    }

    else
    {
      [DSSourceDescriptor sourceDescriptorForSource:a2 localizationBundle:self];
    }

    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CCA5A0];
    v20[0] = @"sourceName";
    v20[1] = @"localizationBundle";
    v21[0] = sourceCopy;
    v21[1] = bundleCopy;
    v20[2] = @"cached";
    v21[2] = v10;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v18 = [v15 exceptionWithName:v16 reason:@"No source descriptor for provided source name and bundle" userInfo:v17];
    v19 = v18;

    objc_exception_throw(v18);
  }

LABEL_5:
  v12 = v10;

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __43__DSSourceDescriptor_orderedResourceTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (NSString)localizedAppName
{
  correspondingApplicationIdentifier = [(DSSourceDescriptor *)self correspondingApplicationIdentifier];
  if (correspondingApplicationIdentifier)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:correspondingApplicationIdentifier error:&v8];
    v5 = v8;
    if (!v4)
    {
      [(DSSourceDescriptor *)self localizedAppName];
      goto LABEL_9;
    }

    localizedName = [v4 localizedName];

    if (localizedName)
    {
      goto LABEL_4;
    }
  }

  [(DSSourceDescriptor *)self localizedAppName];
  v5 = v9;
LABEL_9:
  localizedName = v10;

LABEL_4:

  return localizedName;
}

- (int64_t)priority
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"PRIORITY"];
  integerValue = [v6 integerValue];

  if (integerValue <= 1)
  {
    return 1;
  }

  else
  {
    return integerValue;
  }
}

- (NSArray)darwinNotifications
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"DARWIN_NOTIFICATIONS"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  selfCopy = self;
  if (self)
  {
    v5 = self->_sourceProperties;
    selfCopy = selfCopy->_sourceName;
  }

  else
  {
    v5 = 0;
  }

  subscriptCopy = subscript;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:selfCopy];
  v8 = [v7 objectForKeyedSubscript:subscriptCopy];

  return v8;
}

- (NSDictionary)ignoreErrors
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"IGNORE_ERRORS"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = v7;

  return v7;
}

- (BOOL)shouldIgnoreError:(id)error
{
  errorCopy = error;
  ignoreErrors = [(DSSourceDescriptor *)self ignoreErrors];
  domain = [errorCopy domain];
  v7 = [ignoreErrors objectForKeyedSubscript:domain];
  v8 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v10 = [v8 numberWithInteger:code];
  LOBYTE(v8) = [v7 containsObject:v10];

  return v8;
}

- (NSString)dataUsageBundleIdentifier
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"bundle-identifier"];

  return v7;
}

- (BOOL)requiresWifi
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"wifi"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)requiresCellular
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"cell"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (NSString)correspondingApplicationIdentifier
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"APPLICATION_IDENTIFIER"];

  return v6;
}

- (void)setSourceName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 8), a2);
  }
}

- (void)setLocalizationBundle:(uint64_t)bundle
{
  if (bundle)
  {
    objc_storeStrong((bundle + 16), a2);
  }
}

- (uint64_t)localizationBundle
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setSourceProperties:(uint64_t)properties
{
  if (properties)
  {
    objc_storeStrong((properties + 24), a2);
  }
}

- (__CFString)resourceTypeFromResource:(uint64_t)resource
{
  if (resource)
  {
    displayDetail = [a2 displayDetail];
    v4 = @"RESOURCE";
    if (displayDetail)
    {
      v5 = *(resource + 24);
      v6 = *(resource + 8);
      v7 = v5;
      v8 = [v7 objectForKeyedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"RESOURCE_TYPES"];

      v10 = [v9 objectForKeyedSubscript:displayDetail];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = @"RESOURCE";
      }

      v4 = v12;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)sourceProperties
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)sourceName
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)sharedResourcesByResourceType:(uint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v22 = v4;
  if (type)
  {
    v5 = v4;
    [MEMORY[0x277CBEB38] dictionary];
    objc_claimAutoreleasedReturnValue();
    *&v6 = OUTLINED_FUNCTION_23();
    v23 = v6;
    v24 = v6;
    v25 = v6;
    v26 = v6;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [(DSSourceDescriptor *)type resourceTypeFromResource:v12];
          if ([(__CFString *)v13 isEqualToString:@"RESOURCE"])
          {

            v13 = @"RESOURCES";
          }

          v14 = [v2 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [MEMORY[0x277CBEB58] set];
          }

          v17 = v16;

          [v17 addObject:v12];
          [v2 setObject:v17 forKeyedSubscript:v13];
        }

        v9 = OUTLINED_FUNCTION_26(v18, v19, &v23, v27);
      }

      while (v9);
    }
  }

  else
  {
    v2 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)peopleByResourceType:(uint64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v21 = v4;
  if (type)
  {
    v5 = v4;
    [MEMORY[0x277CBEB38] dictionary];
    objc_claimAutoreleasedReturnValue();
    *&v6 = OUTLINED_FUNCTION_23();
    v30 = v6;
    v31 = v6;
    v32 = v6;
    v33 = v6;
    obj = [v5 allPeople];
    v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v23 = *v31;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v7;
          v8 = *(*(&v30 + 1) + 8 * v7);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = [v8 sharedResourcesForSourceName:*(type + 8)];
          v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [(DSSourceDescriptor *)type resourceTypeFromResource:?];
                if ([(__CFString *)v14 isEqualToString:@"RESOURCE"])
                {

                  v14 = @"RESOURCES";
                }

                v15 = [v2 objectForKeyedSubscript:v14];
                v16 = v15;
                if (v15)
                {
                  v17 = v15;
                }

                else
                {
                  v17 = [MEMORY[0x277CBEB58] set];
                }

                v18 = v17;

                [v18 addObject:v8];
                [v2 setObject:v18 forKeyedSubscript:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v2 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)resourceTypeOrder
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *(self + 8);
    v2 = *(self + 24);
    v3 = [v2 objectForKeyedSubscript:v1];
    v4 = [v3 objectForKeyedSubscript:@"RESOURCE_TYPE_ORDER"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v10[0] = @"RESOURCES";
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)orderedResourceTypes:(id)types
{
  typesCopy = types;
  if (types)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
    resourceTypeOrder = [(DSSourceDescriptor *)typesCopy resourceTypeOrder];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__DSSourceDescriptor_orderedResourceTypes___block_invoke;
    v7[3] = &unk_278F72D28;
    v8 = resourceTypeOrder;
    v5 = resourceTypeOrder;
    [v3 sortUsingComparator:v7];
    typesCopy = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  return typesCopy;
}

- (void)localizableKey:(void *)key
{
  if (key)
  {
    key = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", key[1], a2];
    v2 = vars8;
  }

  return key;
}

- (NSString)localizedName
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedAlertButtonLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (id)localizedAlertDetailForSelectedPeople:(id)people
{
  v58 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  v6 = [MEMORY[0x277CBEB58] set];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = peopleCopy;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      v11 = 0;
      do
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v13 = [*(*(&v50 + 1) + 8 * v11) sharedResourcesForSourceName:sourceName];
        [v6 unionSet:v13];

        ++v11;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
      v9 = v14;
    }

    while (v14);
  }

  v15 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v6];
  allKeys = [v15 allKeys];
  v17 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

  v18 = [v7 count];
  v19 = @"ALERT_DETAIL_%@";
  if (v18 == 1)
  {
    v19 = @"ALERT_DETAIL_SINGLE_PERSON_%@";
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = v19;
  [v17 componentsJoinedByString:@"_"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_21();
  v22 = [v20 stringWithFormat:v21];

  v23 = [(__CFString *)v21 isEqualToString:@"ALERT_DETAIL_SINGLE_PERSON_%@"];
  if (v23)
  {
    firstObject = [v7 firstObject];
    v49 = v15;
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v26 = localizationBundle;
    v27 = OUTLINED_FUNCTION_25();
    v28 = [(DSSourceDescriptor *)v27 localizableKey:v22];
    v29 = [(__CFString *)v21 localizedAttributedStringForKey:v28 value:&stru_285B9D7E0 table:0];

    v30 = objc_alloc(MEMORY[0x277CCA898]);
    v55 = *MEMORY[0x277CCA290];
    termsOfAddress = [firstObject termsOfAddress];
    v54 = termsOfAddress;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v56 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6();
    v35 = [v34 initWithFormat:? options:? locale:? context:?];

    string = [v35 string];
    LODWORD(termsOfAddress) = [string containsString:@"@"];

    if (termsOfAddress)
    {
      v37 = MEMORY[0x277CCACA8];
      string2 = [v35 string];
      [firstObject displayGivenName];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      string3 = [v37 stringWithFormat:string2];
    }

    else
    {
      string3 = [v35 string];
    }

    v15 = v49;
  }

  else
  {
    v40 = v17;
    if (self)
    {
      v41 = self->_localizationBundle;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    v43 = [(DSSourceDescriptor *)self localizableKey:v22];
    firstObject = [(NSBundle *)v42 localizedStringForKey:v43 value:&stru_285B9D7E0 table:0];

    if ([firstObject containsString:@"@"])
    {
      v44 = MEMORY[0x277CCACA8];
      firstObject2 = [v7 firstObject];
      displayGivenName = [firstObject2 displayGivenName];
      string3 = [v44 stringWithFormat:firstObject, displayGivenName, objc_msgSend(v7, "count") - 1];
    }

    else
    {
      firstObject = firstObject;
      string3 = firstObject;
    }

    v17 = v40;
  }

  v47 = *MEMORY[0x277D85DE8];

  return string3;
}

- (NSString)localizedStopAllLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedStopAllAlertLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedStopAllAlertDetail
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (id)localizedDetailTextByType:(id)type
{
  v96 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  allPeople = [typeCopy allPeople];
  v9 = [MEMORY[0x277CBEB58] set];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  allPeople2 = [typeCopy allPeople];
  v11 = [allPeople2 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v11)
  {
    v12 = v11;
    v4 = *v87;
    do
    {
      v13 = 0;
      do
      {
        if (*v87 != v4)
        {
          objc_enumerationMutation(allPeople2);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        [*(*(&v86 + 1) + 8 * v13) sharedResourcesForSourceName:sourceName];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_22() unionSet:v3];

        ++v13;
      }

      while (v12 != v13);
      v17 = OUTLINED_FUNCTION_26(v15, v16, &v86, v95);
      v12 = v17;
    }

    while (v17);
  }

  v18 = [(DSSourceDescriptor *)self peopleByResourceType:typeCopy];
  v19 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v9];
  [v19 allKeys];
  objc_claimAutoreleasedReturnValue();
  v20 = OUTLINED_FUNCTION_25();
  v21 = [(DSSourceDescriptor *)v20 orderedResourceTypes:v4];

  if ([v19 count] == 1)
  {
    [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v27 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
    v28 = [v27 count];

    v78 = v5;
    if (v28 == 1)
    {
      v29 = MEMORY[0x277CCACA8];
      anyObject = [v9 anyObject];
      [(DSSourceDescriptor *)self resourceTypeFromResource:anyObject];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_21();
      v31 = [v29 stringWithFormat:@"DETAIL_TEXT_SINGLE_%@_WITH_NAME"];

      v32 = v31;
      if (self)
      {
        localizationBundle = self->_localizationBundle;
      }

      else
      {
        localizationBundle = 0;
      }

      v81 = localizationBundle;
      v34 = [(DSSourceDescriptor *)self localizableKey:v31];
      OUTLINED_FUNCTION_19();
      v36 = [v35 localizedStringForKey:? value:? table:?];

      v82 = v32;
      v37 = [(DSSourceDescriptor *)self localizableKey:v32];
      v38 = v36;
      v74 = [v36 isEqualToString:v37];

      anyObject2 = [v9 anyObject];
      displayName = [anyObject2 displayName];

      if ((v74 & 1) == 0 && [displayName length])
      {
        v41 = v38;
        v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v38, objc_msgSend(allPeople, "count"), displayName];
LABEL_37:

        goto LABEL_17;
      }

      v59 = @"SINGLE";
      v5 = v78;
    }

    else
    {
      v59 = @"MULTIPLE";
    }

    v60 = MEMORY[0x277CCACA8];
    v94[0] = v59;
    v94[1] = v5;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v62 = [v61 componentsJoinedByString:@"_"];
    v63 = [v60 stringWithFormat:@"DETAIL_TEXT_%@", v62];

    if (self)
    {
      v64 = self->_localizationBundle;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;
    v66 = OUTLINED_FUNCTION_25();
    v82 = v63;
    v67 = [(DSSourceDescriptor *)v66 localizableKey:v63];
    v68 = [OUTLINED_FUNCTION_24() localizedStringForKey:? value:? table:?];

    v69 = MEMORY[0x277CCACA8];
    displayName = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v70 = [v18 objectForKeyedSubscript:displayName];
    v24 = [v69 localizedStringWithFormat:v68, objc_msgSend(v70, "count")];

    v41 = v68;
    goto LABEL_37;
  }

  if ([v19 count] == 2)
  {
    v83 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v79 = [v19 objectForKeyedSubscript:v83];
    v42 = [v79 count];
    v43 = @"SINGLE";
    if (v42 != 1)
    {
      v43 = @"MULTIPLE";
    }

    v93[0] = v43;
    [v21 objectAtIndexedSubscript:1];
    objc_claimAutoreleasedReturnValue();
    v44 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
    v45 = [v44 count];
    v46 = @"SINGLE";
    if (v45 != 1)
    {
      v46 = @"MULTIPLE";
    }

    v93[1] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];

    v84 = MEMORY[0x277CCACA8];
    v75 = [v47 objectAtIndexedSubscript:0];
    v92[0] = v75;
    v72 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v92[1] = v72;
    v80 = v47;
    v71 = [v47 objectAtIndexedSubscript:1];
    v92[2] = v71;
    v48 = [v21 objectAtIndexedSubscript:1];
    v92[3] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    [v49 componentsJoinedByString:@"_"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_21();
    v85 = [v84 stringWithFormat:@"DETAIL_TEXT_%@"];

    v77 = allPeople;
    if (self)
    {
      v50 = self->_localizationBundle;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
    v52 = OUTLINED_FUNCTION_25();
    v53 = [(DSSourceDescriptor *)v52 localizableKey:v85];
    v54 = [OUTLINED_FUNCTION_24() localizedStringForKey:? value:? table:?];

    v73 = MEMORY[0x277CCACA8];
    v76 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v55 = [v18 objectForKeyedSubscript:v76];
    v56 = [v55 count];
    v57 = [v21 objectAtIndexedSubscript:1];
    v58 = [v18 objectForKeyedSubscript:v57];
    v24 = [v73 localizedStringWithFormat:v54, v56, objc_msgSend(v58, "count")];

    allPeople = v77;
  }

  else
  {
    v22 = DSLogSourceDescriptor;
    if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
    {
      v90 = 138543362;
      v91 = v21;
      OUTLINED_FUNCTION_5(&dword_248C40000, v22, v23, "More than 2 resource types are not supported: %{public}@", &v90);
    }

    v24 = 0;
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)localizedPublicSharingDetailTextByType:(id)type
{
  v63 = *MEMORY[0x277D85DE8];
  allPublicResources = [type allPublicResources];
  v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  v5 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v4];

  allKeys = [v5 allKeys];
  selfCopy = self;
  v7 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v9 = v7;
  v45 = [v9 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v45)
  {
    v10 = *v56;
    v47 = v5;
    v49 = v9;
    v43 = *v56;
    do
    {
      v11 = 0;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v46 = v11;
        v12 = [v5 objectForKeyedSubscript:*(*(&v55 + 1) + 8 * v11)];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v52;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v52 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v51 + 1) + 8 * i);
              displayName = [v17 displayName];
              if (!displayName || (v19 = displayName, [v17 displayName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, !v21))
              {
                v27 = MEMORY[0x277CCACA8];
                v9 = v49;
                v28 = [v49 componentsJoinedByString:@"_"];
                v29 = [v27 stringWithFormat:@"PUBLIC_SHARING_DETAIL_TEXT_%@", v28];

                if (selfCopy)
                {
                  localizationBundle = selfCopy->_localizationBundle;
                }

                else
                {
                  localizationBundle = 0;
                }

                v5 = v47;
                v31 = localizationBundle;
                v32 = [(DSSourceDescriptor *)selfCopy localizableKey:v29];
                v33 = [(NSBundle *)v31 localizedStringForKey:v32 value:&stru_285B9D7E0 table:0];

                if ([v47 count] == 1)
                {
                  v26 = allPublicResources;
                  v25 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v33, objc_msgSend(allPublicResources, "count")];
                }

                else
                {
                  if ([v47 count] == 2)
                  {
                    v34 = MEMORY[0x277CCACA8];
                    v35 = [v49 objectAtIndexedSubscript:0];
                    v36 = [v47 objectForKeyedSubscript:v35];
                    v37 = [v36 count];
                    [v49 objectAtIndexedSubscript:1];
                    objc_claimAutoreleasedReturnValue();
                    v38 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
                    v25 = [v34 localizedStringWithFormat:v33, v37, objc_msgSend(v38, "count")];

                    v9 = v49;
                  }

                  else
                  {
                    v39 = DSLogSourceDescriptor;
                    if (OUTLINED_FUNCTION_27())
                    {
                      v59 = 138543362;
                      v60 = v49;
                      OUTLINED_FUNCTION_5(&dword_248C40000, v39, v40, "More than 2 resource types are not supported: %{public}@", &v59);
                    }

                    v25 = 0;
                  }

                  v26 = allPublicResources;
                }

                goto LABEL_29;
              }

              v22 = MEMORY[0x277CCACA8];
              v23 = DSLocStringForKey(@"RESOURCE_DISPLAY_NAME");
              [v17 displayName];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v22 stringWithFormat:v23];

              [array addObject:v24];
            }

            v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v11 = v46 + 1;
        v5 = v47;
        v9 = v49;
        v10 = v43;
      }

      while (v46 + 1 != v45);
      v45 = [v49 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v45);
  }

  v25 = [DSUtilities localizedDetailStringWithTruncationFromArray:array withType:@"com.apple.DigitalSeparation.Resources"];
  v26 = allPublicResources;
LABEL_29:

  v41 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_localizedStopByPerson:(void *)person detailTextForDirectlySharedResources:(void *)resources isBlocking:
{
  v303[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  personCopy = person;
  v10 = personCopy;
  if (self)
  {
    string = [personCopy count];
    if (!string)
    {
      goto LABEL_3;
    }

    v14 = OUTLINED_FUNCTION_20();
    v16 = [(DSSourceDescriptor *)v14 sharedResourcesByResourceType:v15];
    [v16 allKeys];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_14();
    v272 = [(DSSourceDescriptor *)v17 orderedResourceTypes:v18];

    v19 = [v8 shareDirectionForSourceName:*(self + 8)];
    v20 = OUTLINED_FUNCTION_20();
    v22 = [(DSSourceDescriptor *)v20 localizedNameListForResources:v21];
    v23 = v22;
    if ((~v19 & 3) != 0)
    {
      if (v19)
      {
        if (string == 1)
        {
          [v10 anyObject];
          objc_claimAutoreleasedReturnValue();
          v37 = OUTLINED_FUNCTION_3_0();
          v38 = [(DSSourceDescriptor *)v37 resourceTypeFromResource:v19];
          v289 = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
          v40 = OUTLINED_FUNCTION_9();
          v27 = [(DSSourceDescriptor *)v40 stopByPersonLocKey:v41 resourceTypes:v42 isBlocking:v43];

          v44 = *(self + 16);
          v45 = OUTLINED_FUNCTION_3_0();
          v46 = [(DSSourceDescriptor *)v45 localizableKey:v27];
          v47 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

          v19 = [(DSSourceDescriptor *)self namedValueForLocKey:v27];
          if (![v19 length] || !objc_msgSend(v23, "length"))
          {
            v48 = OUTLINED_FUNCTION_4();
            v50 = 1;
LABEL_23:
            v32 = v47;
            v61 = [(DSSourceDescriptor *)v48 attributedStopByPerson:v49 direction:v50 format:v47 namedResourceList:0 isBlocking:resources];
LABEL_61:
            string = [v61 string];

            goto LABEL_77;
          }

          [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
          v159 = v19;
          OUTLINED_FUNCTION_3_0();
LABEL_60:
          OUTLINED_FUNCTION_15();
          v61 = [(DSSourceDescriptor *)v169 attributedStopByPerson:v170 direction:v171 format:v172 namedResourceList:v173 isBlocking:v174];

          v19 = v159;
          v32 = v47;
          goto LABEL_61;
        }

        v265 = v22;
        v78 = OUTLINED_FUNCTION_11();
        v82 = [(DSSourceDescriptor *)v78 stopByPersonLocKey:v79 resourceTypes:v80 isBlocking:v81];
        v83 = *(self + 16);
        v84 = OUTLINED_FUNCTION_3_0();
        v85 = [(DSSourceDescriptor *)v84 localizableKey:v82];
        v268 = [OUTLINED_FUNCTION_1_1() localizedStringForKey:? value:? table:?];

        v86 = OUTLINED_FUNCTION_10();
        [(DSSourceDescriptor *)v86 namedValueForLocKey:v87];
        objc_claimAutoreleasedReturnValue();
        if ([OUTLINED_FUNCTION_22() count] == 1)
        {
          v262 = v19;
          v23 = v265;
          if (![v268 length] || !objc_msgSend(v265, "length"))
          {
            v88 = MEMORY[0x277CCACA8];
            displayGivenName = [v8 displayGivenName];
            string = [v88 localizedStringWithFormat:v268, string, displayGivenName];

            v32 = v268;
LABEL_75:
            v27 = v266;
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_15();
          string = [(DSSourceDescriptor *)v203 stopByPerson:v204 direction:v205 format:v206 namedResources:v207 isBlocking:v208];
        }

        else
        {
          v23 = v265;
          if ([v16 count] == 2)
          {
            v116 = [OUTLINED_FUNCTION_2_1(2 v116];
            v123 = [v16 objectForKeyedSubscript:v116];
            v124 = [v123 count];
            [v8 displayGivenName];
            v125 = v263 = v19;
            [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            objc_claimAutoreleasedReturnValue();
            v126 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
            string = [v249 localizedStringWithFormat:v270, v124, v125, objc_msgSend(v126, "count")];

            v32 = v270;
            v19 = v263;

LABEL_64:
            v27 = v266;
            goto LABEL_77;
          }

          v160 = DSLogSourceDescriptor;
          v161 = OUTLINED_FUNCTION_27();
          if (v161)
          {
            OUTLINED_FUNCTION_13(5.8381e-34, v161, v162, v163, v164, v165, v166, v167, v168, v217, v220, v224, v227, v228, v231, v235, v240, v246, v254, v261, v265, v266, v268, v272);
            OUTLINED_FUNCTION_5(&dword_248C40000, v160, v215, "More than 2 resource types are not supported: %{public}@", v290);
          }

          string = 0;
        }

        v27 = v266;
        v32 = v268;
LABEL_77:

        goto LABEL_10;
      }

      if ((v19 & 2) == 0)
      {
        string = 0;
LABEL_10:

        goto LABEL_3;
      }

      if (string == 1)
      {
        [v10 anyObject];
        objc_claimAutoreleasedReturnValue();
        v51 = OUTLINED_FUNCTION_3_0();
        v52 = [(DSSourceDescriptor *)v51 resourceTypeFromResource:v19];
        v288 = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v288 count:1];
        v54 = OUTLINED_FUNCTION_9();
        v27 = [(DSSourceDescriptor *)v54 stopByPersonLocKey:v55 resourceTypes:v56 isBlocking:v57];

        v58 = *(self + 16);
        v59 = OUTLINED_FUNCTION_3_0();
        v60 = [(DSSourceDescriptor *)v59 localizableKey:v27];
        v47 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

        v19 = [(DSSourceDescriptor *)self namedValueForLocKey:v27];
        if (![v19 length] || !objc_msgSend(v23, "length"))
        {
          v48 = OUTLINED_FUNCTION_4();
          v50 = 2;
          goto LABEL_23;
        }

        [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
        v159 = v19;
        OUTLINED_FUNCTION_3_0();
        goto LABEL_60;
      }

      v264 = v22;
      v90 = OUTLINED_FUNCTION_11();
      v94 = [(DSSourceDescriptor *)v90 stopByPersonLocKey:v91 resourceTypes:v92 isBlocking:v93];
      v95 = *(self + 16);
      v96 = OUTLINED_FUNCTION_3_0();
      v69 = [(DSSourceDescriptor *)v96 localizableKey:v94];
      v267 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

      v97 = OUTLINED_FUNCTION_10();
      [(DSSourceDescriptor *)v97 namedValueForLocKey:v98];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_22() count] == 1)
      {
        v23 = v264;
        v262 = v19;
        if (![v19 length] || !objc_msgSend(v264, "length"))
        {
          v99 = objc_alloc(MEMORY[0x277CCA898]);
          v100 = *MEMORY[0x277CCA290];
          v27 = v266;
          if (resources)
          {
            v286 = *MEMORY[0x277CCA290];
            termsOfAddress = [v8 termsOfAddress];
            v285 = termsOfAddress;
            v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v285 count:1];
            v287 = v74;
            v75 = MEMORY[0x277CBEAC0];
            v76 = &v287;
            v77 = &v286;
            goto LABEL_38;
          }

          v283 = *MEMORY[0x277CCA290];
          termsOfAddress = [v8 termsOfAddress];
          v282 = termsOfAddress;
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v282 count:1];
          v284 = v74;
          v156 = MEMORY[0x277CBEAC0];
          v157 = &v284;
          v158 = &v283;
          goto LABEL_66;
        }

        goto LABEL_80;
      }

      v23 = v264;
      if ([v16 count] == 2)
      {
        v262 = v19;
        if (resources)
        {
          v127 = v267;
          string2 = [v267 string];
          v129 = [string2 containsString:@"%#"];

          objc_alloc(MEMORY[0x277CCA898]);
          v130 = *MEMORY[0x277CCA290];
          if (v129)
          {
            v280 = *MEMORY[0x277CCA290];
            termsOfAddress2 = [v8 termsOfAddress];
            v279 = termsOfAddress2;
            v242 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
            v281 = v242;
            v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
            v132 = [OUTLINED_FUNCTION_2_1(v131 v132];
            v233 = [v16 objectForKeyedSubscript:?];
            v229 = [v233 count];
            v139 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            v140 = [v16 objectForKeyedSubscript:v139];
            v141 = [v140 count];
            displayGivenName2 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v144 = [v143 initWithFormat:v229 options:v141 locale:displayGivenName2 context:?];

            v145 = v243;
            v146 = v237;
          }

          else
          {
            v277 = *MEMORY[0x277CCA290];
            termsOfAddress3 = [v8 termsOfAddress];
            v276 = termsOfAddress3;
            v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v276 count:1];
            v278 = v145;
            v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
            v132 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v144 = [v202 initWithFormat:v132 options:? locale:? context:?];
          }

          v32 = v127;
        }

        else
        {
          v234 = objc_alloc(MEMORY[0x277CCA898]);
          v274 = *MEMORY[0x277CCA290];
          termsOfAddress4 = [v8 termsOfAddress];
          v273 = termsOfAddress4;
          v244 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:1];
          v275 = v244;
          v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
          displayGivenName3 = [v8 displayGivenName];
          v190 = [OUTLINED_FUNCTION_2_1(displayGivenName3 v190];
          v197 = [v16 objectForKeyedSubscript:v190];
          v198 = [v197 count];
          v199 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v200 = [v16 objectForKeyedSubscript:v199];
          v223 = v198;
          v226 = [v200 count];
          v132 = displayGivenName3;
          v32 = v271;
          OUTLINED_FUNCTION_6();
          v144 = [v201 initWithFormat:displayGivenName3 options:v223 locale:v226 context:?];

          v146 = v239;
          v145 = v245;
        }

        v188 = termsOfAddress3;
        goto LABEL_74;
      }

      v147 = DSLogSourceDescriptor;
      v148 = OUTLINED_FUNCTION_27();
      v32 = v267;
      if (!v148)
      {
LABEL_63:
        string = 0;
        goto LABEL_64;
      }
    }

    else
    {
      if (string == 1)
      {
        anyObject = [v10 anyObject];
        v25 = [(DSSourceDescriptor *)self resourceTypeFromResource:anyObject];
        v303[0] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v303 count:1];
        v27 = [(DSSourceDescriptor *)self stopByPersonLocKey:v26 resourceTypes:resources isBlocking:?];

        v28 = *(self + 16);
        v29 = OUTLINED_FUNCTION_3_0();
        v30 = [(DSSourceDescriptor *)v29 localizableKey:v27];
        OUTLINED_FUNCTION_19();
        v32 = [v31 localizedStringForKey:? value:? table:?];

        v19 = [(DSSourceDescriptor *)self namedValueForLocKey:v27];
        if ([v32 length] && objc_msgSend(v23, "length"))
        {
          v33 = OUTLINED_FUNCTION_4();
          v35 = v19;
          v36 = v23;
        }

        else
        {
          v33 = OUTLINED_FUNCTION_4();
          v35 = v32;
          v36 = 0;
        }

        string = [(DSSourceDescriptor *)v33 stopByPerson:v34 direction:3 format:v35 namedResources:v36 isBlocking:resources];
        goto LABEL_77;
      }

      v264 = v22;
      v62 = OUTLINED_FUNCTION_11();
      v66 = [(DSSourceDescriptor *)v62 stopByPersonLocKey:v63 resourceTypes:v64 isBlocking:v65];
      v67 = *(self + 16);
      v68 = OUTLINED_FUNCTION_3_0();
      v69 = [(DSSourceDescriptor *)v68 localizableKey:v66];
      v267 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

      v70 = OUTLINED_FUNCTION_10();
      [(DSSourceDescriptor *)v70 namedValueForLocKey:v71];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_22() count] == 1)
      {
        v23 = v264;
        v262 = v19;
        if (![v19 length] || !objc_msgSend(v264, "length"))
        {
          v72 = objc_alloc(MEMORY[0x277CCA898]);
          v73 = *MEMORY[0x277CCA290];
          v27 = v266;
          if (resources)
          {
            v301 = *MEMORY[0x277CCA290];
            termsOfAddress = [v8 termsOfAddress];
            v300 = termsOfAddress;
            v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v300 count:1];
            v302 = v74;
            v75 = MEMORY[0x277CBEAC0];
            v76 = &v302;
            v77 = &v301;
LABEL_38:
            [v75 dictionaryWithObjects:v76 forKeys:v77 count:1];
            objc_claimAutoreleasedReturnValue();
            displayGivenName4 = [OUTLINED_FUNCTION_7() displayGivenName];
            v218 = string;
            v221 = displayGivenName4;
LABEL_67:
            OUTLINED_FUNCTION_6();
            v176 = [v175 initWithFormat:v218 options:v221 locale:? context:?];

LABEL_68:
            string = [v176 string];

            v32 = v267;
LABEL_76:
            v19 = v262;
            goto LABEL_77;
          }

          v298 = *MEMORY[0x277CCA290];
          termsOfAddress = [v8 termsOfAddress];
          v297 = termsOfAddress;
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v297 count:1];
          v299 = v74;
          v156 = MEMORY[0x277CBEAC0];
          v157 = &v299;
          v158 = &v298;
LABEL_66:
          [v156 dictionaryWithObjects:v157 forKeys:v158 count:1];
          objc_claimAutoreleasedReturnValue();
          displayGivenName4 = [OUTLINED_FUNCTION_7() displayGivenName];
          v218 = displayGivenName4;
          v221 = string;
          goto LABEL_67;
        }

LABEL_80:
        [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_15();
        v176 = [(DSSourceDescriptor *)v209 attributedStopByPerson:v210 direction:v211 format:v212 namedResourceList:v213 isBlocking:v214];

        v27 = v266;
        goto LABEL_68;
      }

      v23 = v264;
      if ([v16 count] == 2)
      {
        v102 = objc_alloc(MEMORY[0x277CCA898]);
        if (resources)
        {
          v295 = *MEMORY[0x277CCA290];
          termsOfAddress5 = [v8 termsOfAddress];
          v294 = termsOfAddress5;
          v247 = [MEMORY[0x277CBEA60] arrayWithObjects:&v294 count:1];
          v296 = v247;
          v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
          [OUTLINED_FUNCTION_2_1(v103 v104];
          objc_claimAutoreleasedReturnValue();
          v179 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v111 = [v179 count];
          v236 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v112 = [v16 objectForKeyedSubscript:?];
          [v112 count];
          displayGivenName5 = [OUTLINED_FUNCTION_7() displayGivenName];
          v222 = v102;
          v225 = displayGivenName5;
          v219 = v111;
          resourcesCopy = resources;
          v115 = v232;
        }

        else
        {
          v292 = *MEMORY[0x277CCA290];
          termsOfAddress6 = [v8 termsOfAddress];
          v291 = termsOfAddress6;
          v252 = [MEMORY[0x277CBEA60] arrayWithObjects:&v291 count:1];
          v293 = v252;
          v177 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
          displayGivenName6 = [v8 displayGivenName];
          v179 = [OUTLINED_FUNCTION_2_1(displayGivenName6 v179];
          v236 = [v16 objectForKeyedSubscript:?];
          v186 = [v236 count];
          v115 = v177;
          v112 = [(uint8_t *)v290 objectAtIndexedSubscript:1];
          displayGivenName5 = [v16 objectForKeyedSubscript:v112];
          v222 = v186;
          v225 = [displayGivenName5 count];
          resourcesCopy = displayGivenName6;
          v219 = displayGivenName6;
        }

        v32 = v269;
        OUTLINED_FUNCTION_6();
        v144 = [v187 initWithFormat:v219 options:v222 locale:v225 context:?];

        v188 = v257;
LABEL_74:

        string = [v144 string];

        goto LABEL_75;
      }

      v147 = DSLogSourceDescriptor;
      v148 = OUTLINED_FUNCTION_27();
      v32 = v267;
      if (!v148)
      {
        goto LABEL_63;
      }
    }

    OUTLINED_FUNCTION_13(5.8381e-34, v148, v149, v150, v151, v152, v153, v154, v155, v217, v220, v224, v227, v228, v231, v235, v240, v246, v254, v261, v264, v266, v267, v272);
    OUTLINED_FUNCTION_5(&dword_248C40000, v147, v216, "More than 2 resource types are not supported: %{public}@", v290);
    goto LABEL_63;
  }

  string = 0;
LABEL_3:

  v12 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)localizedNameListForResources:(uint64_t)resources
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (resources)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = [DSSourceDescriptor sourceDescriptorForSource:*(resources + 8)];
    localizedAppName = [v5 localizedAppName];

    v6 = [(DSSourceDescriptor *)resources sharedResourcesByResourceType:v3];
    if ([v6 count] == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v3;
      v7 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v38;
        v33 = v6;
        v34 = v3;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v38 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v37 + 1) + 8 * i);
            displayName = [v11 displayName];
            if (![displayName length])
            {

LABEL_21:
              v22 = 0;
              v6 = v33;
              v3 = v34;
              goto LABEL_28;
            }

            displayName2 = [v11 displayName];
            v14 = [DSUtilities isString:displayName2 likeString:localizedAppName];

            if (v14)
            {
              goto LABEL_21;
            }

            v15 = [array count];
            v16 = MEMORY[0x277CCACA8];
            if (v15 == 2)
            {
              v6 = v33;
              allKeys = [v33 allKeys];
              [allKeys objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v16 stringWithFormat:@"%@_NAME_TRUNCATION"];

              v25 = *(resources + 16);
              v26 = [(DSSourceDescriptor *)resources localizableKey:v24];
              v27 = [v25 localizedStringForKey:v26 value:&stru_285B9D7E0 table:0];

              v28 = [(DSSourceDescriptor *)resources localizableKey:v24];
              LOBYTE(v26) = [v27 isEqualToString:v28];

              if (v26)
              {
                v29 = DSLogSourceDescriptor;
                v3 = v34;
                if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v42 = v24;
                  _os_log_error_impl(&dword_248C40000, v29, OS_LOG_TYPE_ERROR, "No loc key present matching %@", buf, 0xCu);
                }
              }

              else
              {
                v30 = [MEMORY[0x277CCACA8] stringWithFormat:v27, objc_msgSend(obj, "count") - 2];

                [array addObject:v30];
                v27 = v30;
                v3 = v34;
              }

              goto LABEL_27;
            }

            v17 = DSLocStringForKey(@"RESOURCE_DISPLAY_NAME");
            [v11 displayName];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_17();
            v18 = [v16 stringWithFormat:v17];
            [array addObject:v18];
          }

          v8 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
          v6 = v33;
          v3 = v34;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:array];
    }

    else
    {
      v19 = [v6 count];
      v20 = DSLogSourceDescriptor;
      if (v19 == 2)
      {
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v42 = v6;
          _os_log_impl(&dword_248C40000, v20, OS_LOG_TYPE_INFO, "2 resource types are not supported for enumeration: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v42 = v6;
        OUTLINED_FUNCTION_5(&dword_248C40000, v20, v21, "More than 2 resource types are not supported: %{public}@", buf);
      }

      v22 = 0;
    }

LABEL_28:
  }

  else
  {
    v22 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)stopByPersonLocKey:(void *)key resourceTypes:(char)types isBlocking:
{
  v7 = a2;
  keyCopy = key;
  v9 = keyCopy;
  if (self)
  {
    v10 = MEMORY[0x277CCACA8];
    if ([keyCopy count] == 1)
    {
      [v9 firstObject];
    }

    else
    {
      [v9 componentsJoinedByString:@"_"];
    }
    v11 = ;
    v12 = [v10 stringWithFormat:v7, v11];

    if (types)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"SCWB"];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (__CFString)namedValueForLocKey:(uint64_t)key
{
  v12 = *MEMORY[0x277D85DE8];
  if (key)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a2, @"WITH_NAME"];
    v4 = [(DSSourceDescriptor *)key localizableKey:v3];

    v5 = [*(key + 16) localizedStringForKey:v4 value:&stru_285B9D7E0 table:0];
    if ([v5 isEqualToString:v4])
    {
      v6 = DSLogSourceDescriptor;
      if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_248C40000, v6, OS_LOG_TYPE_ERROR, "No loc key found named %@", buf, 0xCu);
      }

      v7 = &stru_285B9D7E0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)stopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResources:(int)resources isBlocking:
{
  v11 = a2;
  directionCopy = direction;
  formatCopy = format;
  v14 = formatCopy;
  if (self)
  {
    if (formatCopy)
    {
      v15 = MEMORY[0x277CCACA8];
      displayGivenName = [v11 displayGivenName];
      self = displayGivenName;
      if (person == 1 || !resources)
      {
        v21 = displayGivenName;
        v22 = v14;
      }

      else
      {
        v21 = v14;
        v22 = displayGivenName;
      }

      v18 = v15;
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      [v11 displayGivenName];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      v18 = v17;
    }

    v19 = [v18 localizedStringWithFormat:directionCopy, v21, v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)attributedStopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResourceList:(int)list isBlocking:
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  directionCopy = direction;
  formatCopy = format;
  v15 = formatCopy;
  if (self)
  {
    if (formatCopy)
    {
      v16 = objc_alloc(MEMORY[0x277CCA898]);
      v17 = *MEMORY[0x277CCA290];
      if (person != 1 && list)
      {
        v34 = *MEMORY[0x277CCA290];
        termsOfAddress = [v12 termsOfAddress];
        v33 = termsOfAddress;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v35[0] = v19;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        objc_claimAutoreleasedReturnValue();
        displayGivenName = [OUTLINED_FUNCTION_7() displayGivenName];
        v26 = v15;
LABEL_9:
        OUTLINED_FUNCTION_6();
        self = [v23 initWithFormat:v26 options:? locale:? context:?];

        goto LABEL_10;
      }

      v31 = *MEMORY[0x277CCA290];
      termsOfAddress = [v12 termsOfAddress];
      v30 = termsOfAddress;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v32 = v19;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      objc_claimAutoreleasedReturnValue();
      displayGivenName2 = [OUTLINED_FUNCTION_7() displayGivenName];
      displayGivenName = displayGivenName2;
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA898]);
      v28 = *MEMORY[0x277CCA290];
      termsOfAddress = [v12 termsOfAddress];
      v27 = termsOfAddress;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v29 = v19;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      objc_claimAutoreleasedReturnValue();
      displayGivenName2 = [OUTLINED_FUNCTION_7() displayGivenName];
      displayGivenName = displayGivenName2;
    }

    v26 = displayGivenName2;
    goto LABEL_9;
  }

LABEL_10:

  v24 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)_localizedStopByPerson:(void *)person detailTextForIndirectlySharedResources:(void *)resources isBlocking:
{
  v61[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  personCopy = person;
  v10 = personCopy;
  if (self)
  {
    v11 = [personCopy count];
    if (!v11)
    {
      goto LABEL_3;
    }

    v14 = OUTLINED_FUNCTION_20();
    v16 = [(DSSourceDescriptor *)v14 sharedResourcesByResourceType:v15];
    [v16 allKeys];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_14();
    v19 = [(DSSourceDescriptor *)v17 orderedResourceTypes:v18];

    v20 = OUTLINED_FUNCTION_20();
    [(DSSourceDescriptor *)v20 localizedNameListForResources:v21];
    v58 = v57 = v19;
    if (v58)
    {
      resourcesCopy = 1;
    }

    else
    {
      resourcesCopy = resources;
    }

    if (v11 == 1 && resourcesCopy)
    {
      [v10 anyObject];
      objc_claimAutoreleasedReturnValue();
      v23 = OUTLINED_FUNCTION_14();
      v25 = [(DSSourceDescriptor *)v23 resourceTypeFromResource:v24];
      v61[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
      v27 = OUTLINED_FUNCTION_9();
      v31 = [(DSSourceDescriptor *)v27 stopByPersonLocKey:v28 resourceTypes:v29 isBlocking:v30];
    }

    else
    {
      v31 = [(DSSourceDescriptor *)self stopByPersonLocKey:v19 resourceTypes:resources isBlocking:?];
    }

    v32 = *(self + 16);
    v33 = [(DSSourceDescriptor *)self localizableKey:v31];
    OUTLINED_FUNCTION_19();
    v35 = [v34 localizedStringForKey:? value:? table:?];

    v36 = [(DSSourceDescriptor *)self namedValueForLocKey:v31];
    if ([v16 count] != 1)
    {
      if ([v16 count] == 2)
      {
        v56 = MEMORY[0x277CCACA8];
        if (resources)
        {
          v54 = [v57 objectAtIndexedSubscript:0];
          v52 = [v16 objectForKeyedSubscript:v54];
          v51 = [v52 count];
          [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          objc_claimAutoreleasedReturnValue();
          v40 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v41 = [v40 count];
          displayGivenName = [v8 displayGivenName];
          v11 = [v56 localizedStringWithFormat:v35, v51, v41, displayGivenName];
        }

        else
        {
          displayGivenName2 = [v8 displayGivenName];
          v55 = [v57 objectAtIndexedSubscript:0];
          v53 = [v16 objectForKeyedSubscript:v55];
          v46 = [v53 count];
          [v57 objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          v47 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v11 = [v56 localizedStringWithFormat:v35, displayGivenName2, v46, objc_msgSend(v47, "count")];
        }
      }

      else
      {
        v43 = DSLogSourceDescriptor;
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
        {
          v59 = 138543362;
          v60 = v57;
          OUTLINED_FUNCTION_5(&dword_248C40000, v43, v44, "More than 2 resource types are not supported: %{public}@", &v59);
        }

        v11 = 0;
      }

      goto LABEL_29;
    }

    if ([v36 length] && objc_msgSend(v58, "length"))
    {
      v48 = OUTLINED_FUNCTION_4();
      v11 = [(DSSourceDescriptor *)v48 stopByPerson:v49 direction:4 format:v36 namedResources:v58 isBlocking:resources];
      goto LABEL_29;
    }

    v37 = MEMORY[0x277CCACA8];
    displayGivenName3 = [v8 displayGivenName];
    v39 = displayGivenName3;
    if (resources)
    {
      if (v11 != 1)
      {
        [v37 localizedStringWithFormat:v35, v11, displayGivenName3];
        v11 = LABEL_27:;

LABEL_29:
        goto LABEL_3;
      }
    }

    else
    {
      v50 = v11;
    }

    [v37 localizedStringWithFormat:v35, displayGivenName3, v50];
    goto LABEL_27;
  }

  v11 = 0;
LABEL_3:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_localizedStopByPerson:(void *)person isBlocking:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 sharedResourcesForSourceName:self[1]];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [MEMORY[0x277CBEB58] set];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (([v6 shareDirectionForSharedResource:{v15, v24}] & 4) != 0)
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }

          v17 = [v16 addObject:v15];
        }

        v12 = OUTLINED_FUNCTION_26(v17, v18, &v24, v28);
      }

      while (v12);
    }

    v19 = [(DSSourceDescriptor *)self _localizedStopByPerson:v6 detailTextForDirectlySharedResources:v8 isBlocking:person];
    v20 = [(DSSourceDescriptor *)self _localizedStopByPerson:v6 detailTextForIndirectlySharedResources:v9 isBlocking:person];
    array = [MEMORY[0x277CBEB18] array];
    if (v19)
    {
      [OUTLINED_FUNCTION_24() addObject:?];
    }

    if (v20)
    {
      [array addObject:v20];
    }

    self = [array componentsJoinedByString:{@" ", v24}];
  }

  v22 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)localizedAlertTextForPerson:(id)person
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v6 = localizationBundle;
  personCopy = person;
  v8 = [(DSSourceDescriptor *)self localizableKey:?];
  v9 = [(NSBundle *)v6 localizedAttributedStringForKey:v8 value:&stru_285B9D7E0 table:0];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v22 = *MEMORY[0x277CCA290];
  termsOfAddress = [personCopy termsOfAddress];
  v21 = termsOfAddress;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  displayName = [personCopy displayName];
  displayName2 = [personCopy displayName];

  OUTLINED_FUNCTION_6();
  v17 = [v16 initWithFormat:displayName options:displayName2 locale:? context:?];

  string = [v17 string];

  v19 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)localizedResourceNamesForPerson:(id)person
{
  if (self)
  {
    sourceName = self->_sourceName;
  }

  else
  {
    sourceName = 0;
  }

  v6 = [person sharedResourcesForSourceName:sourceName];
  v7 = [(DSSourceDescriptor *)self localizedNameListForResources:v6];

  return v7;
}

- (BOOL)supportsResourceTypes
{
  if (self)
  {
    sourceName = self->_sourceName;
  }

  else
  {
    sourceName = 0;
  }

  return sourceName == @"com.apple.DigitalSeparation.Photos";
}

- (id)localizedStopAllAlertDetailForPeople:(id)people
{
  v37 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:peopleCopy isOwnedByUser:1];
  v34 = v7;
  if ([v7 count])
  {
    [array addObject:@"OUTGOING"];
    v9 = [(DSSourceDescriptor *)self _locKeyForResources:v7 withDescriptorKey:@"STOP_ALL_SHARING_ALERT_DETAIL_TEXT_OUTGOING_%@"];
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v11 = localizationBundle;
    v12 = [(DSSourceDescriptor *)self localizableKey:v9];
    OUTLINED_FUNCTION_19();
    v8 = [v13 localizedStringForKey:? value:? table:?];
  }

  else
  {
    v8 = 0;
  }

  v14 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:peopleCopy isOwnedByUser:0];
  if ([v14 count])
  {
    [array addObject:@"INCOMING"];
    v16 = [(DSSourceDescriptor *)self _locKeyForResources:v14 withDescriptorKey:@"STOP_ALL_SHARING_ALERT_DETAIL_TEXT_INCOMING_%@"];
    if (self)
    {
      v17 = self->_localizationBundle;
    }

    else
    {
      v17 = 0;
    }

    v3 = v17;
    v18 = [(DSSourceDescriptor *)self localizableKey:v16];
    v15 = [(NSBundle *)v3 localizedStringForKey:v18 value:&stru_285B9D7E0 table:0];
  }

  else
  {
    v15 = 0;
  }

  v19 = MEMORY[0x277CCACA8];
  [array componentsJoinedByString:@"_"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_21();
  v20 = [v19 stringWithFormat:@"STOP_ALL_SHARING_ALERT_DETAIL_%@"];

  if (self)
  {
    v21 = self->_localizationBundle;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v23 = [(DSSourceDescriptor *)self localizableKey:v20];
  v24 = [(NSBundle *)v22 localizedStringForKey:v23 value:&stru_285B9D7E0 table:0];

  if (v8 && v15)
  {
    v25 = MEMORY[0x277CCACA8];
    v33 = v15;
  }

  else
  {
    if (v15)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v24, v15, v33, v34];
      goto LABEL_19;
    }

    if (!v8)
    {
      v29 = DSLogSourceDescriptor;
      if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
      {
        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v35 = 138543362;
        v36 = sourceName;
        v31 = v29;
        OUTLINED_FUNCTION_5(&dword_248C40000, v31, v32, "Could not support resource specific alert detail for source: %{public}@", &v35);

        v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_20;
    }

    v25 = MEMORY[0x277CCACA8];
  }

  [v25 stringWithFormat:v24, v8, v33, v34];
  v26 = LABEL_19:;
LABEL_20:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)_sharedResourcesForPeople:(int)people isOwnedByUser:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = v5;
  if (self)
  {
    v6 = v5;
    [MEMORY[0x277CBEB58] set];
    objc_claimAutoreleasedReturnValue();
    *&v7 = OUTLINED_FUNCTION_23();
    v29 = v7;
    v30 = v7;
    v31 = v7;
    v32 = v7;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v24 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v12 = [v11 sharedResourcesForSourceName:self[1]];
          v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v26;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v26 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v25 + 1) + 8 * j);
                v18 = [v11 shareDirectionForSharedResource:v17];
                v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) == 2;
                if (!people)
                {
                  v19 = v18 != 2;
                }

                if (v19)
                {
                  [self addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v14);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)_locKeyForResources:(void *)resources withDescriptorKey:
{
  v40[2] = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (self)
  {
    v6 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:a2];
    allKeys = [v6 allKeys];
    v8 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

    if ([v6 count] == 1)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v6 objectForKeyedSubscript:v9];
      v11 = [v10 count];
      v12 = @"MULTIPLE";
      if (v11 == 1)
      {
        v12 = @"SINGLE";
      }

      v13 = v12;

      v14 = MEMORY[0x277CCACA8];
      v40[0] = v13;
      v40[1] = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v16 = [v15 componentsJoinedByString:@"_"];
      v17 = [v14 stringWithFormat:resourcesCopy, v16];
    }

    else
    {
      if ([v6 count] != 2)
      {
        v31 = DSLogSourceDescriptor;
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
        {
          v36 = 138543362;
          v37 = v8;
          OUTLINED_FUNCTION_5(&dword_248C40000, v31, v32, "More than 2 resource types are not supported: %{public}@", &v36);
        }

        v17 = 0;
        goto LABEL_18;
      }

      v18 = [v8 objectAtIndexedSubscript:0];
      v19 = [v6 objectForKeyedSubscript:v18];
      v35 = resourcesCopy;
      if ([v19 count] == 1)
      {
        v20 = @"SINGLE";
      }

      else
      {
        v20 = @"MULTIPLE";
      }

      v39[0] = v20;
      v21 = [v8 objectAtIndexedSubscript:1];
      v22 = [v6 objectForKeyedSubscript:v21];
      if ([v22 count] == 1)
      {
        v23 = @"SINGLE";
      }

      else
      {
        v23 = @"MULTIPLE";
      }

      v39[1] = v23;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

      v24 = MEMORY[0x277CCACA8];
      v25 = [v9 objectAtIndexedSubscript:0];
      v38[0] = v25;
      v26 = [v8 objectAtIndexedSubscript:0];
      v38[1] = v26;
      v27 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
      v38[2] = v27;
      v28 = [v8 objectAtIndexedSubscript:1];
      v38[3] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
      v30 = [v29 componentsJoinedByString:@"_"];
      v17 = [v24 stringWithFormat:v35, v30];

      resourcesCopy = v35;
    }

LABEL_18:
    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

  v33 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)localizedStopByTypeSubtitleForSharingType:(id)type
{
  v29 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [MEMORY[0x277CBEB58] set];
  objc_claimAutoreleasedReturnValue();
  *&v6 = OUTLINED_FUNCTION_23();
  *(&v24 + 1) = *(&v6 + 1);
  v25 = v6;
  v26 = v6;
  v27 = v6;
  allPeople = [typeCopy allPeople];
  v8 = [allPeople countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(allPeople);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v13 = [*(*(&v24 + 1) + 8 * v11) sharedResourcesForSourceName:sourceName];
        [v3 unionSet:v13];

        ++v11;
      }

      while (v9 != v11);
      v16 = OUTLINED_FUNCTION_26(v14, v15, &v24, v28);
      v9 = v16;
    }

    while (v16);
  }

  v17 = [(DSSourceDescriptor *)self _locKeyForResources:v3 withDescriptorKey:@"STOP_BY_TYPE_SUBTITLE_%@"];
  if (v17)
  {
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v22 = localizationBundle;
    v23 = [(DSSourceDescriptor *)self localizableKey:v17];
    v18 = [(NSBundle *)v22 localizedStringForKey:v23 value:&stru_285B9D7E0 table:0];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)initWithSourceName:(uint64_t)a1 localizationBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSSourceDescriptor.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"sourceName.length"}];
}

+ (void)sourceDescriptorForSource:(uint64_t)a1 localizationBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSSourceDescriptor.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"cached"}];
}

- (void)localizedAppName
{
  if (self)
  {
    v6 = self[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(DSSourceDescriptor *)self localizableKey:?];
  *a2 = v8;
  *a3 = [v7 localizedStringForKey:v8 value:&stru_285B9D7E0 table:0];
}

@end