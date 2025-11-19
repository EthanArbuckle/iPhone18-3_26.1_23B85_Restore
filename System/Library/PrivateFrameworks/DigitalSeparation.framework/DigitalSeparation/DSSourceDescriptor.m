@interface DSSourceDescriptor
+ (id)descriptorCache;
+ (id)sourceDescriptorForSource:(id)a3;
+ (id)sourceDescriptorForSource:(id)a3 localizationBundle:(id)a4;
+ (void)initialize;
+ (void)setDescriptorCache:(uint64_t)a1;
- (BOOL)requiresCellular;
- (BOOL)requiresWifi;
- (BOOL)shouldIgnoreError:(id)a3;
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
- (__CFString)namedValueForLocKey:(uint64_t)a1;
- (__CFString)resourceTypeFromResource:(uint64_t)a1;
- (id)_locKeyForResources:(void *)a3 withDescriptorKey:;
- (id)_localizedStopByPerson:(void *)a3 detailTextForDirectlySharedResources:(void *)a4 isBlocking:;
- (id)_localizedStopByPerson:(void *)a3 detailTextForIndirectlySharedResources:(void *)a4 isBlocking:;
- (id)attributedStopByPerson:(uint64_t)a3 direction:(void *)a4 format:(void *)a5 namedResourceList:(int)a6 isBlocking:;
- (id)localizedAlertDetailForSelectedPeople:(id)a3;
- (id)localizedAlertTextForPerson:(id)a3;
- (id)localizedDetailTextByType:(id)a3;
- (id)localizedNameListForResources:(uint64_t)a1;
- (id)localizedPublicSharingDetailTextByType:(id)a3;
- (id)localizedResourceNamesForPerson:(id)a3;
- (id)localizedStopAllAlertDetailForPeople:(id)a3;
- (id)localizedStopByTypeSubtitleForSharingType:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)orderedResourceTypes:(id)a1;
- (id)peopleByResourceType:(uint64_t)a1;
- (id)resourceTypeOrder;
- (id)sharedResourcesByResourceType:(uint64_t)a1;
- (id)stopByPerson:(uint64_t)a3 direction:(void *)a4 format:(void *)a5 namedResources:(int)a6 isBlocking:;
- (id)stopByPersonLocKey:(void *)a3 resourceTypes:(char)a4 isBlocking:;
- (int64_t)priority;
- (uint64_t)initWithSourceName:(void *)a3 localizationBundle:;
- (uint64_t)localizationBundle;
- (uint64_t)sourceName;
- (uint64_t)sourceProperties;
- (void)_localizedStopByPerson:(void *)a3 isBlocking:;
- (void)_sharedResourcesForPeople:(int)a3 isOwnedByUser:;
- (void)localizableKey:(void *)a1;
- (void)localizedAppName;
- (void)setLocalizationBundle:(uint64_t)a1;
- (void)setSourceName:(uint64_t)a1;
- (void)setSourceProperties:(uint64_t)a1;
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

+ (void)setDescriptorCache:(uint64_t)a1
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
  if (objc_opt_class() == a1)
  {
    DSLogSourceDescriptor = os_log_create("com.apple.DigitalSeparation", "DSSourceDescriptor");

    MEMORY[0x2821F96F8]();
  }
}

- (uint64_t)initWithSourceName:(void *)a3 localizationBundle:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (![v6 length])
    {
      [DSSourceDescriptor initWithSourceName:a1 localizationBundle:?];
    }

    if (![v6 length])
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"No source name provided" userInfo:0];
      objc_exception_throw(v13);
    }

    v14.receiver = a1;
    v14.super_class = DSSourceDescriptor;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong((a1 + 16), a3);
      v9 = [*(a1 + 16) URLForResource:@"SourceDescriptors" withExtension:@"plist"];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9];
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;
    }
  }

  return a1;
}

+ (id)sourceDescriptorForSource:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 dssd_bundleForSourceDescriptor];
  v7 = [a1 sourceDescriptorForSource:v5 localizationBundle:v6];

  return v7;
}

