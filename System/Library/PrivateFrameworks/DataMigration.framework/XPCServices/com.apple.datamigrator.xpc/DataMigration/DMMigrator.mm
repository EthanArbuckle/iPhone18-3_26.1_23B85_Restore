@interface DMMigrator
+ (id)_dispositionDictFromContext:(id)context buildVersion:(id)version lastBuildVersion:(id)buildVersion environment:(id)environment;
+ (id)_userDataDispositionDictionaryWithBuildVersion:(id)version lastBuildVersion:(id)buildVersion;
- (BOOL)_canDisplayStatus_progressLocked;
- (BOOL)_performMigrationWithPreliminaryTasks:(id)tasks pluginsProvider:(id)provider pluginCategories:(unsigned int)categories userCategory:(unsigned int)category buildVersion:(id)version lastBuildVersion:(id)buildVersion;
- (DMMigrator)init;
- (NSDictionary)migrationPluginResults;
- (NSString)migrationPhaseDescription;
- (__MKBAssertion)_unlockKeyBagUseOfForceIsAuthorized;
- (double)_artificialHangTimeIntervalForPlugin:(id)plugin;
- (id)_createProgressWindow;
- (id)_pluginAllowedList;
- (id)_userDataDispositionDictionary;
- (id)orderedPluginIdentifiers;
- (id)previousBuildVersion;
- (unsigned)_pluginCategoriesWithEnvironment:(id)environment lastBuildVersion:(id)version;
- (unsigned)_userCategoryWithEnvironment:(id)environment;
- (unsigned)userDataDisposition;
- (void)_didReceiveHIDEvent:(id)event;
- (void)_logReasonWithContext:(id)context;
- (void)_migrateWithTestMigrationInfrastructureOnly:(BOOL)only buildVersion:(id)version lastBuildVersion:(id)buildVersion;
- (void)_waitForExecutePluginsSignal_engineerCurrentlyDebuggingMigrationPlugins;
- (void)currentProgressInfo:(id)info;
- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)disposition context:(id)context;
- (void)progressHostIsReady;
- (void)reportMigrationFailure;
- (void)testMigrationUIWithProgress:(BOOL)progress forceInvert:(BOOL)invert completion:(id)completion;
@end

@implementation DMMigrator

