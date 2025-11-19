@interface CRKCourseEnrollmentController
+ (CRKCourseEnrollmentController)sharedEnrollmentController;
+ (void)sharedEnrollmentController;
- (BOOL)canBrowseForInvitations;
- (BOOL)instructor:(id)a3 isForCourse:(id)a4;
- (BOOL)isCourseActive:(id)a3;
- (BOOL)isInstructorWithIdentifier:(id)a3 activeForCourse:(id)a4;
- (BOOL)isInstructorWithIdentifier:(id)a3 disconnectableForCourse:(id)a4;
- (BOOL)isInstructorWithIdentifier:(id)a3 observingStudentScreenForCourse:(id)a4;
- (BOOL)isStudentScreenBeingObservedForCourse:(id)a3;
- (BOOL)updateScreenObservingInstructors;
- (CRKCourseEnrollmentController)init;
- (CRKCourseEnrollmentController)initWithStudentDaemonProxy:(id)a3;
- (id)activeCourseIdentifiers;
- (id)activeCourses;
- (id)activeInstructorsWithIdentifier:(id)a3 forCourse:(id)a4;
- (id)anonymousInstructorUsersForCourse:(id)a3;
- (id)courseWithIdentifier:(id)a3;
- (id)coursesBySortingCourses:(id)a3;
- (id)instructorUsersForCourse:(id)a3;
- (id)invitationWithCourseIdentifier:(id)a3;
- (id)observersRespondingToSelector:(SEL)a3;
- (id)syntheticUserForAnonymousInstructor:(id)a3;
- (void)addEnrollmentObserver:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)daemonProxyDidConnect:(id)a3;
- (void)dealloc;
- (void)didUpdateActiveCourses;
- (void)didUpdateCourses;
- (void)didUpdateInvitations;
- (void)didUpdateSettingsUIVisibility;
- (void)disconnectInstructorWithIdentifier:(id)a3 forCourse:(id)a4;
- (void)disconnectOperationDidFinish:(id)a3;
- (void)fetchActiveInstructors;
- (void)fetchActiveInstructorsOperationDidFinish:(id)a3;
- (void)fetchConfiguration;
- (void)fetchConfigurationTypeOperationDidFinish:(id)a3;
- (void)fetchCourseInvitations;
- (void)fetchCourseInvitationsOperationDidFinish:(id)a3;
- (void)fetchCourses;
- (void)fetchCoursesOperationDidFinish:(id)a3;
- (void)fetchStoredCourses;
- (void)invitationWithIdentifierDidFail:(id)a3 withLocalizedReason:(id)a4;
- (void)notifyDaemonOfSettingsPaneActivationOperationDidFail:(id)a3;
- (void)setCourses:(id)a3;
- (void)startBrowsingForInvitations;
- (void)startLongRunningOperations;
- (void)stopBrowsingForInvitations;
- (void)storeCourses;
- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)updateInvitationBrowsingStatus;
- (void)updateSettingsUIVisibility;
- (void)userDidActivateSettingsPane;
@end

@implementation CRKCourseEnrollmentController

+ (CRKCourseEnrollmentController)sharedEnrollmentController
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    +[CRKCourseEnrollmentController sharedEnrollmentController];
  }

  WeakRetained = objc_loadWeakRetained(&sSharedController);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&sSharedController, WeakRetained);
  }

  return WeakRetained;
}

- (CRKCourseEnrollmentController)init
{
  v3 = objc_opt_new();
  v4 = [(CRKCourseEnrollmentController *)self initWithStudentDaemonProxy:v3];

  return v4;
}

