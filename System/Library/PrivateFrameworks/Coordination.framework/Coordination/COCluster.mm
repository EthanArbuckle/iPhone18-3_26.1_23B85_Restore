@interface COCluster
+ (COCluster)activityGroupCluster;
+ (COCluster)clusterWithConfiguration:(id)configuration;
+ (COCluster)dynamicGroupCluster;
+ (COCluster)homeCluster;
+ (COCluster)pairCluster;
+ (id)_allowedClusterClasses;
+ (id)_clusterForCluster:(id)cluster;
+ (id)_createTemplateFromConfiguration:(id)configuration;
+ (id)_homeClusterForHomeKitHomeIdentifier:(id)identifier;
+ (id)clusterNameWithHomeKitHome:(id)home;
+ (id)homeClusterForHomeKitHome:(id)home;
+ (id)inferClusterLabelFromCluster:(id)cluster;
- (BOOL)_isEqualToCluster:(id)cluster;
- (BOOL)isEqual:(id)equal;
- (COCluster)initWithCoder:(id)coder;
- (id)_initWithConfiguration:(id)configuration format:(id)format label:(id)label;
- (id)description;
- (unint64_t)hash;
- (void)_invokeUpdateHandler;
- (void)_updateIdentifier;
- (void)_withLock:(id)lock;
- (void)activate:(id)activate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COCluster

- (id)_initWithConfiguration:(id)configuration format:(id)format label:(id)label
{
  configurationCopy = configuration;
  formatCopy = format;
  labelCopy = label;
  v19.receiver = self;
  v19.super_class = COCluster;
  v12 = [(COCluster *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_configuration, configuration);
    v14 = [formatCopy copy];
    format = v13->_format;
    v13->_format = v14;

    v16 = [labelCopy copy];
    label = v13->_label;
    v13->_label = v16;
  }

  return v13;
}

+ (COCluster)clusterWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self _createTemplateFromConfiguration:configurationCopy];
  v6 = [self alloc];
  prefix = [configurationCopy prefix];
  v8 = [v6 _initWithConfiguration:configurationCopy format:v5 label:prefix];

  return v8;
}

+ (COCluster)homeCluster
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COCluster_homeCluster__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (homeCluster_onceToken != -1)
  {
    dispatch_once(&homeCluster_onceToken, block);
  }

  v2 = homeCluster_cluster;

  return v2;
}

void __24__COCluster_homeCluster__block_invoke(uint64_t a1)
{
  v5 = +[_COClusterRealmHome realmForCurrent];
  v2 = [COClusterConfiguration configurationWithDomain:@"COClusterHome" requiredServices:15 options:1 realm:v5];
  v3 = [objc_alloc(*(a1 + 32)) _initWithConfiguration:v2 format:@"com.apple.%@-home-mesh" label:@"COClusterHome"];
  v4 = homeCluster_cluster;
  homeCluster_cluster = v3;
}

+ (COCluster)pairCluster
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COCluster_pairCluster__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (pairCluster_onceToken != -1)
  {
    dispatch_once(&pairCluster_onceToken, block);
  }

  v2 = pairCluster_cluster;

  return v2;
}

void __24__COCluster_pairCluster__block_invoke(uint64_t a1)
{
  v5 = +[_COClusterRealmPair realmForCurrent];
  v2 = [COClusterConfiguration configurationWithDomain:@"COClusterPair" requiredServices:15 options:1 realm:v5];
  v3 = [objc_alloc(*(a1 + 32)) _initWithConfiguration:v2 format:@"com.apple.%@-media-system-mesh" label:@"COClusterPair"];
  v4 = pairCluster_cluster;
  pairCluster_cluster = v3;
}

+ (COCluster)activityGroupCluster
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__COCluster_activityGroupCluster__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (activityGroupCluster_onceToken != -1)
  {
    dispatch_once(&activityGroupCluster_onceToken, block);
  }

  v2 = activityGroupCluster_cluster;

  return v2;
}