- (DMMigrator)init
{
  v6.receiver = self;
  v6.super_class = DMMigrator;
  v2 = [(DMMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    progressLock = v2->_progressLock;
    v2->_progressLock = v3;

    v2->_lastStatusButtonPressTime = 0;
  }

  return v2;
}

- (NSString)migrationPhaseDescription
{
  v2 = +[DMMigrationState sharedInstance];
  migrationPhaseDescription = [v2 migrationPhaseDescription];

  return migrationPhaseDescription;
}

- (NSDictionary)migrationPluginResults
{
  v2 = +[DMMigrationState sharedInstance];
  pluginResults = [v2 pluginResults];

  return pluginResults;
}

- (unsigned)_userCategoryWithEnvironment:(id)environment
{
  if ([environment userSessionIsLoginWindow])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unsigned)_pluginCategoriesWithEnvironment:(id)environment lastBuildVersion:(id)version
{
  environmentCopy = environment;
  v6 = ![environmentCopy deviceModeIsSharediPad] || objc_msgSend(environmentCopy, "userSessionIsLoginWindow");
  if (((version == 0) & [environmentCopy deviceModeIsSharediPad]) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  return v7 | v6;
}

- (id)_pluginAllowedList
{
  v2 = objc_alloc_init(DMPluginAllowedList);

  return v2;
}

- (void)currentProgressInfo:(id)info
{
  infoCopy = info;
  [(NSLock *)self->_progressLock lock];
  if (!self->_firstWorkItemStartTimestamp)
  {
    goto LABEL_23;
  }

  [DMTimeManager intervalSinceTimestamp:?];
  v6 = v5;
  estimatedTotalDuration = self->_estimatedTotalDuration;
  if (v5 <= estimatedTotalDuration)
  {
    v10 = 0.04 / estimatedTotalDuration + self->_progressFraction;
  }

  else
  {
    v8 = (estimatedTotalDuration * 3.0);
    if (v6 <= v8)
    {
      v10 = 0.04 / (estimatedTotalDuration + estimatedTotalDuration) + self->_progressFraction;
    }

    else
    {
      progressFractionPriorToAsymptoticDecay = self->_progressFractionPriorToAsymptoticDecay;
      if (progressFractionPriorToAsymptoticDecay == 0.0)
      {
        progressFractionPriorToAsymptoticDecay = self->_progressFraction;
        self->_progressFractionPriorToAsymptoticDecay = progressFractionPriorToAsymptoticDecay;
      }

      v10 = progressFractionPriorToAsymptoticDecay + (1.0 - progressFractionPriorToAsymptoticDecay) * tanh((v6 - v8) / 3600.0 * 2.5);
    }
  }

  v11 = v10;
  self->_progressFraction = v11;
  if ([(DMMigrator *)self _canDisplayStatus_progressLocked])
  {
    if (!self->_statusTimeFormatter)
    {
      v12 = objc_alloc_init(NSDateComponentsFormatter);
      statusTimeFormatter = self->_statusTimeFormatter;
      self->_statusTimeFormatter = v12;

      [(NSDateComponentsFormatter *)self->_statusTimeFormatter setUnitsStyle:1];
      [(NSDateComponentsFormatter *)self->_statusTimeFormatter setAllowedUnits:224];
    }

    v30 = infoCopy;
    v14 = +[DMEnvironment sharedInstance];
    buildVersion = [v14 buildVersion];
    v16 = [(NSDateComponentsFormatter *)self->_statusTimeFormatter stringFromTimeInterval:v6];
    v17 = [NSString stringWithFormat:@"Internal Only %@\nTotal Migration Time: %@", buildVersion, v16];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    selfCopy = self;
    v18 = self->_currentProgressWorkItems;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          name = [v23 name];
          v25 = [NSString stringWithFormat:@"%@\n%@", v17, name];

          +[DMTimeManager intervalSinceTimestamp:](DMTimeManager, "intervalSinceTimestamp:", [v23 startTimestamp]);
          if (v26 <= 1.0)
          {
            v17 = v25;
          }

          else
          {
            v27 = [(NSDateComponentsFormatter *)selfCopy->_statusTimeFormatter stringFromTimeInterval:?];
            v17 = [NSString stringWithFormat:@"%@: %@", v25, v27];
          }
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }

    infoCopy = v30;
    self = selfCopy;
  }

  else
  {
LABEL_23:
    v17 = 0;
  }

  progressFraction = self->_progressFraction;
  v29 = progressFraction;
  if (progressFraction > 0.99)
  {
    self->_progressFraction = 0.99;
    progressFraction = 0.99;
  }

  [(NSLock *)self->_progressLock unlock];
  infoCopy[2](infoCopy, v17, progressFraction);
}

- (BOOL)_canDisplayStatus_progressLocked
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    if (self->_lastStatusButtonPressTime)
    {
      [DMTimeManager intervalSinceTimestamp:?];
      LOBYTE(has_internal_content) = v4 <= 30.0;
    }

    else
    {
      LOBYTE(has_internal_content) = 0;
    }
  }

  return has_internal_content;
}

- (void)_logReasonWithContext:(id)context
{
  v3 = [context objectForKey:@"Reason"];
  if (!v3)
  {
    v4 = _CFCopySystemVersionDictionary();
    v5 = [v4 objectForKey:_kCFSystemVersionBuildVersionKey];
    v6 = [NSString stringWithFormat:@"Migrating for unknown reason with %@", v5];

    v3 = v6;
  }

  v7 = v3;
  _DMLogFunc();
}