- (CRKCourseEnrollmentController)initWithStudentDaemonProxy:(id)a3
{
  v21[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [CRKCourseEnrollmentController initWithStudentDaemonProxy:];
  }

  v20.receiver = self;
  v20.super_class = CRKCourseEnrollmentController;
  v6 = [(CRKCourseEnrollmentController *)&v20 init];
  if (v6)
  {
    v7 = [CRKSecureCodedUserDefaultsObject alloc];
    v8 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v21[4] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
    v10 = [v8 setWithArray:v9];
    v11 = [(CRKSecureCodedUserDefaultsObject *)v7 initWithKey:@"ClassroomSettingsStoreCoursesKey" classes:v10];
    mStoredCourses = v6->mStoredCourses;
    v6->mStoredCourses = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v13;

    objc_storeStrong(&v6->_studentDaemonProxy, a3);
    v15 = objc_opt_new();
    activeInstructors = v6->_activeInstructors;
    v6->_activeInstructors = v15;

    v6->_iCloudAccountStatus = 0;
    [v5 addObserver:v6];
    if ([v5 isConnected])
    {
      [(CRKCourseEnrollmentController *)v6 daemonProxyDidConnect:v5];
    }

    else
    {
      [v5 connect];
    }

    [(CRKCourseEnrollmentController *)v6 fetchStoredCourses];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v6 selector:sel_applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v6 selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  [(CRKCourseEnrollmentController *)self daemonProxyDidDisconnect:v3];

  v4.receiver = self;
  v4.super_class = CRKCourseEnrollmentController;
  [(CRKCourseEnrollmentController *)&v4 dealloc];
}

- (void)addEnrollmentObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourseEnrollmentController *)self observers];
  [v5 addObject:v4];
}

- (id)courseWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(CRKCourseEnrollmentController *)self courses];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 courseIdentifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)invitationWithCourseIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(CRKCourseEnrollmentController *)self courseInvitations];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 courseIdentifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)instructorUsersForCourse:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v5 instructorsByIdentifier];
  v7 = [v6 allValues];
  v8 = [v4 crk_setByCopyingObjectsFromArray:v7];

  v9 = [(CRKCourseEnrollmentController *)self anonymousInstructorUsersForCourse:v5];

  v10 = [v8 setByAddingObjectsFromSet:v9];

  return v10;
}

- (BOOL)isCourseActive:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourseEnrollmentController *)self activeInstructors];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__CRKCourseEnrollmentController_isCourseActive___block_invoke;
  v8[3] = &unk_278DC1CC8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(v4) = [v5 crk_containsObjectMatchingPredicate:v8];

  return v4;
}

- (BOOL)isStudentScreenBeingObservedForCourse:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourseEnrollmentController *)self activeInstructors];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__CRKCourseEnrollmentController_isStudentScreenBeingObservedForCourse___block_invoke;
  v8[3] = &unk_278DC1CC8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  LOBYTE(v4) = [v5 crk_containsObjectMatchingPredicate:v8];

  return v4;
}

uint64_t __71__CRKCourseEnrollmentController_isStudentScreenBeingObservedForCourse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isObservingStudentScreen])
  {
    v4 = [*(a1 + 32) instructor:v3 isForCourse:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isInstructorWithIdentifier:(id)a3 disconnectableForCourse:(id)a4
{
  v4 = [(CRKCourseEnrollmentController *)self activeInstructorsWithIdentifier:a3 forCourse:a4];
  v5 = [v4 crk_containsObjectMatchingPredicate:&__block_literal_global_34];

  return v5;
}

- (BOOL)isInstructorWithIdentifier:(id)a3 activeForCourse:(id)a4
{
  v4 = [(CRKCourseEnrollmentController *)self activeInstructorsWithIdentifier:a3 forCourse:a4];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)isInstructorWithIdentifier:(id)a3 observingStudentScreenForCourse:(id)a4
{
  v4 = [(CRKCourseEnrollmentController *)self activeInstructorsWithIdentifier:a3 forCourse:a4];
  v5 = [v4 crk_containsObjectMatchingPredicate:&__block_literal_global_38];

  return v5;
}

- (void)disconnectInstructorWithIdentifier:(id)a3 forCourse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_opt_new();
  [v11 setInstructorIdentifier:v7];

  v8 = [v6 courseIdentifier];

  [v11 setCourseIdentifier:v8];
  v9 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v10 = [v9 enqueuedOperationForRequest:v11];

  [v10 addTarget:self selector:sel_disconnectOperationDidFinish_ forOperationEvents:6];
}

- (void)disconnectOperationDidFinish:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKCourseEnrollmentController disconnectOperationDidFinish:];
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = _CRKLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CRKCourseEnrollmentController disconnectOperationDidFinish:];
    }
  }
}