void __33__COCluster_activityGroupCluster__block_invoke(uint64_t a1)
{
  v6 = +[_COClusterRealmActivityGroup realmForCurrent];
  v2 = [COClusterConfiguration configurationWithDomain:@"COClusterActivityGroup" requiredServices:15 options:1 realm:v6];
  v3 = [*(a1 + 32) _createTemplateFromConfiguration:v2];
  v4 = [objc_alloc(*(a1 + 32)) _initWithConfiguration:v2 format:v3 label:@"COClusterActivityGroup"];
  v5 = activityGroupCluster_cluster;
  activityGroupCluster_cluster = v4;
}

+ (COCluster)dynamicGroupCluster
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__COCluster_dynamicGroupCluster__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dynamicGroupCluster_onceToken != -1)
  {
    dispatch_once(&dynamicGroupCluster_onceToken, block);
  }

  v2 = dynamicGroupCluster_cluster;

  return v2;
}

void __32__COCluster_dynamicGroupCluster__block_invoke(uint64_t a1)
{
  v5 = +[_COClusterRealmDynamicGroup realmForCurrent];
  v2 = [COClusterConfiguration configurationWithDomain:@"COClusterDynamicGroup" requiredServices:15 options:1 realm:v5];
  v3 = [objc_alloc(*(a1 + 32)) _initWithConfiguration:v2 format:@"com.apple.dynamic-group-mesh-%@" label:@"COClusterDynamicGroup"];
  v4 = dynamicGroupCluster_cluster;
  dynamicGroupCluster_cluster = v3;
}

+ (id)_homeClusterForHomeKitHomeIdentifier:(id)identifier
{
  v4 = [_COClusterRealmHome realmWithHomeKitHomeIdentifier:identifier];
  v5 = [COClusterConfiguration configurationWithDomain:@"COClusterHome" requiredServices:15 options:1 realm:v4];
  v6 = [[self alloc] _initWithConfiguration:v5 format:@"com.apple.%@-home-mesh" label:@"COClusterHome"];

  return v6;
}

+ (id)homeClusterForHomeKitHome:(id)home
{
  uniqueIdentifier = [home uniqueIdentifier];
  v5 = [self homeClusterForHomeKitHomeUniqueIdentifier:uniqueIdentifier];

  return v5;
}