+ (id)sourceDescriptorForSource:(id)a3 localizationBundle:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&kDescriptorCacheLock);
  v9 = +[DSSourceDescriptor descriptorCache];
  v10 = [v9 objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&kDescriptorCacheLock);
  if (!v10)
  {
    v10 = [[DSSourceDescriptor alloc] initWithSourceName:v7 localizationBundle:v8];
    if (v10)
    {
      if (v7)
      {
        os_unfair_lock_lock(&kDescriptorCacheLock);
        v11 = +[DSSourceDescriptor descriptorCache];
        [v11 setObject:v10 forKeyedSubscript:v7];

        os_unfair_lock_unlock(&kDescriptorCacheLock);
        goto LABEL_5;
      }
    }

    else
    {
      [DSSourceDescriptor sourceDescriptorForSource:a2 localizationBundle:a1];
    }

    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CCA5A0];
    v20[0] = @"sourceName";
    v20[1] = @"localizationBundle";
    v21[0] = v7;
    v21[1] = v8;
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
  v3 = [(DSSourceDescriptor *)self correspondingApplicationIdentifier];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      [(DSSourceDescriptor *)self localizedAppName];
      goto LABEL_9;
    }

    v6 = [v4 localizedName];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  [(DSSourceDescriptor *)self localizedAppName];
  v5 = v9;
LABEL_9:
  v6 = v10;

LABEL_4:

  return v6;
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
  v7 = [v6 integerValue];

  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
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

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = self;
  if (self)
  {
    v5 = self->_sourceProperties;
    v4 = v4->_sourceName;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:v4];
  v8 = [v7 objectForKeyedSubscript:v6];

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

- (BOOL)shouldIgnoreError:(id)a3
{
  v4 = a3;
  v5 = [(DSSourceDescriptor *)self ignoreErrors];
  v6 = [v4 domain];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 code];

  v10 = [v8 numberWithInteger:v9];
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
  v8 = [v7 BOOLValue];

  return v8;
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
  v8 = [v7 BOOLValue];

  return v8;
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

- (void)setSourceName:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setLocalizationBundle:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
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

- (void)setSourceProperties:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (__CFString)resourceTypeFromResource:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 displayDetail];
    v4 = @"RESOURCE";
    if (v3)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 8);
      v7 = v5;
      v8 = [v7 objectForKeyedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"RESOURCE_TYPES"];

      v10 = [v9 objectForKeyedSubscript:v3];
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

- (id)sharedResourcesByResourceType:(uint64_t)a1
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v22 = v4;
  if (a1)
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
          v13 = [(DSSourceDescriptor *)a1 resourceTypeFromResource:v12];
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

- (id)peopleByResourceType:(uint64_t)a1
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v21 = v4;
  if (a1)
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
          v9 = [v8 sharedResourcesForSourceName:*(a1 + 8)];
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

                v14 = [(DSSourceDescriptor *)a1 resourceTypeFromResource:?];
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
  if (a1)
  {
    v1 = *(a1 + 8);
    v2 = *(a1 + 24);
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

- (id)orderedResourceTypes:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
    v4 = [(DSSourceDescriptor *)v2 resourceTypeOrder];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__DSSourceDescriptor_orderedResourceTypes___block_invoke;
    v7[3] = &unk_278F72D28;
    v8 = v4;
    v5 = v4;
    [v3 sortUsingComparator:v7];
    v2 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  return v2;
}

- (void)localizableKey:(void *)a1
{
  if (a1)
  {
    a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a1[1], a2];
    v2 = vars8;
  }

  return a1;
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