- (void)_waitForExecutePluginsSignal_engineerCurrentlyDebuggingMigrationPlugins
{
  if (qword_100030A58 != -1)
  {
    sub_100012C84();
  }

  _DMLogFunc();
  v2 = _executePluginsSemaphore();
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)_performMigrationWithPreliminaryTasks:(id)tasks pluginsProvider:(id)provider pluginCategories:(unsigned int)categories userCategory:(unsigned int)category buildVersion:(id)version lastBuildVersion:(id)buildVersion
{
  tasksCopy = tasks;
  providerCopy = provider;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 1;
  v12 = +[DMMigrationState sharedInstance];
  allPlugins = [providerCopy allPlugins];
  [v12 willRunPlugins:allPlugins];

  v111 = [DMMigrator _userDataDispositionDictionaryWithBuildVersion:versionCopy lastBuildVersion:buildVersionCopy];
  [(DMMigrator *)self _logReasonWithContext:?];
  v97 = [DMPluginParameters backupDeviceUUIDFromDispositionSupersetOfContext:v111];
  v103 = [[DMPluginParameters alloc] initWithDispositionSupersetOfContext:v111 backupDeviceUUID:v97];
  _DMLogFunc();
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  allPluginsInRunOrder = [providerCopy allPluginsInRunOrder];
  v15 = [allPluginsInRunOrder countByEnumeratingWithState:&v146 objects:v163 count:16];
  if (v15)
  {
    v16 = *v147;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v147 != v16)
        {
          objc_enumerationMutation(allPluginsInRunOrder);
        }

        v18 = *(*(&v146 + 1) + 8 * i);
        if ([v18 existsAndShouldRun])
        {
          v89 = v18;
          _DMLogFunc();
        }
      }

      v15 = [allPluginsInRunOrder countByEnumeratingWithState:&v146 objects:v163 count:16];
    }

    while (v15);
  }

  v19 = +[DMEnvironment sharedInstance];
  waitForExecutePluginsSignalMarkerPref = [v19 waitForExecutePluginsSignalMarkerPref];

  if (waitForExecutePluginsSignalMarkerPref)
  {
    [(DMMigrator *)self _waitForExecutePluginsSignal_engineerCurrentlyDebuggingMigrationPlugins];
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v21 = tasksCopy;
  v22 = [v21 countByEnumeratingWithState:&v142 objects:v162 count:16];
  if (v22)
  {
    v23 = *v143;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v143 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v142 + 1) + 8 * j);
        name = [v25 name];
        [v25 estimatedDurationTimeInterval];
        v91 = [NSNumber numberWithDouble:?];
        _DMLogFunc();

        [v25 estimatedDurationTimeInterval];
        *&v27 = v27 + *&dword_100030A60;
        dword_100030A60 = LODWORD(v27);
      }

      v22 = [v21 countByEnumeratingWithState:&v142 objects:v162 count:16];
    }

    while (v22);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  allPluginsInRunOrder2 = [providerCopy allPluginsInRunOrder];
  v29 = [allPluginsInRunOrder2 countByEnumeratingWithState:&v138 objects:v161 count:16];
  if (v29)
  {
    v30 = *v139;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v139 != v30)
        {
          objc_enumerationMutation(allPluginsInRunOrder2);
        }

        v32 = *(*(&v138 + 1) + 8 * k);
        if ([v32 existsAndShouldRun])
        {
          [v32 timeEstimate];
          v92 = v33;
          _DMLogFunc();
          [v32 timeEstimate];
          *&dword_100030A60 = v34 + *&dword_100030A60;
        }
      }

      v29 = [allPluginsInRunOrder2 countByEnumeratingWithState:&v138 objects:v161 count:16];
    }

    while (v29);
  }

  getpid();
  proc_set_cpumon_params();
  v90 = *&dword_100030A60;
  _DMLogFunc();
  [(NSLock *)self->_progressLock lock];
  v35 = *&dword_100030A60;
  LODWORD(self->_estimatedTotalRemainingDuration) = dword_100030A60;
  self->_estimatedTotalDuration = v35;
  self->_firstWorkItemStartTimestamp = 0;
  v36 = objc_alloc_init(NSMutableArray);
  currentProgressWorkItems = self->_currentProgressWorkItems;
  self->_currentProgressWorkItems = v36;

  *&self->_progressFraction = 0;
  [(NSLock *)self->_progressLock unlock];
  v38 = objc_alloc_init(DMWrapperProcessWatchdogCoordinator);
  concurrentPlugins = [providerCopy concurrentPlugins];
  v110 = [concurrentPlugins mutableCopy];

  v40 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INITIATED, 0);
  queue = dispatch_queue_create("com.apple.datamigrator.concurrentPluginQueue", v40);

  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v21;
  v41 = [obj countByEnumeratingWithState:&v130 objects:v160 count:16];
  if (v41)
  {
    v42 = *v131;
    do
    {
      for (m = 0; m != v41; m = m + 1)
      {
        if (*v131 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v130 + 1) + 8 * m);
        v45 = +[DMMigrationState sharedInstance];
        name2 = [v44 name];
        [v45 setMigrationPhaseDescription:name2];

        [(NSLock *)self->_progressLock lock];
        v47 = [DMProgressWorkItem alloc];
        name3 = [v44 name];
        v49 = [(DMProgressWorkItem *)v47 initWithName:name3 startTimestamp:+[DMTimeManager currentTimestamp]];

        [(NSMutableArray *)self->_currentProgressWorkItems addObject:v49];
        if ((v135[3] & 1) == 0)
        {
          self->_firstWorkItemStartTimestamp = [(DMProgressWorkItem *)v49 startTimestamp];
        }

        [(NSLock *)self->_progressLock unlock];
        v50 = +[DMTimeManager currentTimestamp];
        v51 = _DMCoreLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          name4 = [v44 name];
          [v44 estimatedDurationTimeInterval];
          *buf = 138543618;
          v157 = name4;
          v158 = 2048;
          v159 = v53;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Beginning task '%{public}@'; estimate is %g seconds", buf, 0x16u);
        }

        workBlock = [v44 workBlock];

        if (workBlock)
        {
          workBlock2 = [v44 workBlock];
          (workBlock2)[2](workBlock2, v111);
        }

        [DMTimeManager intervalSinceTimestamp:v50];
        v57 = v56;
        v58 = _DMCoreLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          name5 = [v44 name];
          *buf = 138543618;
          v157 = name5;
          v158 = 2048;
          v159 = v57;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "... completed task '%{public}@' (%g s)", buf, 0x16u);
        }

        [(NSLock *)self->_progressLock lock];
        [v44 estimatedDurationTimeInterval];
        *&v60 = self->_estimatedTotalRemainingDuration - v60;
        self->_estimatedTotalRemainingDuration = *&v60;
        [(NSMutableArray *)self->_currentProgressWorkItems removeObject:v49];
        *(v135 + 24) = 1;
        [(NSLock *)self->_progressLock unlock];
        v61 = +[DMMigrationState sharedInstance];
        telemetryIdentifier = [v44 telemetryIdentifier];
        [v61 reportTelemetryForPluginIdentifier:telemetryIdentifier duration:0 incident:1 countOfAttempts:v111 userDataDisposition:category userCategory:v57];
      }

      v41 = [obj countByEnumeratingWithState:&v130 objects:v160 count:16];
    }

    while (v41);
  }

  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10000D834;
  v123[3] = &unk_100024BA0;
  v123[4] = self;
  v127 = &v134;
  v96 = v111;
  v124 = v96;
  v93 = v103;
  v125 = v93;
  v94 = v38;
  v126 = v94;
  v128 = &v150;
  categoryCopy = category;
  v112 = objc_retainBlock(v123);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  serialPluginsInRunOrder = [providerCopy serialPluginsInRunOrder];
  v104 = [serialPluginsInRunOrder countByEnumeratingWithState:&v119 objects:v155 count:16];
  if (v104)
  {
    v102 = *v120;
    do
    {
      for (n = 0; n != v104; n = n + 1)
      {
        if (*v120 != v102)
        {
          objc_enumerationMutation(serialPluginsInRunOrder);
        }

        v63 = *(*(&v119 + 1) + 8 * n);
        (v112[2])(v112, v63);
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v64 = [v110 copy];
        v65 = [v64 countByEnumeratingWithState:&v115 objects:v154 count:16];
        if (v65)
        {
          v66 = *v116;
          do
          {
            for (ii = 0; ii != v65; ii = ii + 1)
            {
              if (*v116 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v68 = *(*(&v115 + 1) + 8 * ii);
              identifierOfDependency = [v68 identifierOfDependency];
              identifier = [v63 identifier];
              v71 = [identifierOfDependency isEqualToString:identifier];

              if (v71)
              {
                _DMLogFunc();
                [v110 removeObject:{v68, v68}];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10000DE20;
                block[3] = &unk_100024880;
                v72 = v112;
                block[4] = v68;
                v114 = v72;
                dispatch_async(queue, block);
              }
            }

            v65 = [v64 countByEnumeratingWithState:&v115 objects:v154 count:16];
          }

          while (v65);
        }
      }

      v104 = [serialPluginsInRunOrder countByEnumeratingWithState:&v119 objects:v155 count:16];
    }

    while (v104);
  }

  _DMLogFunc();
  dispatch_barrier_sync(queue, &stru_100024BC0);
  getpid();
  proc_set_cpumon_defaults();
  v73 = +[DMTimeManager currentTimestamp];
  v74 = +[DMMigrationState sharedInstance];
  [DMTimeManager intervalSinceTimestamp:self->_firstWorkItemStartTimestamp];
  v76 = v75;
  v77 = +[DMEnvironment sharedInstance];
  inAppleStore = [v77 inAppleStore];
  v79 = +[DMEnvironment sharedInstance];
  isFromFactory = [v79 isFromFactory];
  [DMTimeManager intervalFromStart:0 toEnd:self->_migrationStartTimestamp];
  v82 = v81;
  [DMTimeManager intervalFromStart:0 toEnd:self->_firstWorkItemStartTimestamp];
  v84 = v83;
  [DMTimeManager intervalFromStart:0 toEnd:v73];
  [v74 reportTelemetryWithMigrationDuration:v96 userDataDisposition:categories pluginCategories:category userCategory:inAppleStore inAppleStore:isFromFactory isFromFactory:v76 startInterval:v82 firstPluginStartInterval:v84 endInterval:v85];

  v86 = +[DMMigrationState sharedInstance];
  [v86 persistIfNecessary];

  v87 = *(v151 + 24);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(&v150, 8);
  return v87 & 1;
}