- (void)userDidActivateSettingsPane
{
  v3 = _CRKLogGeneral_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "User did activate Settings pane", v7, 2u);
  }

  v4 = objc_opt_new();
  v5 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v6 = [v5 enqueuedOperationForRequest:v4];

  [v6 addTarget:self selector:sel_notifyDaemonOfSettingsPaneActivationOperationDidFail_ forOperationEvents:4];
}

- (void)notifyDaemonOfSettingsPaneActivationOperationDidFail:(id)a3
{
  v3 = a3;
  v4 = _CRKLogGeneral_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CRKCourseEnrollmentController notifyDaemonOfSettingsPaneActivationOperationDidFail:v3];
  }
}

- (void)daemonProxyDidConnect:(id)a3
{
  [(CRKCourseEnrollmentController *)self fetchCourses];
  [(CRKCourseEnrollmentController *)self fetchCourseInvitations];
  [(CRKCourseEnrollmentController *)self fetchActiveInstructors];

  [(CRKCourseEnrollmentController *)self startLongRunningOperations];
}

- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5
{
  v8 = a4;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.studentd.configuration.didchange"];
  v7 = [v8 isEqualToString:v6];

  if (v7)
  {
    [(CRKCourseEnrollmentController *)self fetchConfiguration];
    [(CRKCourseEnrollmentController *)self fetchCourses];
  }

  else if ([v8 isEqualToString:@"CRKActiveInstructorsDidChange"])
  {
    [(CRKCourseEnrollmentController *)self fetchActiveInstructors];
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = _CRKLogSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to studentd because Settings will enter the foreground", v6, 2u);
  }

  v5 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  [v5 connect];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = _CRKLogSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting from studentd because Settings entered the background", v6, 2u);
  }

  v5 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  [v5 disconnect];
}

- (void)startLongRunningOperations
{
  [(CRKCourseEnrollmentController *)self stopLongRunningOperations];

  [(CRKCourseEnrollmentController *)self fetchConfiguration];
}

- (void)updateInvitationBrowsingStatus
{
  if ([(CRKCourseEnrollmentController *)self canBrowseForInvitations])
  {
    if (!self->mBrowseOperation)
    {

      [(CRKCourseEnrollmentController *)self startBrowsingForInvitations];
    }
  }

  else
  {

    [(CRKCourseEnrollmentController *)self stopBrowsingForInvitations];
  }
}

- (BOOL)canBrowseForInvitations
{
  v3 = +[CRKSystemInfo sharedSystemInfo];
  v4 = [v3 isEphemeralMultiUser];

  if (v4)
  {
    return 0;
  }

  v5 = [(CRKCourseEnrollmentController *)self configurationType];
  if (!self->mConfigurationFetched)
  {
    return 0;
  }

  v6 = (v5 >> 1) & 1;
  return ![(CRKCourseEnrollmentController *)self configurationType]|| v6;
}

- (void)startBrowsingForInvitations
{
  [(CRKCourseEnrollmentController *)self stopBrowsingForInvitations];
  v3 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v4 = objc_opt_new();
  v5 = [v3 enqueuedOperationForRequest:v4];
  mBrowseOperation = self->mBrowseOperation;
  self->mBrowseOperation = v5;

  v7 = self->mBrowseOperation;

  [(CATRemoteTaskOperation *)v7 setNotificationDelegate:self];
}

