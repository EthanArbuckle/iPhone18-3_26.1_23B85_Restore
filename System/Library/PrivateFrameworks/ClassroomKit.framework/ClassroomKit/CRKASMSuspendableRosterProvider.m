@interface CRKASMSuspendableRosterProvider
- (BOOL)hasRosterProvider;
- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5;
- (CRKASMSuspendableRosterProvider)initWithGenerator:(id)a3;
- (CRKASMUserFetching)userFetcher;
- (id)instructorDirectoryForLocationIDs:(id)a3;
- (id)observedKeyPaths;
- (id)studentDirectoryForLocationIDs:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)fetchASMUsersWithIdentifiers:(id)a3 completion:(id)a4;
- (void)fetchNextUsersWithCompletion:(id)a3;
- (void)latchDefaultValues;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refresh;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)resume;
- (void)setUnderlyingRosterProvider:(id)a3;
- (void)startObservingUnderlyingProvider;
- (void)stopObservingUnderlyingProvider;
- (void)suspend;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMSuspendableRosterProvider

- (void)dealloc
{
  [(CRKASMSuspendableRosterProvider *)self stopObservingUnderlyingProvider];
  v3.receiver = self;
  v3.super_class = CRKASMSuspendableRosterProvider;
  [(CRKASMSuspendableRosterProvider *)&v3 dealloc];
}

- (CRKASMSuspendableRosterProvider)initWithGenerator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMSuspendableRosterProvider;
  v5 = [(CRKASMSuspendableRosterProvider *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](v4);
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
    v4 = [(CRKASMSuspendableRosterProvider *)self generator];
    v3 = v4[2]();
    [(CRKASMSuspendableRosterProvider *)self setUnderlyingRosterProvider:v3];
  }
}

- (BOOL)hasRosterProvider
{
  v2 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
  v3 = v2 != 0;

  return v3;
}

- (void)latchDefaultValues
{
  v3 = [(CRKASMSuspendableRosterProvider *)self roster];
  if (v3)
  {
    v4 = v3;
    v5 = [(CRKASMSuspendableRosterProvider *)self roster];
    v6 = [v5 isEqual:0];

    if ((v6 & 1) == 0)
    {
      [(CRKASMSuspendableRosterProvider *)self setRoster:0];
    }
  }

  v7 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
  v8 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
  v9 = [v8 isEqual:MEMORY[0x277CBEBF8]];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CBEBF8];

    [(CRKASMSuspendableRosterProvider *)self setLocationsWithManagePermissions:v10];
  }
}

- (void)setUnderlyingRosterProvider:(id)a3
{
  v5 = a3;
  if (self->_underlyingRosterProvider != v5)
  {
    v6 = v5;
    [(CRKASMSuspendableRosterProvider *)self stopObservingUnderlyingProvider];
    objc_storeStrong(&self->_underlyingRosterProvider, a3);
    if (self->_underlyingRosterProvider)
    {
      [(CRKASMSuspendableRosterProvider *)self startObservingUnderlyingProvider];
    }

    else
    {
      [(CRKASMSuspendableRosterProvider *)self latchDefaultValues];
    }

    v5 = v6;
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
  v3 = [(CRKASMSuspendableRosterProvider *)self observedKeyPaths];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        [v9 addObserver:self forKeyPath:v8 options:4 context:@"CRKASMSuspendableRosterProviderObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(CRKASMSuspendableRosterProvider *)self observedKeyPaths];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        [v9 removeObserver:self forKeyPath:v8 context:@"CRKASMSuspendableRosterProviderObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (a6 != @"CRKASMSuspendableRosterProviderObservationContext")
  {
    v28.receiver = self;
    v28.super_class = CRKASMSuspendableRosterProvider;
    [(CRKASMSuspendableRosterProvider *)&v28 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
    goto LABEL_27;
  }

  if ([v10 isEqualToString:@"roster"])
  {
    v12 = [(CRKASMSuspendableRosterProvider *)self roster];
    if (v12)
    {
LABEL_7:
      v14 = [(CRKASMSuspendableRosterProvider *)self roster];
      v15 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      v16 = [v15 roster];
      v17 = [v14 isEqual:v16];

      if (v12)
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

      a6 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      v27 = [a6 roster];
      [(CRKASMSuspendableRosterProvider *)self setRoster:v27];
      goto LABEL_25;
    }

    a6 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v13 = [a6 roster];
    if (v13)
    {
      a4 = v13;
      goto LABEL_7;
    }

LABEL_26:

    goto LABEL_27;
  }

  if ([v11 isEqualToString:@"locationsWithManagePermissions"])
  {
    v18 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
    if (!v18)
    {
      a6 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      v19 = [a6 locationsWithManagePermissions];
      if (!v19)
      {
        goto LABEL_26;
      }

      a4 = v19;
    }

    v20 = [(CRKASMSuspendableRosterProvider *)self locationsWithManagePermissions];
    v21 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v22 = [v21 locationsWithManagePermissions];
    v23 = [v20 isEqual:v22];

    if (v18)
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

    a6 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v27 = [a6 locationsWithManagePermissions];
    [(CRKASMSuspendableRosterProvider *)self setLocationsWithManagePermissions:v27];
LABEL_25:

    goto LABEL_26;
  }

  if ([v11 isEqualToString:@"populated"])
  {
    if (![(CRKASMSuspendableRosterProvider *)self isPopulated])
    {
      v24 = [(CRKASMSuspendableRosterProvider *)self isPopulated];
      v25 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
      v26 = [v25 isPopulated];

      if (v24 != v26)
      {
        a6 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
        -[CRKASMSuspendableRosterProvider setPopulated:](self, "setPopulated:", [a6 isPopulated]);
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
    v3 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v4 = [v3 userFetcher];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (id)studentDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v5 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v6 = [v5 studentDirectoryForLocationIDs:v4];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (id)instructorDirectoryForLocationIDs:(id)a3
{
  v4 = a3;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v5 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v6 = [v5 instructorDirectoryForLocationIDs:v4];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (void)refresh
{
  v2 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
  [v2 refresh];
}

- (BOOL)ingestCertificates:(id)a3 forTrustedUserIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v10 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    v11 = [v10 ingestCertificates:v8 forTrustedUserIdentifier:v9 error:a5];
  }

  else if (a5)
  {
    [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v7 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [v7 createCourseWithProperties:v8 completion:v6];
  }

  else
  {
    v7 = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    v6[2](v6, v7);
  }
}

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v7 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [v7 removeCourseWithIdentifier:v8 completion:v6];
  }

  else
  {
    v7 = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    v6[2](v6, v7);
  }
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CRKASMSuspendableRosterProvider *)self hasRosterProvider])
  {
    v10 = [(CRKASMSuspendableRosterProvider *)self underlyingRosterProvider];
    [v10 updateCourseWithIdentifier:v11 properties:v8 completion:v9];
  }

  else
  {
    v10 = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
    v9[2](v9, v10);
  }
}

- (void)fetchASMUsersWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)fetchNextUsersWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(CRKASMSuspendableRosterProvider *)self noRosterProviderError];
  (*(a3 + 2))(v5, 0, v6);
}

@end