- (double)_artificialHangTimeIntervalForPlugin:(id)plugin
{
  pluginCopy = plugin;
  v4 = 0.0;
  if (os_variant_has_internal_content())
  {
    v5 = +[DMEnvironment sharedInstance];
    if ([v5 shouldImposePluginArtificialHang])
    {
      identifier = [pluginCopy identifier];
      v7 = [identifier isEqualToString:@"com.apple.MobileInstallation.SystemAppMigrator"];

      if (v7)
      {
        [pluginCopy setTimeIntervalBeforeWatchdog:0.0];
        [pluginCopy setTimeIntervalBeforeReboot:60.0];
        [pluginCopy timeIntervalBeforeReboot];
        v4 = v8 + 60.0;
      }
    }

    else
    {
    }
  }

  return v4;
}

- (__MKBAssertion)_unlockKeyBagUseOfForceIsAuthorized
{
  v2 = MKBDeviceLockAssertionConsume();
  v10 = v2;
  _DMLogFunc();
  v3 = MKBKeyBagKeyStashLoad();
  v4 = v3;
  if (v3)
  {
    v10 = v3;
  }

  _DMLogFunc();
  v5 = MKBGetDeviceLockState();
  if (v4 && v5 != 3 && v5)
  {
    v6 = [DMMigrationState sharedInstance:v10];
    [v6 setMigrationPhaseDescription:@"Waiting for user unlock"];

    _DMLogFunc();
    v7 = [[BKSAlternateSystemApp alloc] initWithBundleId:@"com.apple.PreBoard"];
    v8 = objc_alloc_init(MigratorAlternateAppDelegate);
    [v7 setDelegate:v8];
    [v7 activate];
    [(MigratorAlternateAppDelegate *)v8 waitUntilPreboardDidFinishUnlock];
    _DMLogFunc();
    v11 = [NSNumber numberWithInt:MKBKeyBagKeyStashLoad()];
    _DMLogFunc();

    [v7 terminate];
    [v7 setDelegate:0];
    _DMLogFunc();
  }

  return v2;
}