- (id)localizedAlertDetailForSelectedPeople:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v5;
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
  v16 = [v15 allKeys];
  v17 = [(DSSourceDescriptor *)self orderedResourceTypes:v16];

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
    v24 = [v7 firstObject];
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
    v31 = [v24 termsOfAddress];
    v54 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v56 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6();
    v35 = [v34 initWithFormat:? options:? locale:? context:?];

    v36 = [v35 string];
    LODWORD(v31) = [v36 containsString:@"@"];

    if (v31)
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [v35 string];
      [v24 displayGivenName];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      v39 = [v37 stringWithFormat:v38];
    }

    else
    {
      v39 = [v35 string];
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
    v24 = [(NSBundle *)v42 localizedStringForKey:v43 value:&stru_285B9D7E0 table:0];

    if ([v24 containsString:@"@"])
    {
      v44 = MEMORY[0x277CCACA8];
      v45 = [v7 firstObject];
      v46 = [v45 displayGivenName];
      v39 = [v44 stringWithFormat:v24, v46, objc_msgSend(v7, "count") - 1];
    }

    else
    {
      v24 = v24;
      v39 = v24;
    }

    v17 = v40;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v39;
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

- (id)localizedDetailTextByType:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 allPeople];
  v9 = [MEMORY[0x277CBEB58] set];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v10 = [v7 allPeople];
  v11 = [v10 countByEnumeratingWithState:&v86 objects:v95 count:16];
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
          objc_enumerationMutation(v10);
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

  v18 = [(DSSourceDescriptor *)self peopleByResourceType:v7];
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
      v30 = [v9 anyObject];
      [(DSSourceDescriptor *)self resourceTypeFromResource:v30];
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

      v39 = [v9 anyObject];
      v40 = [v39 displayName];

      if ((v74 & 1) == 0 && [v40 length])
      {
        v41 = v38;
        v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v38, objc_msgSend(v8, "count"), v40];
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
    v40 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v70 = [v18 objectForKeyedSubscript:v40];
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

    v77 = v8;
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

    v8 = v77;
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

- (id)localizedPublicSharingDetailTextByType:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v48 = [a3 allPublicResources];
  v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  v5 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v4];

  v6 = [v5 allKeys];
  v44 = self;
  v7 = [(DSSourceDescriptor *)self orderedResourceTypes:v6];

  v8 = [MEMORY[0x277CBEB18] array];
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
              v18 = [v17 displayName];
              if (!v18 || (v19 = v18, [v17 displayName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, !v21))
              {
                v27 = MEMORY[0x277CCACA8];
                v9 = v49;
                v28 = [v49 componentsJoinedByString:@"_"];
                v29 = [v27 stringWithFormat:@"PUBLIC_SHARING_DETAIL_TEXT_%@", v28];

                if (v44)
                {
                  localizationBundle = v44->_localizationBundle;
                }

                else
                {
                  localizationBundle = 0;
                }

                v5 = v47;
                v31 = localizationBundle;
                v32 = [(DSSourceDescriptor *)v44 localizableKey:v29];
                v33 = [(NSBundle *)v31 localizedStringForKey:v32 value:&stru_285B9D7E0 table:0];

                if ([v47 count] == 1)
                {
                  v26 = v48;
                  v25 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v33, objc_msgSend(v48, "count")];
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

                  v26 = v48;
                }

                goto LABEL_29;
              }

              v22 = MEMORY[0x277CCACA8];
              v23 = DSLocStringForKey(@"RESOURCE_DISPLAY_NAME");
              [v17 displayName];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v22 stringWithFormat:v23];

              [v8 addObject:v24];
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

  v25 = [DSUtilities localizedDetailStringWithTruncationFromArray:v8 withType:@"com.apple.DigitalSeparation.Resources"];
  v26 = v48;
