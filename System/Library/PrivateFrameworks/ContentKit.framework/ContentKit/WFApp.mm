@interface WFApp
+ (id)allApps;
+ (id)findAppWithBundleIdentifier:(id)a3 name:(id)a4;
- (BOOL)isAvailableInUserFacingContext;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedName;
- (WFApp)initWithBundleIdentifier:(id)a3 displayRepresentation:(id)a4;
- (WFApp)initWithBundleIdentifier:(id)a3 localizedName:(id)a4;
- (WFApp)initWithCoder:(id)a3;
- (WFApp)initWithRecord:(id)a3;
- (id)icon;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFApp

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFApp *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(WFApp *)self localizedName];
  [v4 encodeObject:v6 forKey:@"localizedName"];
}

- (WFApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    self = [(WFApp *)self initWithBundleIdentifier:v5 localizedName:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WFApp *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(WFApp *)self bundleIdentifier];
  v6 = v4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 bundleIdentifier];

  v10 = v5;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (v10 && v11)
    {
      v13 = [v10 isEqual:v11];
    }
  }

  return v13;
}

- (id)icon
{
  v2 = MEMORY[0x277D79FC8];
  v3 = [(WFApp *)self bundleIdentifier];
  v4 = [v2 applicationIconImageForBundleIdentifier:v3 format:2];

  return v4;
}

- (BOOL)isAvailableInUserFacingContext
{
  v3 = [(WFApp *)self bundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x277CC1E70]);
  v5 = [(WFApp *)self bundleIdentifier];
  v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];

  LOBYTE(v5) = [v6 wf_isAvailableInContext:0];
  return v5;
}

- (NSString)localizedName
{
  v3 = [(WFAppDisplayRepresentation *)self->_displayRepresentation title];

  if (v3)
  {
    v4 = [(WFAppDisplayRepresentation *)self->_displayRepresentation title];
  }

  else
  {
    v5 = [(WFApp *)self bundleIdentifier];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CC1E70]);
      v7 = [(WFApp *)self bundleIdentifier];
      v8 = [v6 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

      v4 = [v8 localizedName];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (WFApp)initWithBundleIdentifier:(id)a3 displayRepresentation:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v10 = [(WFApp *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, a3);
    objc_storeStrong(&v11->_displayRepresentation, a4);
    v12 = v11;
  }

  return v11;
}

- (WFApp)initWithBundleIdentifier:(id)a3 localizedName:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v10 = [(WFApp *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, a3);
    if (v9)
    {
      v12 = [WFAppDisplayRepresentation withTitle:v9];
      displayRepresentation = v11->_displayRepresentation;
      v11->_displayRepresentation = v12;
    }

    v14 = v11;
  }

  return v11;
}

- (WFApp)initWithRecord:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v6 = [(WFApp *)self init];
  if (v6)
  {
    v7 = [v5 bundleIdentifier];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = [v5 localizedName];
    v10 = [WFAppDisplayRepresentation withTitle:v9];
    displayRepresentation = v6->_displayRepresentation;
    v6->_displayRepresentation = v10;

    v12 = v6;
  }

  return v6;
}

+ (id)allApps
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  [WFGreenTeaLogger log:@"Reading installed app list", 0];
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if ([v8 wf_isAvailableInContext:0])
        {
          v10 = [[WFApp alloc] initWithRecord:v8];
          [v2 addObject:v10];
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (id)findAppWithBundleIdentifier:(id)a3 name:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v33 = 0;
    v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:&v33];
    v8 = v33;
    v9 = [v7 bundleIdentifier];

    if (v9)
    {
      v10 = [WFApp alloc];
      v11 = [v7 bundleIdentifier];
      v12 = [v7 localizedName];
      v13 = [(WFApp *)v10 initWithBundleIdentifier:v11 localizedName:v12];

      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  if ([v6 length])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    [WFGreenTeaLogger log:@"Reading installed app list"];
    v7 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v14 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      v27 = v8;
      v28 = v5;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v7);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v18 localizedName];
          if ([v20 isEqualToString:v6])
          {

LABEL_21:
            v23 = [WFApp alloc];
            v24 = [v18 bundleIdentifier];
            v25 = [v18 localizedName];
            v13 = [(WFApp *)v23 initWithBundleIdentifier:v24 localizedName:v25];

            objc_autoreleasePoolPop(v19);
            v8 = v27;
            v5 = v28;
            goto LABEL_22;
          }

          v21 = [v18 localizedShortName];
          v22 = [v21 isEqualToString:v6];

          if (v22)
          {
            goto LABEL_21;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
        v8 = v27;
        v5 = v28;
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v7 = getWFGeneralLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "+[WFApp findAppWithBundleIdentifier:name:]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Could not get app with error: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

@end