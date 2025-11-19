@interface DMMigrator
+ (id)_dispositionDictFromContext:(id)a3 buildVersion:(id)a4 lastBuildVersion:(id)a5 environment:(id)a6;
+ (id)_userDataDispositionDictionaryWithBuildVersion:(id)a3 lastBuildVersion:(id)a4;
- (BOOL)_canDisplayStatus_progressLocked;
- (BOOL)_performMigrationWithPreliminaryTasks:(id)a3 pluginsProvider:(id)a4 pluginCategories:(unsigned int)a5 userCategory:(unsigned int)a6 buildVersion:(id)a7 lastBuildVersion:(id)a8;
- (DMMigrator)init;
- (NSDictionary)migrationPluginResults;
- (NSString)migrationPhaseDescription;
- (__MKBAssertion)_unlockKeyBagUseOfForceIsAuthorized;
- (double)_artificialHangTimeIntervalForPlugin:(id)a3;
- (id)_createProgressWindow;
- (id)_pluginAllowedList;
- (id)_userDataDispositionDictionary;
- (id)orderedPluginIdentifiers;
- (id)previousBuildVersion;
- (unsigned)_pluginCategoriesWithEnvironment:(id)a3 lastBuildVersion:(id)a4;
- (unsigned)_userCategoryWithEnvironment:(id)a3;
- (unsigned)userDataDisposition;
- (void)_didReceiveHIDEvent:(id)a3;
- (void)_logReasonWithContext:(id)a3;
- (void)_migrateWithTestMigrationInfrastructureOnly:(BOOL)a3 buildVersion:(id)a4 lastBuildVersion:(id)a5;
- (void)_waitForExecutePluginsSignal_engineerCurrentlyDebuggingMigrationPlugins;
- (void)currentProgressInfo:(id)a3;
- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)a3 context:(id)a4;
- (void)progressHostIsReady;
- (void)reportMigrationFailure;
- (void)testMigrationUIWithProgress:(BOOL)a3 forceInvert:(BOOL)a4 completion:(id)a5;
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
  v3 = [v2 migrationPhaseDescription];

  return v3;
}

- (NSDictionary)migrationPluginResults
{
  v2 = +[DMMigrationState sharedInstance];
  v3 = [v2 pluginResults];

  return v3;
}