LABEL_29:

  v41 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_localizedStopByPerson:(void *)a3 detailTextForDirectlySharedResources:(void *)a4 isBlocking:
{
  v303[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    v11 = [v9 count];
    if (!v11)
    {
      goto LABEL_3;
    }

    v14 = OUTLINED_FUNCTION_20();
    v16 = [(DSSourceDescriptor *)v14 sharedResourcesByResourceType:v15];
    [v16 allKeys];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_14();
    v272 = [(DSSourceDescriptor *)v17 orderedResourceTypes:v18];

    v19 = [v8 shareDirectionForSourceName:*(a1 + 8)];
    v20 = OUTLINED_FUNCTION_20();
    v22 = [(DSSourceDescriptor *)v20 localizedNameListForResources:v21];
    v23 = v22;
    if ((~v19 & 3) != 0)
    {
      if (v19)
      {
        if (v11 == 1)
        {
          [v10 anyObject];
          objc_claimAutoreleasedReturnValue();
          v37 = OUTLINED_FUNCTION_3_0();
          v38 = [(DSSourceDescriptor *)v37 resourceTypeFromResource:v19];
          v289 = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
          v40 = OUTLINED_FUNCTION_9();
          v27 = [(DSSourceDescriptor *)v40 stopByPersonLocKey:v41 resourceTypes:v42 isBlocking:v43];

          v44 = *(a1 + 16);
          v45 = OUTLINED_FUNCTION_3_0();
          v46 = [(DSSourceDescriptor *)v45 localizableKey:v27];
          v47 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

          v19 = [(DSSourceDescriptor *)a1 namedValueForLocKey:v27];
          if (![v19 length] || !objc_msgSend(v23, "length"))
          {
            v48 = OUTLINED_FUNCTION_4();
            v50 = 1;
LABEL_23:
            v32 = v47;
            v61 = [(DSSourceDescriptor *)v48 attributedStopByPerson:v49 direction:v50 format:v47 namedResourceList:0 isBlocking:a4];
LABEL_61:
            v11 = [v61 string];

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
        v83 = *(a1 + 16);
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
            v89 = [v8 displayGivenName];
            v11 = [v88 localizedStringWithFormat:v268, v11, v89];

            v32 = v268;
LABEL_75:
            v27 = v266;
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_15();
          v11 = [(DSSourceDescriptor *)v203 stopByPerson:v204 direction:v205 format:v206 namedResources:v207 isBlocking:v208];
        }

        else
        {
          v23 = v265;
          if ([v16 count] == 2)
          {
            v258 = [OUTLINED_FUNCTION_2_1(2 v116];
            v123 = [v16 objectForKeyedSubscript:v258];
            v124 = [v123 count];
            [v8 displayGivenName];
            v125 = v263 = v19;
            [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            objc_claimAutoreleasedReturnValue();
            v126 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
            v11 = [v249 localizedStringWithFormat:v270, v124, v125, objc_msgSend(v126, "count")];

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

          v11 = 0;
        }

        v27 = v266;
        v32 = v268;
LABEL_77:

        goto LABEL_10;
      }

      if ((v19 & 2) == 0)
      {
        v11 = 0;
LABEL_10:

        goto LABEL_3;
      }

      if (v11 == 1)
      {
        [v10 anyObject];
        objc_claimAutoreleasedReturnValue();
        v51 = OUTLINED_FUNCTION_3_0();
        v52 = [(DSSourceDescriptor *)v51 resourceTypeFromResource:v19];
        v288 = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v288 count:1];
        v54 = OUTLINED_FUNCTION_9();
        v27 = [(DSSourceDescriptor *)v54 stopByPersonLocKey:v55 resourceTypes:v56 isBlocking:v57];

        v58 = *(a1 + 16);
        v59 = OUTLINED_FUNCTION_3_0();
        v60 = [(DSSourceDescriptor *)v59 localizableKey:v27];
        v47 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

        v19 = [(DSSourceDescriptor *)a1 namedValueForLocKey:v27];
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
      v95 = *(a1 + 16);
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
          if (a4)
          {
            v286 = *MEMORY[0x277CCA290];
            v255 = [v8 termsOfAddress];
            v285 = v255;
            v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v285 count:1];
            v287 = v74;
            v75 = MEMORY[0x277CBEAC0];
            v76 = &v287;
            v77 = &v286;
            goto LABEL_38;
          }

          v283 = *MEMORY[0x277CCA290];
          v255 = [v8 termsOfAddress];
          v282 = v255;
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
        if (a4)
        {
          v127 = v267;
          v128 = [v267 string];
          v129 = [v128 containsString:@"%#"];

          objc_alloc(MEMORY[0x277CCA898]);
          v130 = *MEMORY[0x277CCA290];
          if (v129)
          {
            v280 = *MEMORY[0x277CCA290];
            v250 = [v8 termsOfAddress];
            v279 = v250;
            v242 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
            v281 = v242;
            v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
            v259 = [OUTLINED_FUNCTION_2_1(v131 v132];
            v233 = [v16 objectForKeyedSubscript:?];
            v229 = [v233 count];
            v139 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            v140 = [v16 objectForKeyedSubscript:v139];
            v141 = [v140 count];
            v142 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v144 = [v143 initWithFormat:v229 options:v141 locale:v142 context:?];

            v145 = v243;
            v146 = v237;
          }

          else
          {
            v277 = *MEMORY[0x277CCA290];
            v251 = [v8 termsOfAddress];
            v276 = v251;
            v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v276 count:1];
            v278 = v145;
            v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
            v259 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v144 = [v202 initWithFormat:v259 options:? locale:? context:?];
          }

          v32 = v127;
        }

        else
        {
          v234 = objc_alloc(MEMORY[0x277CCA898]);
          v274 = *MEMORY[0x277CCA290];
          v253 = [v8 termsOfAddress];
          v273 = v253;
          v244 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:1];
          v275 = v244;
          v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
          v189 = [v8 displayGivenName];
          v230 = [OUTLINED_FUNCTION_2_1(v189 v190];
          v197 = [v16 objectForKeyedSubscript:v230];
          v198 = [v197 count];
          v199 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v200 = [v16 objectForKeyedSubscript:v199];
          v223 = v198;
          v226 = [v200 count];
          v259 = v189;
          v32 = v271;
          OUTLINED_FUNCTION_6();
          v144 = [v201 initWithFormat:v189 options:v223 locale:v226 context:?];

          v146 = v239;
          v145 = v245;
        }

        v188 = v251;
        goto LABEL_74;
      }

      v147 = DSLogSourceDescriptor;
      v148 = OUTLINED_FUNCTION_27();
      v32 = v267;
      if (!v148)
      {
LABEL_63:
        v11 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      if (v11 == 1)
      {
        v24 = [v10 anyObject];
        v25 = [(DSSourceDescriptor *)a1 resourceTypeFromResource:v24];
        v303[0] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v303 count:1];
        v27 = [(DSSourceDescriptor *)a1 stopByPersonLocKey:v26 resourceTypes:a4 isBlocking:?];

        v28 = *(a1 + 16);
        v29 = OUTLINED_FUNCTION_3_0();
        v30 = [(DSSourceDescriptor *)v29 localizableKey:v27];
        OUTLINED_FUNCTION_19();
        v32 = [v31 localizedStringForKey:? value:? table:?];

        v19 = [(DSSourceDescriptor *)a1 namedValueForLocKey:v27];
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

        v11 = [(DSSourceDescriptor *)v33 stopByPerson:v34 direction:3 format:v35 namedResources:v36 isBlocking:a4];
        goto LABEL_77;
      }

      v264 = v22;
      v62 = OUTLINED_FUNCTION_11();
      v66 = [(DSSourceDescriptor *)v62 stopByPersonLocKey:v63 resourceTypes:v64 isBlocking:v65];
      v67 = *(a1 + 16);
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
          if (a4)
          {
            v301 = *MEMORY[0x277CCA290];
            v255 = [v8 termsOfAddress];
            v300 = v255;
            v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v300 count:1];
            v302 = v74;
            v75 = MEMORY[0x277CBEAC0];
            v76 = &v302;
            v77 = &v301;
LABEL_38:
            [v75 dictionaryWithObjects:v76 forKeys:v77 count:1];
            objc_claimAutoreleasedReturnValue();
            v101 = [OUTLINED_FUNCTION_7() displayGivenName];
            v218 = v11;
            v221 = v101;
LABEL_67:
            OUTLINED_FUNCTION_6();
            v176 = [v175 initWithFormat:v218 options:v221 locale:? context:?];

LABEL_68:
            v11 = [v176 string];

            v32 = v267;
LABEL_76:
            v19 = v262;
            goto LABEL_77;
          }

          v298 = *MEMORY[0x277CCA290];
          v255 = [v8 termsOfAddress];
          v297 = v255;
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v297 count:1];
          v299 = v74;
          v156 = MEMORY[0x277CBEAC0];
          v157 = &v299;
          v158 = &v298;
LABEL_66:
          [v156 dictionaryWithObjects:v157 forKeys:v158 count:1];
          objc_claimAutoreleasedReturnValue();
          v101 = [OUTLINED_FUNCTION_7() displayGivenName];
          v218 = v101;
          v221 = v11;
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
        if (a4)
        {
          v295 = *MEMORY[0x277CCA290];
          v256 = [v8 termsOfAddress];
          v294 = v256;
          v247 = [MEMORY[0x277CBEA60] arrayWithObjects:&v294 count:1];
          v296 = v247;
          v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
          [OUTLINED_FUNCTION_2_1(v103 v104];
          objc_claimAutoreleasedReturnValue();
          v241 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v111 = [v241 count];
          v236 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v112 = [v16 objectForKeyedSubscript:?];
          [v112 count];
          v113 = [OUTLINED_FUNCTION_7() displayGivenName];
          v222 = v102;
          v225 = v113;
          v219 = v111;
          v114 = a4;
          v115 = v232;
        }

        else
        {
          v292 = *MEMORY[0x277CCA290];
          v260 = [v8 termsOfAddress];
          v291 = v260;
          v252 = [MEMORY[0x277CBEA60] arrayWithObjects:&v291 count:1];
          v293 = v252;
          v177 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
          v178 = [v8 displayGivenName];
          v241 = [OUTLINED_FUNCTION_2_1(v178 v179];
          v236 = [v16 objectForKeyedSubscript:?];
          v186 = [v236 count];
          v115 = v177;
          v112 = [(uint8_t *)v290 objectAtIndexedSubscript:1];
          v113 = [v16 objectForKeyedSubscript:v112];
          v222 = v186;
          v225 = [v113 count];
          v114 = v178;
          v219 = v178;
        }

        v32 = v269;
        OUTLINED_FUNCTION_6();
        v144 = [v187 initWithFormat:v219 options:v222 locale:v225 context:?];

        v188 = v257;
LABEL_74:

        v11 = [v144 string];

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

  v11 = 0;
LABEL_3:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)localizedNameListForResources:(uint64_t)a1
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [DSSourceDescriptor sourceDescriptorForSource:*(a1 + 8)];
    v36 = [v5 localizedAppName];

    v6 = [(DSSourceDescriptor *)a1 sharedResourcesByResourceType:v3];
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
            v12 = [v11 displayName];
            if (![v12 length])
            {

LABEL_21:
              v22 = 0;
              v6 = v33;
              v3 = v34;
              goto LABEL_28;
            }

            v13 = [v11 displayName];
            v14 = [DSUtilities isString:v13 likeString:v36];

            if (v14)
            {
              goto LABEL_21;
            }

            v15 = [v4 count];
            v16 = MEMORY[0x277CCACA8];
            if (v15 == 2)
            {
              v6 = v33;
              v23 = [v33 allKeys];
              [v23 objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v16 stringWithFormat:@"%@_NAME_TRUNCATION"];

              v25 = *(a1 + 16);
              v26 = [(DSSourceDescriptor *)a1 localizableKey:v24];
              v27 = [v25 localizedStringForKey:v26 value:&stru_285B9D7E0 table:0];

              v28 = [(DSSourceDescriptor *)a1 localizableKey:v24];
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

                [v4 addObject:v30];
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
            [v4 addObject:v18];
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

      v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v4];
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

- (id)stopByPersonLocKey:(void *)a3 resourceTypes:(char)a4 isBlocking:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    v10 = MEMORY[0x277CCACA8];
    if ([v8 count] == 1)
    {
      [v9 firstObject];
    }

    else
    {
      [v9 componentsJoinedByString:@"_"];
    }
    v11 = ;
    v12 = [v10 stringWithFormat:v7, v11];

    if (a4)
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

- (__CFString)namedValueForLocKey:(uint64_t)a1
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a2, @"WITH_NAME"];
    v4 = [(DSSourceDescriptor *)a1 localizableKey:v3];

    v5 = [*(a1 + 16) localizedStringForKey:v4 value:&stru_285B9D7E0 table:0];
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

- (id)stopByPerson:(uint64_t)a3 direction:(void *)a4 format:(void *)a5 namedResources:(int)a6 isBlocking:
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [v11 displayGivenName];
      a1 = v16;
      if (a3 == 1 || !a6)
      {
        v21 = v16;
        v22 = v14;
      }

      else
      {
        v21 = v14;
        v22 = v16;
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

    v19 = [v18 localizedStringWithFormat:v12, v21, v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)attributedStopByPerson:(uint64_t)a3 direction:(void *)a4 format:(void *)a5 namedResourceList:(int)a6 isBlocking:
{
  v35[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (a1)
  {
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CCA898]);
      v17 = *MEMORY[0x277CCA290];
      if (a3 != 1 && a6)
      {
        v34 = *MEMORY[0x277CCA290];
        v18 = [v12 termsOfAddress];
        v33 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v35[0] = v19;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        objc_claimAutoreleasedReturnValue();
        v20 = [OUTLINED_FUNCTION_7() displayGivenName];
        v26 = v15;
LABEL_9:
        OUTLINED_FUNCTION_6();
        a1 = [v23 initWithFormat:v26 options:? locale:? context:?];

        goto LABEL_10;
      }

      v31 = *MEMORY[0x277CCA290];
      v18 = [v12 termsOfAddress];
      v30 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v32 = v19;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_7() displayGivenName];
      v20 = v22;
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA898]);
      v28 = *MEMORY[0x277CCA290];
      v18 = [v12 termsOfAddress];
      v27 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v29 = v19;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_7() displayGivenName];
      v20 = v22;
    }

    v26 = v22;
    goto LABEL_9;
  }

