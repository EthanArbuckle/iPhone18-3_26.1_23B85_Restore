@interface CRKASMSuspendableRosterProvider
- (BOOL)hasRosterProvider;
- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error;
- (CRKASMSuspendableRosterProvider)initWithGenerator:(id)generator;
- (CRKASMUserFetching)userFetcher;
- (id)instructorDirectoryForLocationIDs:(id)ds;
- (id)observedKeyPaths;
- (id)studentDirectoryForLocationIDs:(id)ds;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)fetchASMUsersWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchNextUsersWithCompletion:(id)completion;
- (void)latchDefaultValues;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refresh;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)resume;
- (void)setUnderlyingRosterProvider:(id)provider;
- (void)startObservingUnderlyingProvider;
- (void)stopObservingUnderlyingProvider;
- (void)suspend;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMSuspendableRosterProvider

- (void)dealloc
{
  [(CRKASMSuspendableRosterProvider *)self stopObservingUnderlyingProvider];
  v3.receiver = self;
  v3.super_class = CRKASMSuspendableRosterProvider;
  [(CRKASMSuspendableRosterProvider *)&v3 dealloc];
}

- (CRKASMSuspendableRosterProvider)initWithGenerator:(id)generator
{
  generatorCopy = generator;
  v9.receiver = self;
  v9.super_class = CRKASMSuspendableRosterProvider;
  v5 = [(CRKASMSuspendableRosterProvider *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](generatorCopy);
    generator = v5->_generator;
    v5->_generator = v6;

    [(CRKASMSuspendableRosterProvider *)v5 latchDefaultValues];
  }

  return v5;
}

- (void)suspend
{
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {

    [(CRKASMSuspendableRosterProvider *)self setUnderlyingRosterProvider:0];
  }
}

- (void)resume
{
  if (![(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    generator = [(CRKASMSuspendableRosterProvider *)self generator];
    v3 = generator[2]();
    [(CRKASMSuspendableRosterProvider *)self setUnderlyingRosterProvider:v3];
  }
}

- (BOOL)hasRosterProvider
{
  underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
  v3 = underlyingRosterProvider != 0;

  return v3;
}

- (void)latchDefaultValues
{
  roster = [(CRKASMSuspendableRosterProvider *)self roster];
  if (roster)
  {
    v4 = roster;
    roster2 = [(CRKASMSuspendableRosterProvider *)self roster];
    v6 = [roster2 isEqual:0];

    if ((v6 & 1) == 0)
    {
      [(CRKASMSuspendableRosterProvider *)self setRoster:0];
    }
  }

  locationsWithManagePermissions = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
  locationsWithManagePermissions2 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
  v9 = [locationsWithManagePermissions2 isEqual:MEMORY[0x277CBEBF8]];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CBEBF8];

    [(CRKASMSuspendableRosterProvider *)self setLocationsWithManagePermissions:v10];
  }
}

- (void)setUnderlyingRosterProvider:(id)provider
{
  providerCopy = provider;
  if (self->_underlyingRosterProvider != providerCopy)
  {
    v6 = providerCopy;
    [(CRKASMSuspendableRosterProvider *)self stopObservingUnderlyingProvider];
    objc_storeStrong(&self->_underlyingRosterProvider, provider);
    if (self->_underlyingRosterProvider)
    {
      [(CRKASMSuspendableRosterProvider *)self startObservingUnderlyingProvider];
    }

    else
    {
      [(CRKASMSuspendableRosterProvider *)self latchDefaultValues];
    }

    providerCopy = v6;
  }
}

