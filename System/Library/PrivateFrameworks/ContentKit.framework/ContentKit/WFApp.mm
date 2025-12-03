@interface WFApp
+ (id)allApps;
+ (id)findAppWithBundleIdentifier:(id)identifier name:(id)name;
- (BOOL)isAvailableInUserFacingContext;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (WFApp)initWithBundleIdentifier:(id)identifier displayRepresentation:(id)representation;
- (WFApp)initWithBundleIdentifier:(id)identifier localizedName:(id)name;
- (WFApp)initWithCoder:(id)coder;
- (WFApp)initWithRecord:(id)record;
- (id)icon;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFApp

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(WFApp *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  localizedName = [(WFApp *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];
}

- (WFApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    self = [(WFApp *)self initWithBundleIdentifier:v5 localizedName:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  bundleIdentifier = [(WFApp *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  bundleIdentifier = [(WFApp *)self bundleIdentifier];
  v6 = equalCopy;
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

  bundleIdentifier2 = [v8 bundleIdentifier];

  v10 = bundleIdentifier;
  v11 = bundleIdentifier2;
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
  bundleIdentifier = [(WFApp *)self bundleIdentifier];
  v4 = [v2 applicationIconImageForBundleIdentifier:bundleIdentifier format:2];

  return v4;
}

- (BOOL)isAvailableInUserFacingContext
{
  bundleIdentifier = [(WFApp *)self bundleIdentifier];

  if (!bundleIdentifier)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier2 = [(WFApp *)self bundleIdentifier];
  v6 = [v4 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:1 error:0];

  LOBYTE(bundleIdentifier2) = [v6 wf_isAvailableInContext:0];
  return bundleIdentifier2;
}

- (NSString)localizedName
{
  title = [(WFAppDisplayRepresentation *)self->_displayRepresentation title];

  if (title)
  {
    title2 = [(WFAppDisplayRepresentation *)self->_displayRepresentation title];
  }

  else
  {
    bundleIdentifier = [(WFApp *)self bundleIdentifier];

    if (bundleIdentifier)
    {
      v6 = objc_alloc(MEMORY[0x277CC1E70]);
      bundleIdentifier2 = [(WFApp *)self bundleIdentifier];
      v8 = [v6 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:1 error:0];

      title2 = [v8 localizedName];
    }

    else
    {
      title2 = 0;
    }
  }

  return title2;
}

- (WFApp)initWithBundleIdentifier:(id)identifier displayRepresentation:(id)representation
{
  identifierCopy = identifier;
  representationCopy = representation;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v10 = [(WFApp *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    objc_storeStrong(&v11->_displayRepresentation, representation);
    v12 = v11;
  }

  return v11;
}

- (WFApp)initWithBundleIdentifier:(id)identifier localizedName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v10 = [(WFApp *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    if (nameCopy)
    {
      v12 = [WFAppDisplayRepresentation withTitle:nameCopy];
      displayRepresentation = v11->_displayRepresentation;
      v11->_displayRepresentation = v12;
    }

    v14 = v11;
  }

  return v11;
}

- (WFApp)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFApp.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v6 = [(WFApp *)self init];
  if (v6)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = bundleIdentifier;

    localizedName = [recordCopy localizedName];
    v10 = [WFAppDisplayRepresentation withTitle:localizedName];
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

+ (id)findAppWithBundleIdentifier:(id)identifier name:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  if (identifierCopy)
  {
    v33 = 0;
    v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v33];
    v8 = v33;
    bundleIdentifier = [v7 bundleIdentifier];

    if (bundleIdentifier)
    {
      v10 = [WFApp alloc];
      bundleIdentifier2 = [v7 bundleIdentifier];
      localizedName = [v7 localizedName];
      v13 = [(WFApp *)v10 initWithBundleIdentifier:bundleIdentifier2 localizedName:localizedName];

      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0;
  }

  if ([nameCopy length])
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
      v28 = identifierCopy;
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
          localizedName2 = [v18 localizedName];
          if ([localizedName2 isEqualToString:nameCopy])
          {

LABEL_21:
            v23 = [WFApp alloc];
            bundleIdentifier3 = [v18 bundleIdentifier];
            localizedName3 = [v18 localizedName];
            v13 = [(WFApp *)v23 initWithBundleIdentifier:bundleIdentifier3 localizedName:localizedName3];

            objc_autoreleasePoolPop(v19);
            v8 = v27;
            identifierCopy = v28;
            goto LABEL_22;
          }

          localizedShortName = [v18 localizedShortName];
          v22 = [localizedShortName isEqualToString:nameCopy];

          if (v22)
          {
            goto LABEL_21;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
        v8 = v27;
        identifierCopy = v28;
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