LABEL_10:

  v24 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)_localizedStopByPerson:(void *)a3 detailTextForIndirectlySharedResources:(void *)a4 isBlocking:
{
  v61[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    v11 = [v9 count];
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
      v22 = 1;
    }

    else
    {
      v22 = a4;
    }

    if (v11 == 1 && v22)
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
      v31 = [(DSSourceDescriptor *)a1 stopByPersonLocKey:v19 resourceTypes:a4 isBlocking:?];
    }

    v32 = *(a1 + 16);
    v33 = [(DSSourceDescriptor *)a1 localizableKey:v31];
    OUTLINED_FUNCTION_19();
    v35 = [v34 localizedStringForKey:? value:? table:?];

    v36 = [(DSSourceDescriptor *)a1 namedValueForLocKey:v31];
    if ([v16 count] != 1)
    {
      if ([v16 count] == 2)
      {
        v56 = MEMORY[0x277CCACA8];
        if (a4)
        {
          v54 = [v57 objectAtIndexedSubscript:0];
          v52 = [v16 objectForKeyedSubscript:v54];
          v51 = [v52 count];
          [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          objc_claimAutoreleasedReturnValue();
          v40 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v41 = [v40 count];
          v42 = [v8 displayGivenName];
          v11 = [v56 localizedStringWithFormat:v35, v51, v41, v42];
        }

        else
        {
          v45 = [v8 displayGivenName];
          v55 = [v57 objectAtIndexedSubscript:0];
          v53 = [v16 objectForKeyedSubscript:v55];
          v46 = [v53 count];
          [v57 objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          v47 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v11 = [v56 localizedStringWithFormat:v35, v45, v46, objc_msgSend(v47, "count")];
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
      v11 = [(DSSourceDescriptor *)v48 stopByPerson:v49 direction:4 format:v36 namedResources:v58 isBlocking:a4];
      goto LABEL_29;
    }

    v37 = MEMORY[0x277CCACA8];
    v38 = [v8 displayGivenName];
    v39 = v38;
    if (a4)
    {
      if (v11 != 1)
      {
        [v37 localizedStringWithFormat:v35, v11, v38];
        v11 = LABEL_27:;

LABEL_29:
        goto LABEL_3;
      }
    }

    else
    {
      v50 = v11;
    }

    [v37 localizedStringWithFormat:v35, v38, v50];
    goto LABEL_27;
  }

  v11 = 0;
LABEL_3:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_localizedStopByPerson:(void *)a3 isBlocking:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 sharedResourcesForSourceName:a1[1]];
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

    v19 = [(DSSourceDescriptor *)a1 _localizedStopByPerson:v6 detailTextForDirectlySharedResources:v8 isBlocking:a3];
    v20 = [(DSSourceDescriptor *)a1 _localizedStopByPerson:v6 detailTextForIndirectlySharedResources:v9 isBlocking:a3];
    v21 = [MEMORY[0x277CBEB18] array];
    if (v19)
    {
      [OUTLINED_FUNCTION_24() addObject:?];
    }

    if (v20)
    {
      [v21 addObject:v20];
    }

    a1 = [v21 componentsJoinedByString:{@" ", v24}];
  }

  v22 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)localizedAlertTextForPerson:(id)a3
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
  v7 = a3;
  v8 = [(DSSourceDescriptor *)self localizableKey:?];
  v9 = [(NSBundle *)v6 localizedAttributedStringForKey:v8 value:&stru_285B9D7E0 table:0];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v22 = *MEMORY[0x277CCA290];
  v11 = [v7 termsOfAddress];
  v21 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v23[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v14 = [v7 displayName];
  v15 = [v7 displayName];

  OUTLINED_FUNCTION_6();
  v17 = [v16 initWithFormat:v14 options:v15 locale:? context:?];

  v18 = [v17 string];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)localizedResourceNamesForPerson:(id)a3
{
  if (self)
  {
    sourceName = self->_sourceName;
  }

  else
  {
    sourceName = 0;
  }

  v6 = [a3 sharedResourcesForSourceName:sourceName];
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

- (id)localizedStopAllAlertDetailForPeople:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:v5 isOwnedByUser:1];
  v34 = v7;
  if ([v7 count])
  {
    [v6 addObject:@"OUTGOING"];
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

  v14 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:v5 isOwnedByUser:0];
  if ([v14 count])
  {
    [v6 addObject:@"INCOMING"];
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
  [v6 componentsJoinedByString:@"_"];
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

- (void)_sharedResourcesForPeople:(int)a3 isOwnedByUser:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = v5;
  if (a1)
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
          v12 = [v11 sharedResourcesForSourceName:a1[1]];
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
                if (!a3)
                {
                  v19 = v18 != 2;
                }

                if (v19)
                {
                  [a1 addObject:v17];
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

  return a1;
}

- (id)_locKeyForResources:(void *)a3 withDescriptorKey:
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = [(DSSourceDescriptor *)a1 sharedResourcesByResourceType:a2];
    v7 = [v6 allKeys];
    v8 = [(DSSourceDescriptor *)a1 orderedResourceTypes:v7];

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
      v17 = [v14 stringWithFormat:v5, v16];
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
      v35 = v5;
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

      v5 = v35;
    }

LABEL_18:
    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

  v33 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)localizedStopByTypeSubtitleForSharingType:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [MEMORY[0x277CBEB58] set];
  objc_claimAutoreleasedReturnValue();
  *&v6 = OUTLINED_FUNCTION_23();
  *(&v24 + 1) = *(&v6 + 1);
  v25 = v6;
  v26 = v6;
  v27 = v6;
  v7 = [v5 allPeople];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  if (a1)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(DSSourceDescriptor *)a1 localizableKey:?];
  *a2 = v8;
  *a3 = [v7 localizedStringForKey:v8 value:&stru_285B9D7E0 table:0];
}

@end