- (void)stopBrowsingForInvitations
{
  [(CATRemoteTaskOperation *)self->mBrowseOperation cancel];
  [(CATRemoteTaskOperation *)self->mBrowseOperation setNotificationDelegate:0];
  mBrowseOperation = self->mBrowseOperation;
  self->mBrowseOperation = 0;
}

- (void)fetchConfiguration
{
  v5 = objc_opt_new();
  v3 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v4 = [v3 enqueuedOperationForRequest:v5];

  [v4 addTarget:self selector:sel_fetchConfigurationTypeOperationDidFinish_ forOperationEvents:6];
}

- (void)fetchConfigurationTypeOperationDidFinish:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKCourseEnrollmentController fetchConfigurationTypeOperationDidFinish:];
  }

  v5 = [v4 error];

  if (v5)
  {
    v6 = _CRKLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CRKCourseEnrollmentController fetchConfigurationTypeOperationDidFinish:v4];
    }
  }

  else
  {
    v7 = [v4 resultObject];
    -[CRKCourseEnrollmentController setConfigurationType:](self, "setConfigurationType:", [v7 configurationType]);
    -[CRKCourseEnrollmentController setSignedInToStudentMAID:](self, "setSignedInToStudentMAID:", [v7 isSignedInToStudentMAID]);
    self->mConfigurationFetched = 1;
    [(CRKCourseEnrollmentController *)self updateInvitationBrowsingStatus];
    [(CRKCourseEnrollmentController *)self updateSettingsUIVisibility];
  }
}

- (void)fetchCourses
{
  v3 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v4 = objc_opt_new();
  v5 = [v3 enqueuedOperationForRequest:v4];

  [v5 addTarget:self selector:sel_fetchCoursesOperationDidFinish_ forOperationEvents:6];
}

- (void)fetchCoursesOperationDidFinish:(id)a3
{
  v8 = [a3 resultObject];
  v4 = [v8 courses];
  v5 = [(CRKCourseEnrollmentController *)self coursesBySortingCourses:v4];
  v6 = [(CRKCourseEnrollmentController *)self activeCourseIdentifiers];
  [(CRKCourseEnrollmentController *)self setCourses:v5];
  v7 = [(CRKCourseEnrollmentController *)self activeCourseIdentifiers];
  [(CRKCourseEnrollmentController *)self didUpdateCourses];
  if (v6 | v7 && ([v6 isEqual:v7] & 1) == 0)
  {
    [(CRKCourseEnrollmentController *)self didUpdateActiveCourses];
  }

  [(CRKCourseEnrollmentController *)self updateSettingsUIVisibility];
}

- (void)setCourses:(id)a3
{
  objc_storeStrong(&self->_courses, a3);

  [(CRKCourseEnrollmentController *)self storeCourses];
}

- (void)fetchStoredCourses
{
  self->_courses = [(CRKSecureCodedUserDefaultsObject *)self->mStoredCourses value];

  MEMORY[0x2821F96F8]();
}

- (void)storeCourses
{
  v4 = [(CRKCourseEnrollmentController *)self courses];
  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [(CRKSecureCodedUserDefaultsObject *)self->mStoredCourses setValue:v3];
}

- (void)fetchCourseInvitations
{
  v3 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v4 = objc_opt_new();
  v5 = [v3 enqueuedOperationForRequest:v4];

  [v5 addTarget:self selector:sel_fetchCourseInvitationsOperationDidFinish_ forOperationEvents:6];
}

- (void)fetchCourseInvitationsOperationDidFinish:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 resultObject];
  v5 = [v4 courseInvitations];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"courseName" ascending:1 selector:sel_localizedStandardCompare_];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v6 sortUsingDescriptors:v8];

  [(CRKCourseEnrollmentController *)self setCourseInvitations:v6];
  v9 = [v4 acceptedInvitationIdentifiers];
  [(CRKCourseEnrollmentController *)self setAcceptedInvitationIdentifiers:v9];

  [(CRKCourseEnrollmentController *)self didUpdateInvitations];
  [(CRKCourseEnrollmentController *)self updateSettingsUIVisibility];
}