+ (id)_dispositionDictFromContext:(id)context buildVersion:(id)version lastBuildVersion:(id)buildVersion environment:(id)environment
{
  contextCopy = context;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  environmentCopy = environment;
  v13 = 0;
  if (versionCopy && buildVersionCopy)
  {
    v13 = [DMEnvironment isBuildVersion:versionCopy equalToBuildVersion:buildVersionCopy]^ 1;
  }

  if (!contextCopy || v13)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    bOOLValue = 0;
  }

  else
  {
    v14 = [contextCopy mutableCopy];
    v15 = [contextCopy objectForKeyedSubscript:@"DidRestoreFromBackup"];
    bOOLValue = [v15 BOOLValue];
  }

  v17 = [NSNumber numberWithBool:v13];
  [v14 setValue:v17 forKey:@"SyntheticDidUpgrade"];

  [v14 setValue:versionCopy forKey:@"buildVersion"];
  if (buildVersionCopy)
  {
    [v14 setValue:buildVersionCopy forKey:@"previousBuildVersion"];
  }

  if (((v13 | bOOLValue) & 1) == 0)
  {
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [environmentCopy isRapidReturnToService]);
    [v14 setValue:v18 forKey:@"EraseIsRapidReturnToService"];
  }

  v19 = [v14 copy];

  return v19;
}