- (unsigned)_userCategoryWithEnvironment:(id)a3
{
  if ([a3 userSessionIsLoginWindow])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unsigned)_pluginCategoriesWithEnvironment:(id)a3 lastBuildVersion:(id)a4
{
  v5 = a3;
  v6 = ![v5 deviceModeIsSharediPad] || objc_msgSend(v5, "userSessionIsLoginWindow");
  if (((a4 == 0) & [v5 deviceModeIsSharediPad]) != 0)
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

- (void)currentProgressInfo:(id)a3
{
  v4 = a3;
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

    v30 = v4;
    v14 = +[DMEnvironment sharedInstance];
    v15 = [v14 buildVersion];
    v16 = [(NSDateComponentsFormatter *)self->_statusTimeFormatter stringFromTimeInterval:v6];
    v17 = [NSString stringWithFormat:@"Internal Only %@\nTotal Migration Time: %@", v15, v16];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = self;
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
          v24 = [v23 name];
          v25 = [NSString stringWithFormat:@"%@\n%@", v17, v24];

          +[DMTimeManager intervalSinceTimestamp:](DMTimeManager, "intervalSinceTimestamp:", [v23 startTimestamp]);
          if (v26 <= 1.0)
          {
            v17 = v25;
          }

          else
          {
            v27 = [(NSDateComponentsFormatter *)v31->_statusTimeFormatter stringFromTimeInterval:?];
            v17 = [NSString stringWithFormat:@"%@: %@", v25, v27];
          }
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }

    v4 = v30;
    self = v31;
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
  v4[2](v4, v17, progressFraction);
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

- (void)_logReasonWithContext:(id)a3
{
  v3 = [a3 objectForKey:@"Reason"];
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

- (BOOL)_performMigrationWithPreliminaryTasks:(id)a3 pluginsProvider:(id)a4 pluginCategories:(unsigned int)a5 userCategory:(unsigned int)a6 buildVersion:(id)a7 lastBuildVersion:(id)a8
{
  v11 = a3;
  v100 = a4;
  v98 = a7;
  v99 = a8;
  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 1;
  v12 = +[DMMigrationState sharedInstance];
  v13 = [v100 allPlugins];
  [v12 willRunPlugins:v13];

  v111 = [DMMigrator _userDataDispositionDictionaryWithBuildVersion:v98 lastBuildVersion:v99];
  [(DMMigrator *)self _logReasonWithContext:?];
  v97 = [DMPluginParameters backupDeviceUUIDFromDispositionSupersetOfContext:v111];
  v103 = [[DMPluginParameters alloc] initWithDispositionSupersetOfContext:v111 backupDeviceUUID:v97];
  _DMLogFunc();
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v14 = [v100 allPluginsInRunOrder];
  v15 = [v14 countByEnumeratingWithState:&v146 objects:v163 count:16];
  if (v15)
  {
    v16 = *v147;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v147 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v146 + 1) + 8 * i);
        if ([v18 existsAndShouldRun])
        {
          v89 = v18;
          _DMLogFunc();
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v146 objects:v163 count:16];
    }

    while (v15);
  }

  v19 = +[DMEnvironment sharedInstance];
  v20 = [v19 waitForExecutePluginsSignalMarkerPref];

  if (v20)
  {
    [(DMMigrator *)self _waitForExecutePluginsSignal_engineerCurrentlyDebuggingMigrationPlugins];
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v21 = v11;
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
        v26 = [v25 name];
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
  v28 = [v100 allPluginsInRunOrder];
  v29 = [v28 countByEnumeratingWithState:&v138 objects:v161 count:16];
  if (v29)
  {
    v30 = *v139;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v139 != v30)
        {
          objc_enumerationMutation(v28);
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

      v29 = [v28 countByEnumeratingWithState:&v138 objects:v161 count:16];
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
  v39 = [v100 concurrentPlugins];
  v110 = [v39 mutableCopy];

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
        v46 = [v44 name];
        [v45 setMigrationPhaseDescription:v46];

        [(NSLock *)self->_progressLock lock];
        v47 = [DMProgressWorkItem alloc];
        v48 = [v44 name];
        v49 = [(DMProgressWorkItem *)v47 initWithName:v48 startTimestamp:+[DMTimeManager currentTimestamp]];

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
          v52 = [v44 name];
          [v44 estimatedDurationTimeInterval];
          *buf = 138543618;
          v157 = v52;
          v158 = 2048;
          v159 = v53;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Beginning task '%{public}@'; estimate is %g seconds", buf, 0x16u);
        }

        v54 = [v44 workBlock];

        if (v54)
        {
          v55 = [v44 workBlock];
          (v55)[2](v55, v111);
        }

        [DMTimeManager intervalSinceTimestamp:v50];
        v57 = v56;
        v58 = _DMCoreLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [v44 name];
          *buf = 138543618;
          v157 = v59;
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
        v62 = [v44 telemetryIdentifier];
        [v61 reportTelemetryForPluginIdentifier:v62 duration:0 incident:1 countOfAttempts:v111 userDataDisposition:a6 userCategory:v57];
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
  v129 = a6;
  v112 = objc_retainBlock(v123);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v101 = [v100 serialPluginsInRunOrder];
  v104 = [v101 countByEnumeratingWithState:&v119 objects:v155 count:16];
  if (v104)
  {
    v102 = *v120;
    do
    {
      for (n = 0; n != v104; n = n + 1)
      {
        if (*v120 != v102)
        {
          objc_enumerationMutation(v101);
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
              v69 = [v68 identifierOfDependency];
              v70 = [v63 identifier];
              v71 = [v69 isEqualToString:v70];

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

      v104 = [v101 countByEnumeratingWithState:&v119 objects:v155 count:16];
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
  v78 = [v77 inAppleStore];
  v79 = +[DMEnvironment sharedInstance];
  v80 = [v79 isFromFactory];
  [DMTimeManager intervalFromStart:0 toEnd:self->_migrationStartTimestamp];
  v82 = v81;
  [DMTimeManager intervalFromStart:0 toEnd:self->_firstWorkItemStartTimestamp];
  v84 = v83;
  [DMTimeManager intervalFromStart:0 toEnd:v73];
  [v74 reportTelemetryWithMigrationDuration:v96 userDataDisposition:a5 pluginCategories:a6 userCategory:v78 inAppleStore:v80 isFromFactory:v76 startInterval:v82 firstPluginStartInterval:v84 endInterval:v85];

  v86 = +[DMMigrationState sharedInstance];
  [v86 persistIfNecessary];

  v87 = *(v151 + 24);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(&v150, 8);
  return v87 & 1;
}

- (double)_artificialHangTimeIntervalForPlugin:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (os_variant_has_internal_content())
  {
    v5 = +[DMEnvironment sharedInstance];
    if ([v5 shouldImposePluginArtificialHang])
    {
      v6 = [v3 identifier];
      v7 = [v6 isEqualToString:@"com.apple.MobileInstallation.SystemAppMigrator"];

      if (v7)
      {
        [v3 setTimeIntervalBeforeWatchdog:0.0];
        [v3 setTimeIntervalBeforeReboot:60.0];
        [v3 timeIntervalBeforeReboot];
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

+ (id)_dispositionDictFromContext:(id)a3 buildVersion:(id)a4 lastBuildVersion:(id)a5 environment:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  if (v10 && v11)
  {
    v13 = [DMEnvironment isBuildVersion:v10 equalToBuildVersion:v11]^ 1;
  }

  if (!v9 || v13)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v16 = 0;
  }

  else
  {
    v14 = [v9 mutableCopy];
    v15 = [v9 objectForKeyedSubscript:@"DidRestoreFromBackup"];
    v16 = [v15 BOOLValue];
  }

  v17 = [NSNumber numberWithBool:v13];
  [v14 setValue:v17 forKey:@"SyntheticDidUpgrade"];

  [v14 setValue:v10 forKey:@"buildVersion"];
  if (v11)
  {
    [v14 setValue:v11 forKey:@"previousBuildVersion"];
  }

  if (((v13 | v16) & 1) == 0)
  {
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isRapidReturnToService]);
    [v14 setValue:v18 forKey:@"EraseIsRapidReturnToService"];
  }

  v19 = [v14 copy];

  return v19;
}

+ (id)_userDataDispositionDictionaryWithBuildVersion:(id)a3 lastBuildVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  if (v5)
  {
    v7 = qword_100030A68;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E52C;
    block[3] = &unk_100024C08;
    v14 = &v15;
    v12 = v5;
    v13 = v6;
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
  v3 = [v2 buildVersion];

  v4 = +[DMEnvironment sharedInstance];
  v5 = [v4 lastBuildVersionPref];

  v6 = [DMMigrator _userDataDispositionDictionaryWithBuildVersion:v3 lastBuildVersion:v5];

  return v6;
}

- (unsigned)userDataDisposition
{
  v2 = [(DMMigrator *)self _userDataDispositionDictionary];
  v3 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:v2];

  return v3;
}

- (id)previousBuildVersion
{
  v2 = [(DMMigrator *)self _userDataDispositionDictionary];
  v3 = [v2 objectForKeyedSubscript:@"previousBuildVersion"];

  return v3;
}

- (void)reportMigrationFailure
{
  v2 = +[DMEnvironment sharedInstance];
  v4 = [v2 continuousIntegrationMarkerPref];

  if (v4)
  {
    _DMLogFunc();
  }

  else
  {
    v3 = +[DMMigrationState sharedInstance];
    [v3 setNeedsMigrationFailureReport];
  }
}

- (void)_migrateWithTestMigrationInfrastructureOnly:(BOOL)a3 buildVersion:(id)a4 lastBuildVersion:(id)a5
{
  v58 = a3;
  v61 = a4;
  v63 = a5;
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
  v14 = [(DMMigrator *)self _pluginCategoriesWithEnvironment:v13 lastBuildVersion:v63];

  v15 = [DMPluginsProvider alloc];
  v16 = [(DMMigrator *)self _pluginAllowedList];
  v56 = [(DMPluginsProvider *)v15 initWithReps:v57 categories:v14 pluginAllowedList:v16];

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

  if (v58)
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
  v34 = [DMLoggingTask createTaskIfAppropriateWithEnvironment:v33 lastBuildVersion:v63];

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
  v39 = [(DMMigrator *)self _performMigrationWithPreliminaryTasks:v32 pluginsProvider:v56 pluginCategories:v14 userCategory:v55 buildVersion:v61 lastBuildVersion:v63];
  if (v60)
  {
    _DMLogFunc();
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  if (v58)
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
  [v45 sendMigrationResultsToClientInvocationsWithSuccess:v40 buildVersion:v61];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.datamigrator.migrationDidFinish", 0, 0, 0);
  v47 = objc_alloc_init(DMMigrationDeferredExitManager);
  [v47 migrationDidEnd];

  _DMLogFunc();
  v48 = [(DMMigrator *)self progressWindow];
  [v48 setVisible:0];

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
  v51 = [v50 deviceModeIsSharediPad];

  if ((v51 & 1) == 0)
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

- (void)_didReceiveHIDEvent:(id)a3
{
  v6 = a3;
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
  v6 = [v5 lastBuildVersionPref];
  v7 = [(DMMigrator *)self _pluginCategoriesWithEnvironment:v4 lastBuildVersion:v6];

  v8 = [DMPluginsProvider alloc];
  v9 = [(DMMigrator *)self _pluginAllowedList];
  v10 = [(DMPluginsProvider *)v8 initWithReps:v3 categories:v7 pluginAllowedList:v9];

  v11 = [(DMPluginsProvider *)v10 allPluginsInRunOrder];
  v12 = [v11 indexesOfObjectsPassingTest:&stru_100024CE8];
  v13 = [v11 objectsAtIndexes:v12];

  v14 = [v13 valueForKey:@"description"];

  return v14;
}

- (void)testMigrationUIWithProgress:(BOOL)a3 forceInvert:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
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
    v21 = a3;
    v22 = a4;
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
  v7[2](v7);
  _Block_object_dispose(&v23, 8);
}

- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)a3 context:(id)a4
{
  v4 = a3;
  v10 = a4;
  if ((v4 & 2) != 0)
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
    if ((v4 & 4) != 0)
    {

      v7 = +[DMEnvironment sharedInstance];
      [v7 setUserDataDispositionPref:0];

      v5 = +[DMEnvironment sharedInstance];
      [v5 setContext:v10];
    }
  }

  v8 = +[DMEnvironment sharedInstance];
  [v8 setLastMigrationResultsPref:0];

  v9 = +[DMEnvironment sharedInstance];
  [v9 blockUntilPreferencesFlush];
}

@end