- (void)fetchActiveInstructors
{
  v3 = [(CRKCourseEnrollmentController *)self fetchActiveInstructorsOperation];
  [v3 cancel];

  v4 = [(CRKCourseEnrollmentController *)self studentDaemonProxy];
  v5 = objc_opt_new();
  v6 = [v4 enqueuedOperationForRequest:v5];
  [(CRKCourseEnrollmentController *)self setFetchActiveInstructorsOperation:v6];

  v7 = [(CRKCourseEnrollmentController *)self fetchActiveInstructorsOperation];
  [v7 addTarget:self selector:sel_fetchActiveInstructorsOperationDidFinish_ forOperationEvents:6];
}

- (void)fetchActiveInstructorsOperationDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CRKCourseEnrollmentController *)self fetchActiveInstructorsOperation];

  if (v5 == v4)
  {
    [(CRKCourseEnrollmentController *)self setFetchActiveInstructorsOperation:0];
    v6 = [v4 error];
    if (v6)
    {
      v7 = _CRKLogGeneral_2();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CRKCourseEnrollmentController *)v6 fetchActiveInstructorsOperationDidFinish:v7];
      }
    }

    else
    {
      v8 = [v4 resultObject];
      v9 = MEMORY[0x277CBEB98];
      v10 = [v8 instructors];
      v11 = [v9 setWithArray:v10];

      v12 = [(CRKCourseEnrollmentController *)self activeInstructors];
      if (v12 | v11)
      {
        v13 = v12;
        v14 = [(CRKCourseEnrollmentController *)self activeInstructors];
        v15 = [v14 isEqual:v11];

        if ((v15 & 1) == 0)
        {
          [(CRKCourseEnrollmentController *)self willChangeValueForKey:@"activeInstructors"];
          v16 = [(CRKCourseEnrollmentController *)self activeCourseIdentifiers];
          objc_storeStrong(&self->_activeInstructors, v11);
          v17 = [(CRKCourseEnrollmentController *)self activeCourseIdentifiers];
          v18 = [(CRKCourseEnrollmentController *)self updateScreenObservingInstructors];
          [(CRKCourseEnrollmentController *)self didChangeValueForKey:@"activeInstructors"];
          if (v16 != v17)
          {
            v19 = [(CRKCourseEnrollmentController *)self courses];
            v20 = [(CRKCourseEnrollmentController *)self coursesBySortingCourses:v19];
            [(CRKCourseEnrollmentController *)self setCourses:v20];

            [(CRKCourseEnrollmentController *)self didUpdateActiveCourses];
          }

          if (v18)
          {
            [(CRKCourseEnrollmentController *)self didUpdateCourses];
          }
        }
      }
    }
  }
}

- (BOOL)updateScreenObservingInstructors
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = self;
  v4 = [(CRKCourseEnrollmentController *)self activeInstructors];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        if ([v9 isObservingStudentScreen])
        {
          v10 = [v9 sessionIdentifier];
          v11 = [v10 groupIdentifier];
          v12 = [v11 stringValue];

          v13 = [v3 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_opt_new();
            [v3 setObject:v13 forKeyedSubscript:v12];
          }

          v14 = [v9 userIdentifier];
          [v13 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v3 allValues];
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v28 + 1) + 8 * j) sortUsingSelector:sel_compare_];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  v20 = [v3 copy];
  v21 = [(CRKCourseEnrollmentController *)v27 observingInstructorIdentifiersByCourseIdentifiers];
  if (v21 | v20 && (v22 = v21, -[CRKCourseEnrollmentController observingInstructorIdentifiersByCourseIdentifiers](v27, "observingInstructorIdentifiersByCourseIdentifiers"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 isEqual:v20], v23, v22, (v24 & 1) == 0))
  {
    [(CRKCourseEnrollmentController *)v27 setObservingInstructorIdentifiersByCourseIdentifiers:v20];
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)coursesBySortingCourses:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__CRKCourseEnrollmentController_coursesBySortingCourses___block_invoke;
  v5[3] = &unk_278DC1D10;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __57__CRKCourseEnrollmentController_coursesBySortingCourses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) isCourseActive:v5];
  v8 = [*(a1 + 32) isCourseActive:v6];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = -1;
  }

  else if (v7 & 1 | ((v8 & 1) == 0))
  {
    v10 = [v5 courseName];
    v11 = [v6 courseName];
    v12 = [v10 localizedStandardCompare:v11];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)activeCourses
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(CRKCourseEnrollmentController *)self courses];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CRKCourseEnrollmentController_activeCourses__block_invoke;
  v8[3] = &unk_278DC1D38;
  v8[4] = self;
  v5 = [v4 crk_filterUsingBlock:v8];
  v6 = [v3 setWithArray:v5];

  return v6;
}