+ (id)_userDataDispositionDictionaryWithBuildVersion:(id)version lastBuildVersion:(id)buildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  if (qword_100030A70 != -1)
  {
    sub_100012C98();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000E514;
  v19 = sub_10000E524;
  v20 = 0;
  if (versionCopy)
  {
    v7 = qword_100030A68;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E52C;
    block[3] = &unk_100024C08;
    v14 = &v15;
    v12 = versionCopy;
    v13 = buildVersionCopy;
    dispatch_sync(v7, block);

    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_userDataDispositionDictionary
{
  v2 = +[DMEnvironment sharedInstance];
  buildVersion = [v2 buildVersion];

  v4 = +[DMEnvironment sharedInstance];
  lastBuildVersionPref = [v4 lastBuildVersionPref];

  v6 = [DMMigrator _userDataDispositionDictionaryWithBuildVersion:buildVersion lastBuildVersion:lastBuildVersionPref];

  return v6;
}

- (unsigned)userDataDisposition
{
  _userDataDispositionDictionary = [(DMMigrator *)self _userDataDispositionDictionary];
  v3 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:_userDataDispositionDictionary];

  return v3;
}

- (id)previousBuildVersion
{
  _userDataDispositionDictionary = [(DMMigrator *)self _userDataDispositionDictionary];
  v3 = [_userDataDispositionDictionary objectForKeyedSubscript:@"previousBuildVersion"];

  return v3;
}

- (void)reportMigrationFailure
{
  v2 = +[DMEnvironment sharedInstance];
  continuousIntegrationMarkerPref = [v2 continuousIntegrationMarkerPref];

  if (continuousIntegrationMarkerPref)
  {
    _DMLogFunc();
  }

  else
  {
    v3 = +[DMMigrationState sharedInstance];
    [v3 setNeedsMigrationFailureReport];
  }
}

- (void)_migrateWithTestMigrationInfrastructureOnly:(BOOL)only buildVersion:(id)version lastBuildVersion:(id)buildVersion
{
  onlyCopy = only;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  v7 = +[DMEnvironment sharedInstance];
  v55 = [(DMMigrator *)self _userCategoryWithEnvironment:v7];

  self->_migrationStartTimestamp = +[DMTimeManager currentTimestamp];
  v8 = +[DMMigrationState sharedInstance];
  [v8 willStartMigration];

  v9 = +[DMMigrationState sharedInstance];
  [v9 setMigrationPhaseDescription:@"Preparing to migrate"];

  _DMLogFunc();
  cf = [(DMMigrator *)self _unlockKeyBagUseOfForceIsAuthorized];
  v10 = objc_alloc_init(DMMigrationDeferredExitManager);
  [v10 migrationDidStart];

  v11 = +[DMEnvironment sharedInstance];
  v62 = [DMRebootAnalyticsUploader createRebootAnalyticsUploaderIfAppropriateWithEnvironment:v11];

  [v62 start];
  v12 = +[DMMigrationState sharedInstance];
  [v12 setMigrationPhaseDescription:@"Gathering plugins"];

  v57 = +[DMPluginFileSystemRep allReps];
  v13 = +[DMEnvironment sharedInstance];
  v14 = [(DMMigrator *)self _pluginCategoriesWithEnvironment:v13 lastBuildVersion:buildVersionCopy];

  v15 = [DMPluginsProvider alloc];
  _pluginAllowedList = [(DMMigrator *)self _pluginAllowedList];
  v56 = [(DMPluginsProvider *)v15 initWithReps:v57 categories:v14 pluginAllowedList:_pluginAllowedList];

  v54 = [v57 count];
  if (v54)
  {
    v17 = +[DMMigrationState sharedInstance];
    [v17 blockUntilProgressHostIsReadyWithTimeoutTimeInterval:60.0];

    location = 0;
    p_location = &location;
    v73 = 0x3032000000;
    v74 = sub_10000E514;
    v75 = sub_10000E524;
    v76 = 0;
    _DMLogFunc();
    v18 = +[DMMigrator mainQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F598;
    block[3] = &unk_100024C58;
    block[4] = self;
    block[5] = &location;
    dispatch_sync(v18, block);

    if (*(p_location + 40))
    {
      v60 = [DMIncident incidentWithKind:5 responsiblePluginRep:0 userDataDisposition:0 details:?];
      v19 = +[DMDiagnostics sharedInstance];
      [v19 captureDiagnosticsForIncident:v60 async:1];

      v20 = +[DMMigrationState sharedInstance];
      [v20 progressWindowHadIncident:v60];
    }

    else
    {
      v60 = 0;
    }

    _Block_object_dispose(&location, 8);
  }

  else
  {
    _DMLogFunc();
    v60 = 0;
  }

  v21 = +[DMMigrator mainQueue];
  v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v21);

  dispatch_source_set_timer(v22, 0, 0x5F5E100uLL, 0x5F5E100uLL);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F698;
  handler[3] = &unk_100024C58;
  handler[4] = self;
  handler[5] = v68;
  dispatch_source_set_event_handler(v22, handler);
  [(NSLock *)self->_progressLock lock];
  self->_firstWorkItemStartTimestamp = 0;
  [(NSLock *)self->_progressLock unlock];
  dispatch_resume(v22);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2050000000;
  v23 = qword_100030A78;
  v80 = qword_100030A78;
  if (!qword_100030A78)
  {
    location = _NSConcreteStackBlock;
    p_location = 3221225472;
    v73 = sub_100010148;
    v74 = &unk_100024790;
    v75 = &v77;
    sub_100010148(&location);
    v23 = v78[3];
  }

  v24 = v23;
  _Block_object_dispose(&v77, 8);
  v25 = [[v23 alloc] initWithType:1];
  v26 = v25;
  if (v25)
  {
    [v25 setMatching:&off_100028D88];
    v27 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v28 = dispatch_queue_create("com.apple.datamigrator.hidEventQueue", v27);
    [v26 setDispatchQueue:v28];

    objc_initWeak(&location, self);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10000F7B4;
    v65[3] = &unk_100024CA8;
    objc_copyWeak(&v66, &location);
    [v26 setEventHandler:v65];
    [v26 activate];
    _DMLogFunc();
    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  else
  {
    _DMLogFunc();
  }

  if (onlyCopy)
  {
    v29 = +[DMEnvironment sharedInstance];
    [v29 setTestMigrationInfrastructureOnly:1];
  }

  v30 = +[DMEnvironment sharedInstance];
  v31 = [DMUserVolumeMigrationTask createTaskIfAppropriateWithEnvironment:v30];

  if (v31)
  {
    v32 = [&__NSArray0__struct arrayByAddingObject:v31];
  }

  else
  {
    v32 = &__NSArray0__struct;
  }

  v33 = +[DMEnvironment sharedInstance];
  v34 = [DMLoggingTask createTaskIfAppropriateWithEnvironment:v33 lastBuildVersion:buildVersionCopy];

  if (v34)
  {
    v35 = [v32 arrayByAddingObject:v34];

    v32 = v35;
  }

  v36 = +[DMEnvironment sharedInstance];
  v37 = [DMLockdownModeTask createTaskIfAppropriateWithEnvironment:v36];

  if (v37)
  {
    v38 = [v32 arrayByAddingObject:v37];

    v32 = v38;
  }

  [(DMMigrator *)self setPreliminaryTasksCacheForUnitTesting:v32];
  v39 = [(DMMigrator *)self _performMigrationWithPreliminaryTasks:v32 pluginsProvider:v56 pluginCategories:v14 userCategory:v55 buildVersion:versionCopy lastBuildVersion:buildVersionCopy];
  if (v60)
  {
    _DMLogFunc();
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  if (onlyCopy)
  {
    v41 = +[DMEnvironment sharedInstance];
    [v41 setTestMigrationInfrastructureOnly:0];
  }

  v42 = +[DMEnvironment sharedInstance];
  [v42 clearContext];

  [v62 waitForCompletionWithTimeoutTimeInterval:60.0];
  if (v26)
  {
    [v26 cancel];
  }

  dispatch_source_cancel(v22);
  if (v54)
  {
    v43 = +[DMMigrator mainQueue];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10000F810;
    v64[3] = &unk_100024768;
    v64[4] = self;
    dispatch_sync(v43, v64);
  }

  v44 = +[DMMigrationState sharedInstance];
  [v44 setMigrationPhaseDescription:@"Notifying clients of completion"];

  v45 = +[DMMigrationState sharedInstance];
  [v45 sendMigrationResultsToClientInvocationsWithSuccess:v40 buildVersion:versionCopy];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.datamigrator.migrationDidFinish", 0, 0, 0);
  v47 = objc_alloc_init(DMMigrationDeferredExitManager);
  [v47 migrationDidEnd];

  _DMLogFunc();
  progressWindow = [(DMMigrator *)self progressWindow];
  [progressWindow setVisible:0];

  [(DMMigrator *)self setProgressWindow:0];
  v49 = +[DMMigrationState sharedInstance];
  [v49 setMigrationPhaseDescription:0];

  if (cf)
  {
    v52 = cf;
    _DMLogFunc();
    CFRelease(cf);
  }

  v50 = +[DMEnvironment sharedInstance];
  deviceModeIsSharediPad = [v50 deviceModeIsSharediPad];

  if ((deviceModeIsSharediPad & 1) == 0)
  {
    v81 = @"LockDeviceNow";
    v82 = kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v53 = [NSNumber numberWithInt:MKBLockDevice()];
    _DMLogFunc();
  }

  _Block_object_dispose(v68, 8);
}

- (id)_createProgressWindow
{
  v2 = [PUIProgressWindow alloc];
  LODWORD(v3) = kPUIDefaultContextLevel;
  v4 = [v2 initWithOptions:5 contextLevel:0 appearance:v3];

  return v4;
}

- (void)_didReceiveHIDEvent:(id)event
{
  eventCopy = event;
  if (IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue())
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue > 232)
    {
      if ((IntegerValue - 233) > 1)
      {
        goto LABEL_10;
      }
    }

    else if (IntegerValue != 48 && IntegerValue != 64 && IntegerValue != 149)
    {
      goto LABEL_10;
    }

    v5 = IntegerValue;
    _DMLogFunc();
    [(NSLock *)self->_progressLock lock];
    self->_lastStatusButtonPressTime = +[DMTimeManager currentTimestamp];
    [(NSLock *)self->_progressLock unlock];
  }

LABEL_10:
}

- (void)progressHostIsReady
{
  v2 = +[DMMigrationState sharedInstance];
  [v2 progressHostIsReady];
}

- (id)orderedPluginIdentifiers
{
  v3 = +[DMPluginFileSystemRep allReps];
  v4 = +[DMEnvironment sharedInstance];
  v5 = +[DMEnvironment sharedInstance];
  lastBuildVersionPref = [v5 lastBuildVersionPref];
  v7 = [(DMMigrator *)self _pluginCategoriesWithEnvironment:v4 lastBuildVersion:lastBuildVersionPref];

  v8 = [DMPluginsProvider alloc];
  _pluginAllowedList = [(DMMigrator *)self _pluginAllowedList];
  v10 = [(DMPluginsProvider *)v8 initWithReps:v3 categories:v7 pluginAllowedList:_pluginAllowedList];

  allPluginsInRunOrder = [(DMPluginsProvider *)v10 allPluginsInRunOrder];
  v12 = [allPluginsInRunOrder indexesOfObjectsPassingTest:&stru_100024CE8];
  v13 = [allPluginsInRunOrder objectsAtIndexes:v12];

  v14 = [v13 valueForKey:@"description"];

  return v14;
}

- (void)testMigrationUIWithProgress:(BOOL)progress forceInvert:(BOOL)invert completion:(id)completion
{
  completionCopy = completion;
  _DMLogFunc();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000E514;
  v27 = sub_10000E524;
  v28 = 0;
  if (objc_opt_class())
  {
    v8 = +[DMMigrator mainQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FE14;
    block[3] = &unk_100024D10;
    block[4] = &v23;
    progressCopy = progress;
    invertCopy = invert;
    dispatch_sync(v8, block);
  }

  v9 = +[DMTimeManager currentTimestamp];
  v10 = 0.0;
  do
  {
    v11 = +[DMMigrator mainQueue];
    dispatch_sync(v11, &stru_100024D30);

    [DMTimeManager intervalSinceTimestamp:v9];
    v13 = v12;
    v14 = v12 / 15.0;
    if (v10 != v14)
    {
      v15 = +[DMMigrator mainQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000FED4;
      v18[3] = &unk_100024D58;
      v18[4] = &v23;
      v19 = v14;
      dispatch_sync(v15, v18);

      v10 = v14;
    }
  }

  while (v13 < 15.0);
  v16 = +[DMMigrator mainQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000FEEC;
  v17[3] = &unk_100024790;
  v17[4] = &v23;
  dispatch_sync(v16, v17);

  [v24[5] setVisible:0];
  completionCopy[2](completionCopy);
  _Block_object_dispose(&v23, 8);
}

- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)disposition context:(id)context
{
  dispositionCopy = disposition;
  contextCopy = context;
  if ((dispositionCopy & 2) != 0)
  {
    _DMLogFunc();
    v6 = +[DMEnvironment sharedInstance];
    [v6 setLastBuildVersionPref:@"1A999"];

    v5 = +[DMEnvironment sharedInstance];
    [v5 setUserDataDispositionPref:0];
  }

  else
  {
    _DMLogFunc();
    v5 = +[DMEnvironment sharedInstance];
    [v5 setLastBuildVersionPref:0];
    if ((dispositionCopy & 4) != 0)
    {

      v7 = +[DMEnvironment sharedInstance];
      [v7 setUserDataDispositionPref:0];

      v5 = +[DMEnvironment sharedInstance];
      [v5 setContext:contextCopy];
    }
  }

  v8 = +[DMEnvironment sharedInstance];
  [v8 setLastMigrationResultsPref:0];

  v9 = +[DMEnvironment sharedInstance];
  [v9 blockUntilPreferencesFlush];
}

@end