- (COCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] == 1)
  {
    selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    if (selfCopy)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (([v6 componentsSeparatedByString:@"%@"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 == 2) ? (v11 = v7 == 0) : (v11 = 1), v11))
    {

      v12 = 0;
    }

    else
    {
      v12 = [(COCluster *)self _initWithConfiguration:selfCopy format:v6 label:v7];
    }
  }

  else
  {
    v12 = 0;
    selfCopy = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  configuration = [(COCluster *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  format = [(COCluster *)self format];
  [coderCopy encodeObject:format forKey:@"format"];

  label = [(COCluster *)self label];
  [coderCopy encodeObject:label forKey:@"label"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(COCluster *)self identifier];
  label = [(COCluster *)self label];
  configuration = [(COCluster *)self configuration];
  v9 = [v3 stringWithFormat:@"<%@: %p, i(%@), l(%@), c(%@)>", v5, self, identifier, label, configuration];

  return v9;
}

- (unint64_t)hash
{
  configuration = [(COCluster *)self configuration];
  v3 = [configuration hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(COCluster *)self _isEqualToCluster:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)_isEqualToCluster:(id)cluster
{
  clusterCopy = cluster;
  configuration = [(COCluster *)self configuration];
  configuration2 = [clusterCopy configuration];
  if ([configuration isEqual:configuration2])
  {
    format = [(COCluster *)self format];
    format2 = [clusterCopy format];
    if ([format isEqual:format2])
    {
      label = [(COCluster *)self label];
      label2 = [clusterCopy label];
      v11 = [label isEqual:label2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_createTemplateFromConfiguration:(id)configuration
{
  v13[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  realm = [configurationCopy realm];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = @"%@";
  if ((isKindOfClass & 1) == 0)
  {
    prefix = [configurationCopy prefix];
    v13[0] = prefix;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lX", objc_msgSend(configurationCopy, "requiredServices")];
    v13[1] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lX", objc_msgSend(configurationCopy, "options")];
    v13[2] = v9;
    v13[3] = @"%@";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];

    v6 = [v10 componentsJoinedByString:@"."];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_updateIdentifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__COCluster__updateIdentifier__block_invoke;
  v3[3] = &unk_278E12560;
  v3[4] = self;
  v3[5] = &v4;
  [(COCluster *)self _withLock:v3];
  if ((v5[3] & 1) != 0 || ![(COCluster *)self updateHandlerInvoked])
  {
    [(COCluster *)self _invokeUpdateHandler];
  }

  _Block_object_dispose(&v4, 8);
}

void __30__COCluster__updateIdentifier__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 realm];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 32) format];
    v8 = [v6 stringWithFormat:v7, v5];

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!v2)
    {
LABEL_6:
      if (!v8 || ([v8 isEqual:v2] & 1) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  if ([v2 isEqual:v8])
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = COLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 134218498;
    v16 = v10;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p cluster identifier changing to %@ from %@", buf, 0x20u);
  }

  v11 = [v8 copy];
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = v11;

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __22__COCluster_activate___block_invoke;
    v10[3] = &unk_278E121C0;
    v10[4] = self;
    v11 = activateCopy;
    [(COCluster *)self _withLock:v10];
    objc_initWeak(&location, self);
    configuration = [(COCluster *)self configuration];
    realm = [configuration realm];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __22__COCluster_activate___block_invoke_53;
    v7[3] = &unk_278E12588;
    objc_copyWeak(&v8, &location);
    [realm activate:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __22__COCluster_activate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = COLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 134218242;
    v11 = v3;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_244328000, v2, OS_LOG_TYPE_DEFAULT, "%p cluster activating %@", &v10, 0x16u);
  }

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  *(*(a1 + 32) + 12) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

void __22__COCluster_activate___block_invoke_53(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRealmUpdate:v5];
  }
}

- (void)_invokeUpdateHandler
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__55;
  v8 = __Block_byref_object_dispose__56;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__COCluster__invokeUpdateHandler__block_invoke;
  v3[3] = &unk_278E12258;
  v3[4] = self;
  v3[5] = &v10;
  v3[6] = &v4;
  [(COCluster *)self _withLock:v3];
  v2 = v11[5];
  if (v2)
  {
    (*(v2 + 16))(v2, v5[5]);
  }

  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

void __33__COCluster__invokeUpdateHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateHandler];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) identifier];
  v6 = [v5 copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(a1 + 32) + 12) = 1;
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)_clusterForCluster:(id)cluster
{
  v29 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  if (!+[COFeatureStatus isCOClusterEnabled])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      v5 = 0;
      goto LABEL_23;
    }

    homeCluster2 = clusterCopy;
    goto LABEL_22;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = clusterCopy;
    if (v5)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = clusterCopy;
    if ([@"COClusterHome" isEqual:v7])
    {
      homeCluster = [self homeCluster];
    }

    else if ([@"COClusterPair" isEqualToString:v7])
    {
      homeCluster = [self pairCluster];
    }

    else if ([@"COClusterActivityGroup" isEqualToString:v7])
    {
      homeCluster = [self activityGroupCluster];
    }

    else
    {
      if (![@"COClusterDynamicGroup" isEqualToString:v7])
      {
        v22 = 0;
        v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"com.apple.([0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})-home-mesh" options:0 error:&v22];
        v13 = v22;
        v5 = 0;
        if (!v13)
        {
          v14 = [v12 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
          v5 = 0;
          if ([v14 numberOfRanges] == 2)
          {
            v15 = [v14 rangeAtIndex:1];
            v21 = [v7 substringWithRange:{v15, v16}];
            v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v21];
            v20 = [_COClusterRealmHome realmWithHomeKitHomeIdentifier:v17];
            v18 = [COClusterConfiguration configurationWithDomain:@"COClusterHome" requiredServices:15 options:1 realm:?];
            v5 = [[self alloc] _initWithConfiguration:v18 format:@"com.apple.%@-home-mesh" label:@"COClusterHome"];
            v19 = COLogForCategory(7);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              selfCopy = self;
              v25 = 2112;
              v26 = v17;
              v27 = 2112;
              v28 = v7;
              _os_log_impl(&dword_244328000, v19, OS_LOG_TYPE_DEFAULT, "Created legacy Home cluster %p using %@ from %@", buf, 0x20u);
            }
          }
        }