- (id)activeCourseIdentifiers
{
  v2 = [(CRKCourseEnrollmentController *)self activeCourses];
  v3 = [v2 crk_mapUsingBlock:&__block_literal_global_87];

  return v3;
}

- (id)activeInstructorsWithIdentifier:(id)a3 forCourse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRKCourseEnrollmentController *)self activeInstructors];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__CRKCourseEnrollmentController_activeInstructorsWithIdentifier_forCourse___block_invoke;
  v13[3] = &unk_278DC1D80;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 crk_filterUsingBlock:v13];

  return v11;
}

uint64_t __75__CRKCourseEnrollmentController_activeInstructorsWithIdentifier_forCourse___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  LODWORD(v3) = [v3 instructor:v5 isForCourse:v4];
  v6 = [v5 userIdentifier];

  LODWORD(v2) = [v6 isEqual:*(v2 + 48)];
  return v3 & v2;
}

- (BOOL)instructor:(id)a3 isForCourse:(id)a4
{
  v5 = a4;
  v6 = [a3 sessionIdentifier];
  v7 = [v6 groupIdentifier];
  v8 = [v5 courseIdentifier];

  LOBYTE(v5) = [v7 isEqual:v8];
  return v5;
}

- (id)anonymousInstructorUsersForCourse:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 instructorsByIdentifier];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];

  v9 = [(CRKCourseEnrollmentController *)self activeInstructors];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__CRKCourseEnrollmentController_anonymousInstructorUsersForCourse___block_invoke;
  v14[3] = &unk_278DC1DA8;
  v15 = v4;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v4;
  v12 = [v9 crk_mapUsingBlock:v14];

  return v12;
}

id __67__CRKCourseEnrollmentController_anonymousInstructorUsersForCourse___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = [*(a1 + 32) courseIdentifier];
  if (!v6)
  {
    v2 = [v5 sessionIdentifier];
    v7 = [v2 groupIdentifier];
    if (!v7)
    {

      goto LABEL_10;
    }

    v3 = v7;
  }

  v8 = [*(a1 + 32) courseIdentifier];
  v9 = [v5 sessionIdentifier];
  v10 = [v9 groupIdentifier];
  v11 = [v8 isEqual:v10];

  if (v6)
  {

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_10:
  v12 = *(a1 + 40);
  v13 = [v5 userIdentifier];
  LOBYTE(v12) = [v12 containsObject:v13];

  if (v12)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = [*(a1 + 48) syntheticUserForAnonymousInstructor:v5];
LABEL_13:

  return v14;
}

- (id)syntheticUserForAnonymousInstructor:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 userIdentifier];
  [v4 setUserIdentifier:v5];

  v6 = [v3 displayName];

  [v4 setDisplayName:v6];
  [v4 setRole:2];

  return v4;
}

