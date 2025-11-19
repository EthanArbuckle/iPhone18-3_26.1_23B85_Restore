@interface COCluster
+ (COCluster)activityGroupCluster;
+ (COCluster)clusterWithConfiguration:(id)a3;
+ (COCluster)dynamicGroupCluster;
+ (COCluster)homeCluster;
+ (COCluster)pairCluster;
+ (id)_allowedClusterClasses;
+ (id)_clusterForCluster:(id)a3;
+ (id)_createTemplateFromConfiguration:(id)a3;
+ (id)_homeClusterForHomeKitHomeIdentifier:(id)a3;
+ (id)clusterNameWithHomeKitHome:(id)a3;
+ (id)homeClusterForHomeKitHome:(id)a3;
+ (id)inferClusterLabelFromCluster:(id)a3;
- (BOOL)_isEqualToCluster:(id)a3;
- (BOOL)isEqual:(id)a3;
- (COCluster)initWithCoder:(id)a3;
- (id)_initWithConfiguration:(id)a3 format:(id)a4 label:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)_invokeUpdateHandler;
- (void)_updateIdentifier;
- (void)_withLock:(id)a3;
- (void)activate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COCluster

- (id)_initWithConfiguration:(id)a3 format:(id)a4 label:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = COCluster;
  v12 = [(COCluster *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_configuration, a3);
    v14 = [v10 copy];
    format = v13->_format;
    v13->_format = v14;

    v16 = [v11 copy];
    label = v13->_label;
    v13->_label = v16;
  }

  return v13;
}

+ (COCluster)clusterWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [a1 _createTemplateFromConfiguration:v4];
  v6 = [a1 alloc];
  v7 = [v4 prefix];
  v8 = [v6 _initWithConfiguration:v4 format:v5 label:v7];

  return v8;
}

+ (COCluster)homeCluster
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COCluster_homeCluster__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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

+ (id)_homeClusterForHomeKitHomeIdentifier:(id)a3
{
  v4 = [_COClusterRealmHome realmWithHomeKitHomeIdentifier:a3];
  v5 = [COClusterConfiguration configurationWithDomain:@"COClusterHome" requiredServices:15 options:1 realm:v4];
  v6 = [[a1 alloc] _initWithConfiguration:v5 format:@"com.apple.%@-home-mesh" label:@"COClusterHome"];

  return v6;
}

+ (id)homeClusterForHomeKitHome:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [a1 homeClusterForHomeKitHomeUniqueIdentifier:v4];

  return v5;
}

- (COCluster)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] == 1)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    if (v5)
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
      v12 = [(COCluster *)self _initWithConfiguration:v5 format:v6 label:v7];
    }
  }

  else
  {
    v12 = 0;
    v5 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"version"];
  v5 = [(COCluster *)self configuration];
  [v4 encodeObject:v5 forKey:@"configuration"];

  v6 = [(COCluster *)self format];
  [v4 encodeObject:v6 forKey:@"format"];

  v7 = [(COCluster *)self label];
  [v4 encodeObject:v7 forKey:@"label"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COCluster *)self identifier];
  v7 = [(COCluster *)self label];
  v8 = [(COCluster *)self configuration];
  v9 = [v3 stringWithFormat:@"<%@: %p, i(%@), l(%@), c(%@)>", v5, self, v6, v7, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(COCluster *)self configuration];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)_isEqualToCluster:(id)a3
{
  v4 = a3;
  v5 = [(COCluster *)self configuration];
  v6 = [v4 configuration];
  if ([v5 isEqual:v6])
  {
    v7 = [(COCluster *)self format];
    v8 = [v4 format];
    if ([v7 isEqual:v8])
    {
      v9 = [(COCluster *)self label];
      v10 = [v4 label];
      v11 = [v9 isEqual:v10];
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

+ (id)_createTemplateFromConfiguration:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 realm];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = @"%@";
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v3 prefix];
    v13[0] = v7;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lX", objc_msgSend(v3, "requiredServices")];
    v13[1] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lX", objc_msgSend(v3, "options")];
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

- (void)activate:(id)a3
{
  v4 = a3;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __22__COCluster_activate___block_invoke;
    v10[3] = &unk_278E121C0;
    v10[4] = self;
    v11 = v4;
    [(COCluster *)self _withLock:v10];
    objc_initWeak(&location, self);
    v5 = [(COCluster *)self configuration];
    v6 = [v5 realm];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __22__COCluster_activate___block_invoke_53;
    v7[3] = &unk_278E12588;
    objc_copyWeak(&v8, &location);
    [v6 activate:v7];

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

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)_clusterForCluster:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    v6 = v4;
    goto LABEL_22;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    if ([@"COClusterHome" isEqual:v7])
    {
      v8 = [a1 homeCluster];
    }

    else if ([@"COClusterPair" isEqualToString:v7])
    {
      v8 = [a1 pairCluster];
    }

    else if ([@"COClusterActivityGroup" isEqualToString:v7])
    {
      v8 = [a1 activityGroupCluster];
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
            v5 = [[a1 alloc] _initWithConfiguration:v18 format:@"com.apple.%@-home-mesh" label:@"COClusterHome"];
            v19 = COLogForCategory(7);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v24 = a1;
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

      v8 = [a1 dynamicGroupCluster];
    }

    v5 = v8;
    goto LABEL_18;
  }

LABEL_19:
  v9 = COLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(COCluster *)v4 _clusterForCluster:v9];
  }

  v6 = [a1 homeCluster];
LABEL_22:
  v5 = v6;
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

+ (id)inferClusterLabelFromCluster:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == @"COClusterDynamicGroup" || v3 == @"COClusterActivityGroup" || v3 == @"COClusterHome" || v3 == @"COClusterPair")
  {
    v9 = v3;
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

    v11 = [v10 firstObject];
    v12 = [v11 rangeAtIndex:1];
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
        if ([v11 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v11 rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
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

+ (id)clusterNameWithHomeKitHome:(id)a3
{
  v3 = [a3 uniqueIdentifier];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@-home-mesh", v4];

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