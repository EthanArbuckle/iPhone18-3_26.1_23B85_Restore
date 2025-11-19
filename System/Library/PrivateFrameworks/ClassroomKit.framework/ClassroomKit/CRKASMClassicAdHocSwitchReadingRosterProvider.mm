@interface CRKASMClassicAdHocSwitchReadingRosterProvider
+ (id)currentUserProviderObservedKeyPaths;
- (BOOL)isClassicAdHocModeEnabledForUser:(id)a3;
- (BOOL)isPopulated;
- (CRKASMClassicAdHocSwitchReadingRosterProvider)initWithClassKitFacade:(id)a3 rosterProviderGenerator:(id)a4;
- (void)currentUserDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overrideIsPopulatedToYES;
- (void)processAdHocModeEnabled:(BOOL)a3;
- (void)startObservingCurrentUserProvider;
- (void)stopObservingCurrentUserProvider;
@end

@implementation CRKASMClassicAdHocSwitchReadingRosterProvider

- (void)dealloc
{
  [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self stopObservingCurrentUserProvider];
  v3.receiver = self;
  v3.super_class = CRKASMClassicAdHocSwitchReadingRosterProvider;
  [(CRKASMClassicAdHocSwitchReadingRosterProvider *)&v3 dealloc];
}

- (CRKASMClassicAdHocSwitchReadingRosterProvider)initWithClassKitFacade:(id)a3 rosterProviderGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CRKASMSuspendableRosterProvider alloc] initWithGenerator:v7];

  v14.receiver = self;
  v14.super_class = CRKASMClassicAdHocSwitchReadingRosterProvider;
  v9 = [(CRKASMRosterProviderDecoratorBase *)&v14 initWithRosterProvider:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suspendableProvider, v8);
    v11 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:v6];
    currentUserProvider = v10->_currentUserProvider;
    v10->_currentUserProvider = v11;

    [(CRKASMClassicAdHocSwitchReadingRosterProvider *)v10 startObservingCurrentUserProvider];
    [(CRKASMClassicAdHocSwitchReadingRosterProvider *)v10 currentUserDidChange];
  }

  return v10;
}

+ (id)currentUserProviderObservedKeyPaths
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"currentUser";
  v4[1] = @"currentUserFetched";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)startObservingCurrentUserProvider
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [objc_opt_class() currentUserProviderObservedKeyPaths];
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
        v9 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self currentUserProvider];
        [v9 addObserver:self forKeyPath:v8 options:0 context:@"CRKASMClassicAdHocSwitchReadingRosterProviderObservationContext"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)stopObservingCurrentUserProvider
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [objc_opt_class() currentUserProviderObservedKeyPaths];
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
        v9 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self currentUserProvider];
        [v9 removeObserver:self forKeyPath:v8 context:@"CRKASMClassicAdHocSwitchReadingRosterProviderObservationContext"];

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
  if (a6 == @"CRKASMClassicAdHocSwitchReadingRosterProviderObservationContext")
  {

    [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self currentUserDidChange:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKASMClassicAdHocSwitchReadingRosterProvider;
    [(CRKASMClassicAdHocSwitchReadingRosterProvider *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)currentUserDidChange
{
  v3 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self currentUserProvider];
  v4 = [v3 currentUserFetched];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self currentUserProvider];
    v7 = [v6 currentUser];
    v11 = [v5 numberWithBool:{-[CRKASMClassicAdHocSwitchReadingRosterProvider isClassicAdHocModeEnabledForUser:](self, "isClassicAdHocModeEnabledForUser:", v7)}];

    v8 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self previousValueOfAdHocModeEnabled];
    if (v8 | v11)
    {
      v9 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self previousValueOfAdHocModeEnabled];
      v10 = [v9 isEqual:v11];

      if ((v10 & 1) == 0)
      {
        [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self setPreviousValueOfAdHocModeEnabled:v11];
        -[CRKASMClassicAdHocSwitchReadingRosterProvider processAdHocModeEnabled:](self, "processAdHocModeEnabled:", [v11 BOOLValue]);
      }
    }
  }
}

- (BOOL)isClassicAdHocModeEnabledForUser:(id)a3
{
  if ([a3 classroomClassicAdHocModeEnabled])
  {
    return 1;
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"CRKForceClassicAdHocModeInsteadOfASMMode"];

  return v5;
}

- (void)processAdHocModeEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = _CRKLogASM_13();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom classic ad-hoc mode is enabled in ASM. Suspending roster provider.", buf, 2u);
    }

    v7 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self suspendableProvider];
    [v7 suspend];

    [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self overrideIsPopulatedToYES];
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Classroom classic ad-hoc mode is NOT enabled in ASM. Resuming roster provider.", v9, 2u);
    }

    v8 = [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self suspendableProvider];
    [v8 resume];
  }
}

- (void)overrideIsPopulatedToYES
{
  if (![(CRKASMClassicAdHocSwitchReadingRosterProvider *)self overridingIsPopulatedToYES])
  {
    if ([(CRKASMClassicAdHocSwitchReadingRosterProvider *)self isPopulated])
    {

      [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self setOverridingIsPopulatedToYES:1];
    }

    else
    {
      [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self willChangeValueForKey:@"populated"];
      [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self setOverridingIsPopulatedToYES:1];

      [(CRKASMClassicAdHocSwitchReadingRosterProvider *)self didChangeValueForKey:@"populated"];
    }
  }
}

- (BOOL)isPopulated
{
  if ([(CRKASMClassicAdHocSwitchReadingRosterProvider *)self overridingIsPopulatedToYES])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CRKASMClassicAdHocSwitchReadingRosterProvider;
  return [(CRKASMRosterProviderDecoratorBase *)&v4 isPopulated];
}

@end