- (void)updateSettingsUIVisibility
{
  v3 = [(CRKCourseEnrollmentController *)self courses];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRKCourseEnrollmentController *)self courseInvitations];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(CRKCourseEnrollmentController *)self isSignedInToStudentMAID];
    }
  }

  v6 = [(CRKCourseEnrollmentController *)self settingsUIVisible];
  if (!v6 || (v7 = v6, -[CRKCourseEnrollmentController settingsUIVisible](self, "settingsUIVisible"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 BOOLValue], v8, v7, v4 != v9))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [(CRKCourseEnrollmentController *)self setSettingsUIVisible:v10];

    [(CRKCourseEnrollmentController *)self didUpdateSettingsUIVisibility];
  }
}

- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5
{
  v10 = a4;
  v7 = a5;
  if ([v10 isEqualToString:@"CRKCourseInvitationsUpdatedNotification"])
  {
    [(CRKCourseEnrollmentController *)self fetchCourseInvitations];
  }

  else if ([v10 isEqualToString:@"CRKCourseInvitationDidFailNotification"])
  {
    v8 = [v7 objectForKeyedSubscript:@"Course"];
    v9 = [v7 objectForKeyedSubscript:@"Reason"];
    [(CRKCourseEnrollmentController *)self invitationWithIdentifierDidFail:v8 withLocalizedReason:v9];
  }
}

- (id)observersRespondingToSelector:(SEL)a3
{
  v4 = [(CRKCourseEnrollmentController *)self observers];
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CRKCourseEnrollmentController_observersRespondingToSelector___block_invoke;
  v8[3] = &__block_descriptor_40_e57_B16__0__NSObject_CRKCourseEnrollmentControllerObserver__8l;
  v8[4] = a3;
  v6 = [v5 crk_filterUsingBlock:v8];

  return v6;
}

- (void)didUpdateSettingsUIVisibility
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CRKCourseEnrollmentController *)self observersRespondingToSelector:sel_enrollmentControllerDidUpdateSettingsUIVisibility_];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enrollmentControllerDidUpdateSettingsUIVisibility:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)didUpdateCourses
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CRKCourseEnrollmentController *)self observersRespondingToSelector:sel_enrollmentControllerDidUpdateCourses_];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enrollmentControllerDidUpdateCourses:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)didUpdateActiveCourses
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CRKCourseEnrollmentController *)self observersRespondingToSelector:sel_enrollmentControllerDidUpdateActiveCourses_];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enrollmentControllerDidUpdateActiveCourses:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)didUpdateInvitations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CRKCourseEnrollmentController *)self observersRespondingToSelector:sel_enrollmentControllerDidUpdateInvitations_];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enrollmentControllerDidUpdateInvitations:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)invitationWithIdentifierDidFail:(id)a3 withLocalizedReason:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CRKCourseEnrollmentController *)self observersRespondingToSelector:sel_enrollmentController_invitationWithIdentifierDidFail_localizedReason_];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) enrollmentController:self invitationWithIdentifierDidFail:v6 localizedReason:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (void)sharedEnrollmentController
{
  OUTLINED_FUNCTION_1_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  [v3 handleFailureInMethod:v1 object:v0 file:@"CRKCourseEnrollmentController.m" lineNumber:60 description:{@"%@ must be called from the main thread", v2}];
}

- (void)initWithStudentDaemonProxy:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKCourseEnrollmentController.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"daemonProxy"}];
}

- (void)disconnectOperationDidFinish:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKCourseEnrollmentController disconnectOperationDidFinish:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKCourseEnrollmentController.m" lineNumber:201 description:{@"expected %@, got %@", v2, v4}];
}

- (void)disconnectOperationDidFinish:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [v1 instructorIdentifier];
  v3 = [v0 courseIdentifier];
  v9 = [v3 stringValue];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)notifyDaemonOfSettingsPaneActivationOperationDidFail:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 error];
  v7 = [v1 verboseDescription];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchConfigurationTypeOperationDidFinish:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKCourseEnrollmentController.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"fetchConfigurationTypeOperation"}];
}

- (void)fetchConfigurationTypeOperationDidFinish:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 error];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)fetchActiveInstructorsOperationDidFinish:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch active instructors: %{public}@", &v2, 0xCu);
}

@end