LABEL_18:
        if (v5)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      homeCluster = [self dynamicGroupCluster];
    }

    v5 = homeCluster;
    goto LABEL_18;
  }

LABEL_19:
  v9 = COLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(COCluster *)clusterCopy _clusterForCluster:v9];
  }

  homeCluster2 = [self homeCluster];
LABEL_22:
  v5 = homeCluster2;
LABEL_23:

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_allowedClusterClasses
{
  if (_allowedClusterClasses_onceToken != -1)
  {
    +[COCluster _allowedClusterClasses];
  }

  v3 = _allowedClusterClasses_allowedClasses;

  return v3;
}

uint64_t __35__COCluster__allowedClusterClasses__block_invoke()
{
  v0 = +[COFeatureStatus isCOClusterEnabled];
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = off_278E11F78;
  if (!v0)
  {
    v2 = 0x277CCACA8;
  }

  v3 = *v2;
  _allowedClusterClasses_allowedClasses = [v1 initWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)inferClusterLabelFromCluster:(id)cluster
{
  clusterCopy = cluster;
  v4 = clusterCopy;
  if (clusterCopy == @"COClusterDynamicGroup" || clusterCopy == @"COClusterActivityGroup" || clusterCopy == @"COClusterHome" || clusterCopy == @"COClusterPair")
  {
    v9 = clusterCopy;
    goto LABEL_30;
  }

  v16 = 0;
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"com.apple.(?:(?:(?:[A-F0-9\\-]+)-(?:([a-z\\-]+)(?:-mesh)))|(?:(activity-group-mesh-[a-z-]+)(?:-[A-F0-9-]+))|(?:(dynamic-group-mesh-[a-z-]+)(?:-[A-F0-9-]+)))" options:0 error:&v16];
  if (!v16)
  {
    v10 = [v8 matchesInString:v4 options:0 range:{0, -[__CFString length](v4, "length")}];
    if (![v10 count])
    {
      v9 = v4;
LABEL_28:

      goto LABEL_29;
    }

    firstObject = [v10 firstObject];
    v12 = [firstObject rangeAtIndex:1];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    v14 = [(__CFString *)v4 substringWithRange:v12, v13];
    if ([v14 isEqualToString:@"home"])
    {
      v9 = @"COClusterHome";
    }

    else
    {
      if (![v14 isEqualToString:@"media-system"])
      {

LABEL_16:
        if ([firstObject rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([firstObject rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = v4;
          }

          else
          {
            v9 = @"COClusterDynamicGroup";
          }
        }

        else
        {
          v9 = @"COClusterActivityGroup";
        }

        goto LABEL_27;
      }

      v9 = @"COClusterPair";
    }

LABEL_27:
    goto LABEL_28;
  }

  v9 = v4;
LABEL_29:

LABEL_30:

  return v9;
}

+ (id)clusterNameWithHomeKitHome:(id)home
{
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@-home-mesh", uUIDString];

  return v5;
}

+ (void)_clusterForCluster:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_244328000, a2, OS_LOG_TYPE_ERROR, "Failed to identify cluster for %@, falling back", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end