- (id)observedKeyPaths
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"roster";
  v4[1] = @"locationsWithManagePermissions";
  v4[2] = @"populated";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (void)startObservingUnderlyingProvider
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observedKeyPaths = [(CRKASMSuspendableRosterProvider *)self observedKeyPaths];
  v4 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observedKeyPaths);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        [underlyingRosterProvider addObserver:self forKeyPath:v8 options:4 context:@"CRKASMSuspendableRosterProviderObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)stopObservingUnderlyingProvider
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observedKeyPaths = [(CRKASMSuspendableRosterProvider *)self observedKeyPaths];
  v4 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observedKeyPaths);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        [underlyingRosterProvider removeObserver:self forKeyPath:v8 context:@"CRKASMSuspendableRosterProviderObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (context != @"CRKASMSuspendableRosterProviderObservationContext")
  {
    v28.receiver = self;
    v28.super_class = CRKASMSuspendableRosterProvider;
    [(CRKASMSuspendableRosterProvider *)&v28 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
    goto LABEL_27;
  }

  if ([pathCopy isEqualToString:@"roster"])
  {
    roster = [(CRKASMSuspendableRosterProvider *)self roster];
    if (roster)
    {
LABEL_7:
      roster2 = [(CRKASMSuspendableRosterProvider *)self roster];
      underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      roster3 = [underlyingRosterProvider roster];
      v17 = [roster2 isEqual:roster3];

      if (roster)
      {

        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_27;
        }
      }

      context = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      roster4 = [context roster];
      [(CRKASMSuspendableRosterProvider *)self setRoster:roster4];
      goto LABEL_25;
    }

    context = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    roster5 = [context roster];
    if (roster5)
    {
      object = roster5;
      goto LABEL_7;
    }

LABEL_26:

    goto LABEL_27;
  }

  if ([v11 isEqualToString:@"locationsWithManagePermissions"])
  {
    locationsWithManagePermissions = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
    if (!locationsWithManagePermissions)
    {
      context = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      locationsWithManagePermissions2 = [context locationsWithManagePermissions];
      if (!locationsWithManagePermissions2)
      {
        goto LABEL_26;
      }

      object = locationsWithManagePermissions2;
    }

    locationsWithManagePermissions3 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
    underlyingRosterProvider2 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    locationsWithManagePermissions4 = [underlyingRosterProvider2 locationsWithManagePermissions];
    v23 = [locationsWithManagePermissions3 isEqual:locationsWithManagePermissions4];

    if (locationsWithManagePermissions)
    {

      if (v23)
      {
        goto LABEL_27;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_27;
      }
    }

    context = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    roster4 = [context locationsWithManagePermissions];
    [(CRKASMSuspendableRosterProvider *)self setLocationsWithManagePermissions:roster4];
LABEL_25:

    goto LABEL_26;
  }

  if ([v11 isEqualToString:@"populated"])
  {
    if (![(CRKASMSuspendableRosterProvider *)self isPopulated])
    {
      isPopulated = [(CRKASMSuspendableRosterProvider *)self isPopulated];
      underlyingRosterProvider3 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      isPopulated2 = [underlyingRosterProvider3 isPopulated];

      if (isPopulated != isPopulated2)
      {
        context = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        -[CRKASMSuspendableRosterProvider setPopulated:](self, "setPopulated:", [context isPopulated]);
        goto LABEL_26;
      }
    }
  }

LABEL_27:
}

- (CRKASMUserFetching)userFetcher
{
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    selfCopy = [underlyingRosterProvider userFetcher];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)studentDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    selfCopy = [underlyingRosterProvider studentDirectoryForLocationIDs:dsCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)instructorDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    selfCopy = [underlyingRosterProvider instructorDirectoryForLocationIDs:dsCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)refresh
{
  underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
  [underlyingRosterProvider refresh];
}

- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v11 = [underlyingRosterProvider ingestCertificates:certificatesCopy forTrustedUserIdentifier:identifierCopy error:error];
  }

  else if (error)
  {
    [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [underlyingRosterProvider createCourseWithProperties:propertiesCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [underlyingRosterProvider removeCourseWithIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  completionCopy = completion;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [underlyingRosterProvider updateCourseWithIdentifier:identifierCopy properties:propertiesCopy completion:completionCopy];
  }

  else
  {
    underlyingRosterProvider = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    completionCopy[2](completionCopy, underlyingRosterProvider);
  }
}

- (void)fetchASMUsersWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  noRosterProviderError = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
  (*(completion + 2))(completionCopy, 0, noRosterProviderError);
}

- (void)fetchNextUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  noRosterProviderError = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
  (*(completion + 2))(completionCopy, 0, noRosterProviderError);
}

@end